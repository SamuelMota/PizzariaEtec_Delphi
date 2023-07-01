unit UFrmCadastroPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBaseCadastro, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, UDmDados, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, System.DateUtils,
  UFrmPesquisaCliente, UFrmPesquisaProduto;

type
  TFrmCadastroPedido = class(TFrmBaseCadastro)
    dtsItem: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    BtnCliente: TBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    dtpData: TDateTimePicker;
    dtpHora: TDateTimePicker;
    Label5: TLabel;
    ComboBox1: TComboBox;
    DBText1: TDBText;
    actIncluirProduto: TAction;
    actAlterarProduto: TAction;
    actExcluirProduto: TAction;
    actSalvarProduto: TAction;
    actCancelarProduto: TAction;
    Panel1: TPanel;
    pnlItem: TPanel;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    BtnProduto: TBitBtn;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    pnlBotoes: TPanel;
    btnIncluirPro: TButton;
    btnAlterarPro: TButton;
    btnExcluirPro: TButton;
    btnSalvarPro: TButton;
    btnCancelarPro: TButton;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure dtpDataChange(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure actIncluirProdutoExecute(Sender: TObject);
    procedure actAlterarProdutoExecute(Sender: TObject);
    procedure actExcluirProdutoExecute(Sender: TObject);
    procedure actCancelarProdutoExecute(Sender: TObject);
    procedure actSalvarProdutoExecute(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CadastrarItem(ativar : boolean);
    procedure CalcularTotalVenda();
  end;

var
  FrmCadastroPedido: TFrmCadastroPedido;

implementation

{$R *.dfm}

uses UFrmMensagem;

procedure TFrmCadastroPedido.actAlterarProdutoExecute(Sender: TObject);
begin
  dtsItem.DataSet.Edit;
  CadastrarItem(true);
end;

procedure TFrmCadastroPedido.actCancelarProdutoExecute(Sender: TObject);
begin
  dtsItem.DataSet.Cancel;
  CadastrarItem(false);
end;

procedure TFrmCadastroPedido.actExcluirProdutoExecute(Sender: TObject);
begin
  if FrmMensagem.Mensagem('Confirma a exclusão?',
    'A exclusão do Produto deste Pedido não poderá ser desfeita1',
        msgSimNao) = mrYes then
  begin
    CalcularTotalVenda;
    dtsItem.DataSet.Delete;
  end;
end;

procedure TFrmCadastroPedido.actIncluirProdutoExecute(Sender: TObject);
begin
  dtsItem.DataSet.Append;
  if dts.DataSet.State = dsInsert then
      dtsItem.DataSet.FieldByName('IdPedido').AsInteger := 0
  else
      dtsItem.DataSet.FieldByName('IdPedido').AsInteger :=
          dts.DataSet.FieldByName('IdPedido').AsInteger;
  CadastrarItem(true);
  btnProduto.Click;
end;

procedure TFrmCadastroPedido.actSalvarExecute(Sender: TObject);
var retorno : integer;
begin
  retorno := mrNone;
  if (dtsItem.DataSet.State = dsInsert) then
    retorno := FrmMensagem.Mensagem('Produtos em Inclusão',
      'Existe um Produto sendo incluido no Pedido! Deseja salvar o Produto e o Pedido?',
      msgSimNao)
  else if (dtsItem.DataSet.State = dsEdit) then
    retorno := FrmMensagem.Mensagem('Produto em Alteração?',
      'Existe um Produto sendo alterado no Pedido! Deseja cancelar esta alteração também?',
      msgSimNao);
  if retorno = mrYes then
    actSalvarProduto.Execute
  else if retorno = mrNo then
    Abort;
  if ComboBox1.Text <> '' then
  begin
    with dmDados do
    begin
      QryFormaPagto.Open;
      QryFormaPagto.Locate('Descricao', ComboBox1.Text, []);
      DmDados.QryPedidoIdFormaPagto.Value := QryFormaPagtoIdFormaPagto.Value;
      QryFormaPagto.Close;
    end;
  end;
  inherited;
end;

procedure TFrmCadastroPedido.actSalvarProdutoExecute(Sender: TObject);
var mensagem : string;
    i : integer;
begin
try
    for i := 0 to dtsItem.DataSet.FieldCount-1 do
      if (dtsItem.DataSet.Fields[i].Required and (dtsItem.DataSet.Fields[i].IsNull
      or (trim(dtsItem.DataSet.Fields[i].AsString) = ''))) then
        raise exception.Create('Campo Obrigatório, informe o (a): '
            + dtsItem.DataSet.Fields[i].DisplayLabel);
      dtsItem.DataSet.Post;
      CadastrarItem(false);
      CalcularTotalVenda;
    except
      on e: exception do
      begin
        FrmMensagem.Mensagem('Problemas ao Salvar Produto', e.Message, msgErro);
        abort;
      end;
end;
end;

procedure TFrmCadastroPedido.BtnClienteClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPesquisaCliente, FrmPesquisaCliente);
  FrmPesquisaCliente.Tag := Pedido;
  FrmPesquisaCliente.ShowModal;
end;

procedure TFrmCadastroPedido.BtnProdutoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmPesquisaProduto, FrmPesquisaProduto);
  FrmPesquisaProduto.Tag := Pedido;
  FrmPesquisaProduto.ShowModal;
end;

procedure TFrmCadastroPedido.CadastrarItem(ativar: boolean);
begin
  actIncluirProduto.Enabled := not ativar;
  actAlterarProduto.Enabled := not ativar;
  actExcluirProduto.Enabled := not ativar;
  actSalvarProduto.Enabled := ativar;
  actCancelarProduto.Enabled := ativar;
  DBGrid1.Enabled := not ativar;
  pnlItem.Enabled := ativar;
end;

procedure TFrmCadastroPedido.CalcularTotalVenda;
var total : real;
begin
  total := 0;
  dtsItem.DataSet.First;
  while not dtsItem.DataSet.Eof do
  begin
    total := total + dtsItem.DataSet.FieldByName('ValorTotal').AsFloat;
    dtsItem.DataSet.Next;
  end;
  dts.DataSet.FieldByName('ValorTotal').AsFloat := total;
end;

procedure TFrmCadastroPedido.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (DBEdit1.Text <> '') then
  begin
    with dmDados do
    begin
      QryCliente.Open();
      if not QryCliente.Locate('Celular', DBEdit1.Text, []) then
        FrmMensagem.Mensagem('Cliente não encontrado1,',
          'Confira o Fone informado ou realize o cadastro do novo cliente', msgErro)
      else
      begin
        dts.DataSet.FieldByName('IdCliente').AsInteger := QryClienteIdCliente.AsInteger;
        dts.DataSet.FieldByName('NomeCliente').AsString := QryClienteNomeCliente.AsString;
      end;
      QryCliente.Close;
    end;
  end;
end;

procedure TFrmCadastroPedido.dtpDataChange(Sender: TObject);
var data : string;
begin
  data := DateToStr(dtpData.Date) + ' ' + TimeToStr(dtpHora.Time);
  dts.DataSet.FieldByName('PrevisaoEntrega').AsDateTime := StrToDateTime(data);

end;

procedure TFrmCadastroPedido.FormShow(Sender: TObject);
begin
  inherited;
  if (dts.DataSet.State = dsInsert) then
  begin
    DmDados.QryPedidoDataPedido.AsDateTime := Now;
    DmDados.QryPedidoEntregar.AsBoolean := False;
    DmDados.QryPedidoPrevisaoEntrega.AsDateTime := incMinute (Now, 40);
    CadastrarItem(false);
    actAlterarProduto.Enabled := false;
    actExcluirProduto.Enabled := false;
  end;
  dtpData.DateTime := DmDados.QryPedidoPrevisaoEntrega.AsDateTime;
  dtpHora.DateTime := DmDados.QryPedidoPrevisaoEntrega.AsDateTime;
  ComboBox1.Clear;
  with dmDados do
  begin
    QryFormaPagto.Open;
    QryFormaPagto.First;
    while not QryFormaPagto.Eof do
    begin
      ComboBox1.Items.Add(QryFormaPagtoDescricao.Text);
      QryFormaPagto.Next;
    end;
    QryFormaPagto.Close;
    if dts.DataSet.State = dsEdit then
      ComboBox1.Text := QryPedidodescricao.Text
    else
      ComboBox1.ItemIndex := 0;
  end;
end;

end.

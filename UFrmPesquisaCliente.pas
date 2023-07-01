unit UFrmPesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, UDmDados, UFrmCadastroCliente;

type
  TFrmPesquisaCliente = class(TFrmBasePesquisa)
    edtNome: TEdit;
    edtBairro: TEdit;
    cmbAtivo: TComboBox;
    procedure cmbAtivoChange(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    { Protected declarations }
    procedure AbreCadastro(); override;
    procedure Pesquisar(sql : string); override;
  end;

var
  FrmPesquisaCliente: TFrmPesquisaCliente;

implementation

{$R *.dfm}

{ TFrmPesquisaCliente }

procedure TFrmPesquisaCliente.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroCliente, FrmCadastroCliente);
  FrmCadastroCliente.ShowModal;
end;

procedure TFrmPesquisaCliente.cmbAtivoChange(Sender: TObject);
begin
  Pesquisar('');
end;

procedure TFrmPesquisaCliente.FormDblClick(Sender: TObject);
begin
  if Tag = Pedido then
  begin
    DmDados.QryPedidoIdCliente.AsInteger := dts.DataSet.FieldByName('IdCliente').AsInteger;
    DmDados.QryPedidoNomeCliente.AsString := dts.DataSet.FieldByName('NomeCliente').AsString;
    DmDados.QryPedidoFone.AsString := dts.DataSet.FieldByName('Celular').AsString;
    Close;
  end;
end;

procedure TFrmPesquisaCliente.Pesquisar(sql: string);
begin
  sql := SqlInicial;
  if length(edtNome.Text) >= 3 then
    sql := sql + ' where NomeCliente like ' + quotedStr('%' + edtNome.Text + '%');

  if length(edtBairro.Text) >= 3 then
    if (sql = SqlInicial) then
      sql := sql + ' where Bairro like ' + QuotedStr('%' + edtBairro.Text + '%')
    else
       sql := sql + ' and Bairro like ' + QuotedStr('%' + edtBairro.Text + '%');

  if (cmbAtivo.ItemIndex > 0) then
  begin
    if (sql = SqlInicial) then
      sql := sql + ' where '
    else
      sql := sql + ' and ';

    if cmbAtivo.ItemIndex = 1 then
      sql := sql + ' Ativo = true '
    else
      sql := sql + ' Ativo = false ';
  end;
  inherited;
end;
end.

unit UFrmPesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, UDmDados, UFrmCadastroProduto;

type
  TFrmPesquisaProduto = class(TFrmBasePesquisa)
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    { Protected declarations }
    procedure AbreCadastro(); override;
  end;

var
  FrmPesquisaProduto: TFrmPesquisaProduto;

implementation

{$R *.dfm}

{ TFrmPesquisaProduto }

procedure TFrmPesquisaProduto.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroProduto, FrmCadastroProduto);
  FrmCadastroProduto.ShowModal;
end;

procedure TFrmPesquisaProduto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if Tag = Pedido then
  begin
    dmDados.QryItemPedidoIdProduto.AsInteger := dts.DataSet.FieldByName('IdProduto').AsInteger;
    DmDados.QryItemPedidoNomeitem.AsString := dts.DataSet.FieldByName('NomeTipo').AsString
      + ' ' +  dts.DataSet.FieldByName('NomeProduto').AsString;
    DmDados.QryItemPedidoQtde.AsInteger := 1;
    DmDados.QryItemPedidoPreco.AsFloat := dts.DataSet.FieldByName('Venda').AsFloat;
    Close;
  end;
end;

end.

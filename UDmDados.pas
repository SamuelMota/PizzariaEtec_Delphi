unit UDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList,
  Vcl.Controls;

const
  Pedido = 1;

type
  TdmDados = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    QryLogin: TFDQuery;
    Conexao: TFDConnection;
    QryUsuario: TFDQuery;
    QryTipo: TFDQuery;
    QryCliente: TFDQuery;
    QryFormaPagto: TFDQuery;
    QryProduto: TFDQuery;
    QryPedido: TFDQuery;
    QryItemPedido: TFDQuery;
    QryEntrega: TFDQuery;
    img32: TImageList;
    QryUsuarioIdUsuario: TFDAutoIncField;
    QryUsuarioNomeUsuario: TStringField;
    QryUsuarioSenhaUsuario: TStringField;
    QryTipoIdTipo: TFDAutoIncField;
    QryTipoNomeTipo: TStringField;
    QryClienteIdCliente: TFDAutoIncField;
    QryClienteNomeCliente: TStringField;
    QryClienteEndereco: TStringField;
    QryClienteBairro: TStringField;
    QryClienteCep: TStringField;
    QryClienteTelefone: TStringField;
    QryClienteCelular: TStringField;
    QryClienteAtivo: TBooleanField;
    QryFormaPagtoIdFormaPagto: TFDAutoIncField;
    QryFormaPagtoDescricao: TStringField;
    QryProdutoIdProduto: TFDAutoIncField;
    QryProdutoIdTipo: TLongWordField;
    QryProdutoNomeProduto: TStringField;
    QryProdutoDescricao: TStringField;
    QryProdutoQtde: TLongWordField;
    QryProdutoVenda: TBCDField;
    QryProdutonometipo: TStringField;
    QryPedidoIdPedido: TFDAutoIncField;
    QryPedidoIdFormaPagto: TLongWordField;
    QryPedidoIdCliente: TLongWordField;
    QryPedidoDataPedido: TDateTimeField;
    QryPedidoEntregar: TBooleanField;
    QryPedidoPrevisaoEntrega: TDateTimeField;
    QryPedidonomecliente: TStringField;
    QryPedidodescricao: TStringField;
    QryPedidoValorTotal: TFloatField;
    QryPedidoFone: TStringField;
    QryAux: TFDQuery;
    QryItemPedidoIdItemPedido: TFDAutoIncField;
    QryItemPedidoIdPedido: TLongWordField;
    QryItemPedidoIdProduto: TLongWordField;
    QryItemPedidoQtde: TLongWordField;
    QryItemPedidoObservacao: TStringField;
    QryItemPedidoPreco: TBCDField;
    QryItemPedidonomeitem: TStringField;
    QryItemPedidoValorTotal: TFloatField;
    procedure QryPedidoAfterOpen(DataSet: TDataSet);
    procedure QryPedidoAfterPost(DataSet: TDataSet);
    procedure QryPedidoBeforeCancel(DataSet: TDataSet);
    procedure QryPedidoBeforeDelete(DataSet: TDataSet);
    procedure QryPedidoCalcFields(DataSet: TDataSet);
    procedure QryItemPedidoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.QryItemPedidoCalcFields(DataSet: TDataSet);
begin
  QryItemPedidoValorTotal.AsFloat := QryItemPedidoQtde.AsInteger
                                   * QryItemPedidoPreco.AsFloat;
end;

procedure TdmDados.QryPedidoAfterOpen(DataSet: TDataSet);
begin
    QryItemPedido.Close;
    QryItemPedido.Params[0].Value := QryPedidoIdPedido.AsInteger;
    QryItemPedido.open;
end;

procedure TdmDados.QryPedidoAfterPost(DataSet: TDataSet);
begin
  QryItemPedido.First;
  while not QryItemPedido.Eof do
  begin
    QryItemPedido.Edit;
    QryItemPedidoIdPedido.AsInteger := QryPedidoIdPedido.AsInteger;
    QryItemPedido.Post;
    QryItemPedido.Next;
  end;
  QryItemPedido.ApplyUpdates();
end;

procedure TdmDados.QryPedidoBeforeCancel(DataSet: TDataSet);
begin
  QryItemPedido.CancelUpdates;
end;

procedure TdmDados.QryPedidoBeforeDelete(DataSet: TDataSet);
begin
  QryItemPedido.First;
  while not QryItemPedido.Eof  do
    QryItemPedido.Delete;
  QryItemPedido.ApplyUpdates();
end;

procedure TdmDados.QryPedidoCalcFields(DataSet: TDataSet);
var sql : string;
begin
  QryAux.Close;
  QryAux.SQL.Clear;
  sql := 'select sum(qtde * preco) from itempedido where idpedido = '
      + QryPedidoIdPedido.AsString;
  QryAux.SQL.Add(sql);
  QryAux.open();
  QryPedidoValorTotal.AsFloat := QryAux.Fields[0].AsFloat;
  QryAux.Close;
end;

end.

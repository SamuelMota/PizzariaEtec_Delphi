unit UFrmPesquisaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, UDmDados, UFrmCadastroPedido;

type
  TFrmPesquisaPedidos = class(TFrmBasePesquisa)
    dtsItem: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure AbreCadastro (); override;
  end;

var
  FrmPesquisaPedidos: TFrmPesquisaPedidos;

implementation

{$R *.dfm}

{ TFrmPesquisaPedidos }

procedure TFrmPesquisaPedidos.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroPedido, FrmCadastroPedido);
  FrmCadastroPedido.ShowModal;
end;

end.

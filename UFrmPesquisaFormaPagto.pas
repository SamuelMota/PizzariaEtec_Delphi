unit UFrmPesquisaFormaPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, UDmDados, UFrmCadastroFormaPagto;

type
  TFrmPesquisaFormaPagto = class(TFrmBasePesquisa)
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    { protected declrations }
    procedure AbreCadastro(); override;
  end;

var
  FrmPesquisaFormaPagto: TFrmPesquisaFormaPagto;

implementation

{$R *.dfm}

{ TFrmPesquisaFormaPagto }

procedure TFrmPesquisaFormaPagto.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroFormaPagto, FrmCadastroFormaPagto);
  FrmCadastroFormaPagto.ShowModal;
end;

end.

unit UFrmPesquisaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, UDmDados, UFrmCadastroUsuario;

type
  TFrmPesquisaUsuario = class(TFrmBasePesquisa)
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    { Protected declarations }
    procedure AbreCadastro(); override;
  end;

var
  FrmPesquisaUsuario: TFrmPesquisaUsuario;

implementation

{$R *.dfm}

{ TFrmPesquisaUsuario }

procedure TFrmPesquisaUsuario.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroUsuario, FrmCadastroUsuario);
  FrmCadastroUsuario.ShowModal;
end;

end.

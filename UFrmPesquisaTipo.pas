unit UFrmPesquisaTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBasePesquisa, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, UDmDados, UFrmCadastroTipo;

type
  TFrmPesquisaTipo = class(TFrmBasePesquisa)
    edtNome: TEdit;
    procedure edtNomeChange(Sender: TObject);
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
  FrmPesquisaTipo: TFrmPesquisaTipo;

implementation

{$R *.dfm}

{ TFrmPesquisaTipo }

procedure TFrmPesquisaTipo.AbreCadastro;
begin
  Application.CreateForm(TFrmCadastroTipo, FrmCadastroTipo);
  FrmCadastroTipo.ShowModal;
end;

procedure TFrmPesquisaTipo.edtNomeChange(Sender: TObject);
begin
  Pesquisar('');
end;

procedure TFrmPesquisaTipo.Pesquisar(sql: string);
begin
  sql := SqlInicial;
  if length(edtNome.Text) >= 3 then
    sql := sql + ' where NomeTipo like ' + quotedStr('%' + edtNome.Text + '%');
  inherited;
end;

end.

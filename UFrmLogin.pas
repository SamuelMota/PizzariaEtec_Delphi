unit UFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBase, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TFrmLogin = class(TFrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    EdtNome: TEdit;
    EdtSenha: TEdit;
    BtnEntrar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    logou : boolean;
    nVezes : integer;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UDmDados, UFrmMensagem;

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  with DmDados do
  begin
    QryLogin.Close;
    QryLogin.Params[0].Value := EdtNome.Text;
    QryLogin.Params[1].Value := EdtSenha.Text;
    QryLogin.Open;
    if (QryLogin.IsEmpty) then
    begin
      dec(nVezes);
      FrmMensagem.Mensagem('Acesso Negado!!',
        'Nome de Usuário e/ou Senha Inválidos!!' + #13 +
        'Número de Tentativas Restantes: ' + IntToStr(nVezes), msgErro, 15);
      if (nVezes = 0) then
        btnCancelar.Click;
    end
    else
    begin
      logou := true;
      QryLogin.Close;
      Close;
    end;
  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not logou then
    Application.Terminate;
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btnEntrar.Click;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  logou := false;
  nVezes := 3;
  PnlGeral.Left := (Self.Width - PnlGeral.Width) div 2;
  PnlGeral.Top := (Self.Height - PnlGeral.Height) div 2;
end;

end.

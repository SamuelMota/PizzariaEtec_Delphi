unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBase, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, UfrmMensagem, UDmDados, UFrmPesquisaTipo, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, UFrmPesquisaUsuario,
  UFrmPesquisaFormaPagto, UFrmPesquisaCliente, UFrmPesquisaProduto,
  UFrmPesquisaPedidos;

type
  TFrmPrincipal = class(TFrmBase)
    btnMinimizar: TButton;
    btnFechar: TButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ActionList1: TActionList;
    actConfiguracao: TAction;
    actProdutos: TAction;
    actClientes: TAction;
    actPedidos: TAction;
    actTipos: TAction;
    actUsuarios: TAction;
    actFormaPagto: TAction;
    pnlConfiguracao: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bevel1: TBevel;
    SpeedButton3: TSpeedButton;
    ToolButton8: TToolButton;
    ToolButton6: TToolButton;
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnErroClick(Sender: TObject);
    procedure BtnPergClick(Sender: TObject);
    procedure BtnTempoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMinimizarClick(Sender: TObject);
    procedure actConfiguracaoExecute(Sender: TObject);
    procedure actProdutosExecute(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actPedidosExecute(Sender: TObject);
    procedure actTiposExecute(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure actFormaPagtoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}


procedure TFrmPrincipal.actClientesExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := false;
  Application.CreateForm(TFrmPesquisaCliente, FrmPesquisaCliente);
  FrmPesquisaCliente.ShowModal;
end;

procedure TFrmPrincipal.actConfiguracaoExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := not pnlConfiguracao.Visible;
end;

procedure TFrmPrincipal.actFormaPagtoExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := false;
  Application.CreateForm(TFrmPesquisaFormaPagto, FrmPesquisaFormaPagto);
  FrmPesquisaFormaPagto.ShowModal;
end;

procedure TFrmPrincipal.actPedidosExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := false;
   Application.CreateForm(TFrmPesquisaPedidos, FrmPesquisaPedidos);
  FrmPesquisaPedidos.ShowModal;
end;

procedure TFrmPrincipal.actProdutosExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := false;
  Application.CreateForm(TFrmPesquisaProduto, FrmPesquisaProduto);
  FrmPesquisaProduto.ShowModal;
end;

procedure TFrmPrincipal.actTiposExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := false;
  Application.CreateForm(TFrmPesquisaTipo, FrmPesquisaTipo);
  FrmPesquisaTipo.ShowModal;
end;

procedure TFrmPrincipal.actUsuariosExecute(Sender: TObject);
begin
  pnlConfiguracao.Visible := false;
  Application.CreateForm(TFrmPesquisaUsuario, FrmPesquisaUsuario);
  FrmPesquisaUsuario.ShowModal;
end;

procedure TFrmPrincipal.BtnErroClick(Sender: TObject);
begin
  FrmMensagem.Mensagem('Problemas ao Gravar' , 'Informe todos os dados do produto para completar o cadastro', msgErro);
end;

procedure TFrmPrincipal.BtnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFrmPrincipal.btnMinimizarClick(Sender: TObject);
begin
  Self.WindowState := wsMinimized;
end;

procedure TFrmPrincipal.BtnOkClick(Sender: TObject);
begin
  FrmMensagem.Mensagem('Bem Vindo', 'Caro usuário, em casos de dúvidas você pode consultar nosso suporte técnico!!', msgOk);
end;

procedure TFrmPrincipal.BtnPergClick(Sender: TObject);
begin
  if (FrmMensagem.Mensagem('Gostou da Mensagem?', 'Está mensagem personalizada é um patrocinio Gallex Coders', msgSimNao) = mrYes) then
    FrmMensagem.Mensagem('Uhull', 'Que bom, deu trabalho fazer isso tudo!!', msgOk)
  else
    FrmMensagem.Mensagem('Poxa', 'Tudo bem, vou tentar melhorar para a próxima!', msgErro);
end;

procedure TFrmPrincipal.BtnTempoClick(Sender: TObject);
begin
  FrmMensagem.Mensagem('Cadastro Concluído', 'Esta mensagem é apenas informativa e será fechada automaticamente', msgOk, 10);
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FrmMensagem.Mensagem('Confirma o fechamento do Sistema?', '', msgSimNao, 5) = mrNo then
  abort;

end;

end.

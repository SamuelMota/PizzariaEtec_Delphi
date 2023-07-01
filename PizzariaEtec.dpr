program PizzariaEtec;

uses
  Vcl.Forms,
  UFrmBase in 'UFrmBase.pas' {FrmBase},
  UFrmPrincipal in 'UFrmPrincipal.pas' {FrmPrincipal},
  UFrmAbertura in 'UFrmAbertura.pas' {FrmAbertura},
  UFrmMensagem in 'UFrmMensagem.pas' {FrmMensagem},
  UFrmLogin in 'UFrmLogin.pas' {FrmLogin},
  UDmDados in 'UDmDados.pas' {dmDados: TDataModule},
  UFrmBasePesquisa in 'UFrmBasePesquisa.pas' {FrmBasePesquisa},
  UFrmBaseCadastro in 'UFrmBaseCadastro.pas' {FrmBaseCadastro},
  UFrmPesquisaTipo in 'UFrmPesquisaTipo.pas' {FrmPesquisaTipo},
  UFrmCadastroTipo in 'UFrmCadastroTipo.pas' {FrmCadastroTipo},
  UFrmPesquisaUsuario in 'UFrmPesquisaUsuario.pas' {FrmPesquisaUsuario},
  UFrmCadastroUsuario in 'UFrmCadastroUsuario.pas' {FrmCadastroUsuario},
  UFrmPesquisaFormaPagto in 'UFrmPesquisaFormaPagto.pas' {FrmPesquisaFormaPagto},
  UFrmCadastroFormaPagto in 'UFrmCadastroFormaPagto.pas' {FrmCadastroFormaPagto},
  UFrmPesquisaCliente in 'UFrmPesquisaCliente.pas' {FrmPesquisaCliente},
  UFrmCadastroCliente in 'UFrmCadastroCliente.pas' {FrmCadastroCliente},
  UFrmPesquisaProduto in 'UFrmPesquisaProduto.pas' {FrmPesquisaProduto},
  UFrmCadastroProduto in 'UFrmCadastroProduto.pas' {FrmCadastroProduto},
  UFrmPesquisaPedidos in 'UFrmPesquisaPedidos.pas' {FrmPesquisaPedidos},
  UFrmCadastroPedido in 'UFrmCadastroPedido.pas' {FrmCadastroPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmAbertura, FrmAbertura);
  Application.CreateForm(TFrmMensagem, FrmMensagem);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmPesquisaProduto, FrmPesquisaProduto);
  Application.CreateForm(TFrmCadastroProduto, FrmCadastroProduto);
  Application.CreateForm(TFrmPesquisaPedidos, FrmPesquisaPedidos);
  Application.CreateForm(TFrmCadastroPedido, FrmCadastroPedido);
  FrmAbertura.ShowModal;
  FrmLogin.ShowModal;
  Application.Run;
end.

unit UFrmBasePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBase, Vcl.ExtCtrls, UDmDados,
  UFrmMensagem, System.Actions, Vcl.ActnList, Data.DB, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmBasePesquisa = class(TFrmBase)
    dts: TDataSource;
    ActionList1: TActionList;
    actVoltar: TAction;
    actIncluir: TAction;
    actAlterar: TAction;
    actImprimir: TAction;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnImprimir: TButton;
    btnVoltar: TButton;
    PnlPesquisar: TPanel;
    DBGrid1: TDBGrid;
    procedure actVoltarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    { Protected declarations }
    SqlInicial : string;
    procedure AbreCadastro(); virtual;
    procedure Pesquisar(Sql: string); virtual;
  end;

var
  FrmBasePesquisa: TFrmBasePesquisa;

implementation

{$R *.dfm}

{ TFrmBasePesquisa }

procedure TFrmBasePesquisa.AbreCadastro;
begin
 //A programação deste procedimento será nos formulário filhos
end;

procedure TFrmBasePesquisa.actAlterarExecute(Sender: TObject);
begin
  //Verificação se existe dados para alterações
  if (dts.DataSet.IsEmpty) then
  begin
    FrmMensagem.Mensagem('Problemas ao alterar',
      'Não existem dados para alterar! Selecione um registro ou realize uma pesquisa!',
      msgErro);
    Abort;
  end;
  dts.DataSet.Edit;    //Edit - coloca os dados em exibição
  AbreCadastro();
  dts.DataSet.Refresh;
end;

procedure TFrmBasePesquisa.actImprimirExecute(Sender: TObject);
begin
  //Será implementado futuramente
end;

procedure TFrmBasePesquisa.actIncluirExecute(Sender: TObject);
begin
  dts.DataSet.Append;  //Append - Inclui um novo registro em branco
  AbreCadastro();      //Abrir o formulário cadastro
  dts.DataSet.Refresh; //Atualiza os dados em exibição
end;

procedure TFrmBasePesquisa.actVoltarExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmBasePesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Tag = 0 then
  begin
    dts.DataSet.Close;
    TFDQuery(dts.DataSet).SQL.Clear;
     TFDQuery(dts.DataSet).SQL.Add(SqlInicial);
  end;
end;

procedure TFrmBasePesquisa.FormShow(Sender: TObject);
begin
  SqlInicial := TFDQuery(dts.DataSet).SQL.Text;
  dts.DataSet.Open;
end;

procedure TFrmBasePesquisa.Pesquisar(Sql: string);
begin
  TFDQuery(dts.DataSet).SQL.Clear;
  TFDQuery(dts.DataSet).SQL.Add(sql);
  dts.DataSet.Open;
end;

end.

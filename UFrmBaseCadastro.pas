unit UFrmBaseCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBase, Vcl.ExtCtrls, UDmDados,
  UFrmMensagem, System.Actions, Vcl.ActnList, Data.DB, Vcl.StdCtrls;

type
  TFrmBaseCadastro = class(TFrmBase)
    dts: TDataSource;
    ActionList1: TActionList;
    actSalvar: TAction;
    actCancelar: TAction;
    actExcluir: TAction;
    actVoltar: TAction;
    btnVoltar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    procedure actVoltarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure dtsDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    editou : boolean;
  end;

var
  FrmBaseCadastro: TFrmBaseCadastro;

implementation

{$R *.dfm}

procedure TFrmBaseCadastro.actCancelarExecute(Sender: TObject);
begin
  dts.DataSet.Cancel;
  Close;
end;

procedure TFrmBaseCadastro.actExcluirExecute(Sender: TObject);
begin
  if FrmMensagem.Mensagem('Confirma a exclusão?',
    'A exclusão do registro apresentado não poderá ser desfeita!!', msgSimNao) = mrYes then
  begin
    dts.DataSet.Cancel;
    dts.DataSet.Delete;
    FrmMensagem.Mensagem('Exclusão concluída com sucesso!!', '', msgOk);
    Close;
  end;
end;

procedure TFrmBaseCadastro.actSalvarExecute(Sender: TObject);
var mensagem : string;
    i : integer;
begin
  try
    for i := 0 to dts.DataSet.FieldCount-1 do
      if (dts.DataSet.Fields[i].Required and (dts.DataSet.Fields[i].IsNull
      or (trim(dts.DataSet.Fields[i].AsString) = '')))  then
        raise Exception.Create('Campo Obrigatório, informe o valor do(a): '
             + dts.DataSet.Fields[i].DisplayLabel);

      if (dts.DataSet.State = dsInsert) then
        mensagem := 'Cadastro realizado com sucessso!!'
      else
        mensagem := 'Alterações realizadas com sucesso!!';
      dts.DataSet.Post;
      FrmMensagem.Mensagem(mensagem, '', msgOk);
      Close;
  except
    on e: exception do
      FrmMensagem.Mensagem('Problemas ao Salvar', e.Message, msgErro);
  end;

end;

procedure TFrmBaseCadastro.actVoltarExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmBaseCadastro.dtsDataChange(Sender: TObject; Field: TField);
begin
  editou := true;
end;

procedure TFrmBaseCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
var retorno : integer;
begin
  retorno := 0;
  if (dts.DataSet.State = dsInsert) and editou then
    retorno := FrmMensagem.Mensagem('Sair sem Salvar?',
      'Existem dados em inclusão! Confirma o cancelamento do cadastro e o fechamento do formulário?',
      msgSimNao)
  else if (dts.DataSet.State = dsEdit) and editou then
    retorno := FrmMensagem.Mensagem('Sair sem Salvar?',
      'Existem dados em inclusão! Confirma o cancelamento do cadastro e o fechamento do formulário?',
      msgSimNao);

  if (retorno = mrNo) then
    Abort;

  if (dts.DataSet.State in [dsInsert, dsEdit]) then
    dts.DataSet.Cancel;
end;

procedure TFrmBaseCadastro.FormShow(Sender: TObject);
begin
  editou := False;
  if dts.DataSet.State = dsInsert then
    actExcluir.Enabled := false
  else
    actExcluir.Enabled := true;
end;

end.

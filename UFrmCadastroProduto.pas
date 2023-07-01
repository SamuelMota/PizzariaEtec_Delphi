unit UFrmCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBaseCadastro, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, UDmDados, Vcl.DBCtrls,
  Vcl.Mask;

type
  TFrmCadastroProduto = class(TFrmBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    DBMemo1: TDBMemo;
    procedure FormShow(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProduto: TFrmCadastroProduto;

implementation

{$R *.dfm}

procedure TFrmCadastroProduto.actSalvarExecute(Sender: TObject);
begin
  if ComboBox1.Text <> '' then
  begin
    with dmDados do
    begin
      QryTipo.Open;
      QryTipo.Locate('NomeTipo', ComboBox1.Text, []);
      DmDados.QryProdutoIdTipo.Value := QryTipoIdTipo.Value;
      QryTipo.Close;
    end;
  end;
  inherited;
end;

procedure TFrmCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
  ComboBox1.Clear;
  with dmDados do
  begin
    QryTipo.Open;
    QryTipo.First;
    while not qryTipo.Eof do
    begin
      ComboBox1.Items.Add(QryTipoNomeTipo.Text);
      QryTipo.Next;
    end;
    QryTipo.Close;
    if dts.DataSet.State = dsEdit then
      ComboBox1.Text := QryProdutonometipo.Text;
  end;
end;

end.

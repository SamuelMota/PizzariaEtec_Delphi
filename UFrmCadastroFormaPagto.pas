unit UFrmCadastroFormaPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBaseCadastro, System.Actions,
  Vcl.ActnList, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, UDmDados, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrmCadastroFormaPagto = class(TFrmBaseCadastro)
    Label1: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFormaPagto: TFrmCadastroFormaPagto;

implementation

{$R *.dfm}

end.

unit UFrmAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBase, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TFrmAbertura = class(TFrmBase)
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbertura: TFrmAbertura;

implementation

{$R *.dfm}

procedure TFrmAbertura.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TFrmAbertura.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 5;
   case ProgressBar1.Position of
    5 : Label2.Caption := 'Produtos';
    20 : Label2.Caption := 'Clientes';
    35 : Label2.Caption := 'Pizzas';
    60 : Label2.Caption := 'Porções';
    75 : Label2.Caption := 'Bebidas';
  end;
  if ProgressBar1.Position = 100 then
  begin
    Timer1.Enabled := false;
    Self.Close;
  end;
end;

end.

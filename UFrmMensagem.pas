unit UFrmMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmBase, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type

  TTipo = (msgOk, msgErro, msgSimNao);

  TFrmMensagem = class(TFrmBase)
    LblTipo: TLabel;
    LblTitulo: TLabel;
    LblMensagem: TLabel;
    Bevel1: TBevel;
    LblTempo: TLabel;
    Btn2: TSpeedButton;
    Btn1: TSpeedButton;
    Timer1: TTimer;
    procedure Btn2Click(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    tipoMensagem : TTipo;
    tempo : integer;
  public
    { Public declarations }
    function Mensagem(Titulo: string; Texto: string; Tipo: TTipo): TModalResult; overload;
    function Mensagem(Titulo: string; Texto: string; Tipo: TTipo; Tempo: integer): TModalResult; overload;
  end;

var
  FrmMensagem: TFrmMensagem;

implementation

{$R *.dfm}


{ TFrmMensagem }

function TFrmMensagem.Mensagem(Titulo, Texto: string; Tipo: TTipo): TModalResult;
begin
   TipoMensagem := tipo;
   if (Tipo = msgOk) or (Tipo = msgSimNao) then
    LblTipo.Caption := ':)'
   else
    LblTipo.Caption := ':(';

   LblTitulo.Caption := Titulo;
   LblMensagem.Caption := Texto;

   if (tipo = msgOk) or (Tipo = msgErro) then
   begin
     btn2.Visible := false;
     btn1.caption := 'OK';
   end
   else
   begin
     btn2.Visible := True;
     btn1.Caption := 'Não';
   end;

   Mensagem := Self.ShowModal;
   Timer1.Enabled := false;
   LblTempo.visible := false;
end;

procedure TFrmMensagem.Btn1Click(Sender: TObject);
begin
  if TipoMensagem = msgOk then
    Close
  else
    ModalResult := mrNo;
end;

procedure TFrmMensagem.Btn2Click(Sender: TObject);
begin
  ModalResult := mrYes;
end;

procedure TFrmMensagem.FormShow(Sender: TObject);
begin
  PnlGeral.Left := (Self.Width - PnlGeral.Width) div 2;
  PnlGeral.Top := (Self.Height - PnlGeral.Height) div 2;
end;

function TFrmMensagem.Mensagem(Titulo, Texto: string; Tipo: TTipo; Tempo: integer): TModalResult;
begin
  LblTempo.Caption := 'Está janela será fechada automaticamente em ' + IntToStr(Tempo) + ' segundos';
  self.tempo := tempo;
  Timer1.Enabled := true;
  LblTempo.Visible := true;
  Mensagem := Mensagem(Titulo, Texto, Tipo);
end;

procedure TFrmMensagem.Timer1Timer(Sender: TObject);
begin
  dec(self.tempo);
  LblTempo.Caption := 'Está janela será fechada automaticamente em ' + IntToStr(Tempo);
  if (tempo > 1) then
  LblTempo.Caption := LblTempo.Caption + ' segundos'
  else
    LblTempo.Caption := LblTempo.Caption + ' segundo';

  if (self.tempo = 1) then
  begin
    Timer1.Enabled := false;
    btn1.Click;
  end;
end;

end.

inherited FrmLogin: TFrmLogin
  AlphaBlend = True
  AlphaBlendValue = 245
  Caption = 'Mensagens'
  ClientHeight = 413
  ClientWidth = 500
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  ExplicitWidth = 500
  ExplicitHeight = 413
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 500
    Height = 403
    Align = alClient
    ExplicitWidth = 500
    ExplicitHeight = 403
  end
  inherited PnlRodape: TPanel
    Top = 403
    Width = 500
    Visible = False
    ExplicitTop = 403
    ExplicitWidth = 500
  end
  inherited PnlGeral: TPanel
    Left = 8
    Top = 15
    Width = 480
    Height = 390
    Align = alNone
    Anchors = []
    Color = clBlack
    Font.Color = clWhite
    ParentFont = False
    ExplicitLeft = 8
    ExplicitTop = 15
    ExplicitWidth = 480
    ExplicitHeight = 390
    object Label1: TLabel
      Left = 32
      Top = -2
      Width = 33
      Height = 86
      Caption = ':)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -64
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 90
      Width = 67
      Height = 37
      Caption = 'Login'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 146
      Width = 151
      Height = 25
      Caption = 'Nome de Usu'#225'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 204
      Width = 145
      Height = 25
      Caption = 'Senha de Acesso:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 32
      Top = 133
      Width = 417
      Height = 7
      Shape = bsTopLine
    end
    object BtnEntrar: TSpeedButton
      Left = 32
      Top = 296
      Width = 180
      Height = 22
      Caption = 'Entrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnEntrarClick
    end
    object BtnCancelar: TSpeedButton
      Left = 269
      Top = 296
      Width = 180
      Height = 22
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnCancelarClick
    end
    object EdtNome: TEdit
      Left = 200
      Top = 146
      Width = 249
      Height = 33
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtSenha: TEdit
      Left = 200
      Top = 201
      Width = 249
      Height = 33
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end

inherited FrmMensagem: TFrmMensagem
  AlphaBlend = True
  AlphaBlendValue = 245
  Caption = 'Mensagens'
  ClientHeight = 365
  ClientWidth = 865
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 865
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 865
    Height = 355
    Align = alClient
    ExplicitWidth = 865
    ExplicitHeight = 355
  end
  inherited PnlRodape: TPanel
    Top = 355
    Width = 865
    Visible = False
    ExplicitTop = 355
    ExplicitWidth = 865
  end
  inherited PnlGeral: TPanel
    Left = 19
    Top = 6
    Width = 838
    Height = 343
    Align = alNone
    Anchors = []
    Color = clBlack
    Font.Color = clWhite
    ParentFont = False
    ExplicitLeft = 19
    ExplicitTop = 6
    ExplicitWidth = 838
    ExplicitHeight = 343
    object LblTipo: TLabel
      Left = 40
      Top = 0
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
    object LblTitulo: TLabel
      Left = 40
      Top = 99
      Width = 770
      Height = 41
      AutoSize = False
      Caption = 'T'#237'tulo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LblMensagem: TLabel
      Left = 40
      Top = 146
      Width = 744
      Height = 90
      AutoSize = False
      Caption = 
        'Mensagem Mensagem Mensagem Mensagem Mensagem ensagem Mensagem en' +
        'sagem Mensagem ensagem Mensagem ensagem Mensagem ensagem Mensage' +
        'm ensagem M'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Bevel1: TBevel
      Left = 40
      Top = 140
      Width = 745
      Height = 7
      Shape = bsTopLine
    end
    object LblTempo: TLabel
      Left = 40
      Top = 280
      Width = 340
      Height = 17
      AutoSize = False
      Caption = 'Est'#225' janela ser'#225' fechada automaticamente em X segundos'
      Visible = False
    end
    object Btn2: TSpeedButton
      Left = 539
      Top = 272
      Width = 120
      Height = 33
      Caption = 'Sim'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Btn2Click
    end
    object Btn1: TSpeedButton
      Left = 665
      Top = 272
      Width = 120
      Height = 33
      Caption = 'Ok'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Btn1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 507
    Top = 70
  end
end

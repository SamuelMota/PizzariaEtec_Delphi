inherited FrmAbertura: TFrmAbertura
  Caption = 'Pizzaria Etec'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Alignment = taCenter
    Caption = 'Pizzaria Etec'
    Font.Style = [fsBold]
  end
  inherited PnlRodape: TPanel
    ExplicitTop = 319
  end
  inherited PnlGeral: TPanel
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 469
    ExplicitHeight = 249
    object Label1: TLabel
      Left = 93
      Top = 84
      Width = 108
      Height = 30
      Caption = 'Carregando'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 84
      Width = 15
      Height = 30
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 93
      Top = 120
      Width = 302
      Height = 17
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer1Timer
    Left = 272
    Top = 102
  end
end

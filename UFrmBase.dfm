object FrmBase: TFrmBase
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Formul'#225'rio Base'
  ClientHeight = 329
  ClientWidth = 469
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 17
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 70
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object PnlRodape: TPanel
    Left = 0
    Top = 319
    Width = 469
    Height = 10
    Align = alBottom
    BevelOuter = bvNone
    Color = clMaroon
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 288
  end
  object PnlGeral: TPanel
    Left = 0
    Top = 70
    Width = 469
    Height = 249
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 232
    ExplicitTop = 176
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
end

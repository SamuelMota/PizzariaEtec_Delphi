inherited FrmCadastroFormaPagto: TFrmCadastroFormaPagto
  Caption = 'FrmCadastroFormaPagto'
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Formas de Pagto'
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
      Left = 31
      Top = 56
      Width = 57
      Height = 17
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 31
      Top = 79
      Width = 423
      Height = 25
      DataField = 'Descricao'
      DataSource = dts
      TabOrder = 0
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryFormaPagto
    Left = 376
    Top = 182
  end
end

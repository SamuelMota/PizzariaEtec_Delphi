inherited FrmCadastroTipo: TFrmCadastroTipo
  Caption = 'FrmCadastroTipo'
  ClientHeight = 360
  Position = poMainFormCenter
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Tipos de Produto'
  end
  inherited PnlRodape: TPanel
    Top = 350
    ExplicitTop = 319
  end
  inherited PnlGeral: TPanel
    Height = 280
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 469
    ExplicitHeight = 249
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 36
      Height = 17
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 79
      Width = 425
      Height = 25
      DataField = 'NomeTipo'
      DataSource = dts
      TabOrder = 0
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryTipo
  end
end

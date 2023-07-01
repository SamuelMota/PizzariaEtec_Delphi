inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'FrmCadastroUsuario'
  ClientHeight = 376
  ClientWidth = 479
  ExplicitWidth = 479
  ExplicitHeight = 376
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 479
    Caption = '        Usu'#225'rios'
    inherited btnVoltar: TButton
      Left = 10
    end
    inherited btnSalvar: TButton
      Left = 314
    end
    inherited btnCancelar: TButton
      Left = 366
    end
    inherited btnExcluir: TButton
      Left = 418
    end
  end
  inherited PnlRodape: TPanel
    Top = 366
    Width = 479
    ExplicitTop = 319
  end
  inherited PnlGeral: TPanel
    Width = 479
    Height = 296
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 469
    ExplicitHeight = 249
    object Label1: TLabel
      Left = 16
      Top = 48
      Width = 36
      Height = 17
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 120
      Width = 35
      Height = 17
      Caption = 'Senha'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 71
      Width = 448
      Height = 25
      DataField = 'NomeUsuario'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 143
      Width = 448
      Height = 25
      DataField = 'SenhaUsuario'
      DataSource = dts
      TabOrder = 1
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryUsuario
    Left = 296
    Top = 94
  end
  inherited ActionList1: TActionList
    Left = 232
    Top = 94
  end
end

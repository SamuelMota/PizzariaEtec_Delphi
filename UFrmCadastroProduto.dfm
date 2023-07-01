inherited FrmCadastroProduto: TFrmCadastroProduto
  Caption = 'FrmCadastroProduto'
  ClientHeight = 330
  ClientWidth = 580
  ExplicitWidth = 580
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 580
    Caption = '        Produto'
    inherited btnVoltar: TButton
      Left = 8
      ExplicitLeft = 8
    end
    inherited btnSalvar: TButton
      Left = 415
    end
    inherited btnCancelar: TButton
      Left = 467
    end
    inherited btnExcluir: TButton
      Left = 519
    end
  end
  inherited PnlRodape: TPanel
    Top = 320
    Width = 580
    ExplicitTop = 319
  end
  inherited PnlGeral: TPanel
    Width = 580
    Height = 250
    ExplicitLeft = 0
    ExplicitTop = 72
    ExplicitWidth = 580
    ExplicitHeight = 250
    object Label1: TLabel
      Left = 232
      Top = 17
      Width = 36
      Height = 17
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 40
      Top = 79
      Width = 57
      Height = 17
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 40
      Top = 159
      Width = 29
      Height = 17
      Caption = 'Qtde'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 176
      Top = 159
      Width = 36
      Height = 17
      Caption = 'Venda'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 40
      Top = 17
      Width = 96
      Height = 17
      Caption = 'Tipo de Produto'
    end
    object DBEdit1: TDBEdit
      Left = 232
      Top = 40
      Width = 321
      Height = 25
      DataField = 'NomeProduto'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 40
      Top = 182
      Width = 113
      Height = 25
      DataField = 'Qtde'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 182
      Width = 191
      Height = 25
      DataField = 'Venda'
      DataSource = dts
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 40
      Top = 40
      Width = 145
      Height = 25
      TabOrder = 3
      Text = 'ComboBox1'
    end
    object DBMemo1: TDBMemo
      Left = 40
      Top = 102
      Width = 513
      Height = 50
      DataField = 'Descricao'
      DataSource = dts
      TabOrder = 4
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryProduto
    Left = 232
    Top = 30
  end
  inherited ActionList1: TActionList
    Left = 192
    Top = 30
  end
end

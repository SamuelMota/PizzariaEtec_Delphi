inherited FrmCadastroCliente: TFrmCadastroCliente
  Caption = 'FrmCadastroCliente'
  ClientHeight = 338
  ClientWidth = 636
  ExplicitWidth = 636
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 636
    Caption = '        Cliente'
    inherited btnVoltar: TButton
      Left = 15
      ExplicitLeft = 15
    end
    inherited btnSalvar: TButton
      Left = 471
    end
    inherited btnCancelar: TButton
      Left = 523
    end
    inherited btnExcluir: TButton
      Left = 575
    end
  end
  inherited PnlRodape: TPanel
    Top = 328
    Width = 636
    ExplicitTop = 319
  end
  inherited PnlGeral: TPanel
    Width = 636
    Height = 258
    ExplicitLeft = 0
    ExplicitTop = 67
    ExplicitWidth = 636
    ExplicitHeight = 258
    object Label1: TLabel
      Left = 32
      Top = 25
      Width = 36
      Height = 17
      Caption = 'Nome'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 494
      Top = 25
      Width = 23
      Height = 17
      Caption = 'Cep'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 369
      Top = 79
      Width = 35
      Height = 17
      Caption = 'Bairro'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 265
      Top = 142
      Width = 49
      Height = 17
      Caption = 'Telefone'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 388
      Top = 142
      Width = 40
      Height = 17
      Caption = 'Celular'
      FocusControl = DBEdit6
    end
    object Label3: TLabel
      Left = 32
      Top = 79
      Width = 55
      Height = 17
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 48
      Width = 449
      Height = 25
      DataField = 'NomeCliente'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 494
      Top = 48
      Width = 114
      Height = 25
      DataField = 'Cep'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 369
      Top = 102
      Width = 247
      Height = 25
      DataField = 'Bairro'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 265
      Top = 165
      Width = 106
      Height = 25
      DataField = 'Telefone'
      DataSource = dts
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 388
      Top = 165
      Width = 106
      Height = 25
      DataField = 'Celular'
      DataSource = dts
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 500
      Top = 169
      Width = 97
      Height = 17
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = dts
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 32
      Top = 102
      Width = 321
      Height = 25
      DataField = 'Endereco'
      DataSource = dts
      TabOrder = 6
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryCliente
    Left = 304
    Top = 62
  end
  inherited ActionList1: TActionList
    Left = 240
    Top = 70
  end
end

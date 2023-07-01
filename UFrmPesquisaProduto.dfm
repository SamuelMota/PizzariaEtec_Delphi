inherited FrmPesquisaProduto: TFrmPesquisaProduto
  Caption = 'FrmPesquisaProduto'
  ClientHeight = 330
  ClientWidth = 580
  ExplicitWidth = 580
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 580
    Caption = '        Produto'
    Font.Style = [fsBold]
    ExplicitWidth = 580
    inherited btnIncluir: TButton
      Left = 431
      ExplicitLeft = 431
    end
    inherited btnAlterar: TButton
      Left = 483
      ExplicitLeft = 483
    end
    inherited btnImprimir: TButton
      Left = 527
      ExplicitLeft = 527
    end
    inherited btnVoltar: TButton
      Left = 7
      ExplicitLeft = 7
    end
  end
  inherited PnlRodape: TPanel
    Top = 320
    Width = 580
    ExplicitTop = 320
    ExplicitWidth = 580
  end
  inherited PnlGeral: TPanel
    Width = 580
    Height = 250
    ExplicitWidth = 580
    ExplicitHeight = 250
    inherited PnlPesquisar: TPanel
      Width = 580
      ExplicitWidth = 580
    end
    inherited DBGrid1: TDBGrid
      Width = 580
      Height = 205
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nometipo'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Width = 375
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryProduto
  end
end

inherited FrmPesquisaTipo: TFrmPesquisaTipo
  Caption = 'FrmPesquisaTipo'
  ClientHeight = 360
  Position = poMainFormCenter
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Tipos de Produto'
    Font.Style = [fsBold]
  end
  inherited PnlRodape: TPanel
    Top = 350
    ExplicitTop = 350
  end
  inherited PnlGeral: TPanel
    Height = 280
    ExplicitHeight = 280
    inherited PnlPesquisar: TPanel
      object edtNome: TEdit
        Left = 24
        Top = 14
        Width = 425
        Height = 25
        TabOrder = 0
        TextHint = 'Pesquisa por Nome...'
        OnChange = edtNomeChange
      end
    end
    inherited DBGrid1: TDBGrid
      Height = 235
      Columns = <
        item
          Expanded = False
          FieldName = 'NomeTipo'
          Width = 441
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryTipo
  end
end

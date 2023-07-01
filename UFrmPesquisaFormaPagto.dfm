inherited FrmPesquisaFormaPagto: TFrmPesquisaFormaPagto
  Caption = 'FrmPesquisaFormaPagto'
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Formas de Pagto'
    Font.Style = [fsBold]
  end
  inherited PnlGeral: TPanel
    inherited DBGrid1: TDBGrid
      ReadOnly = False
      Columns = <
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 441
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryFormaPagto
  end
end

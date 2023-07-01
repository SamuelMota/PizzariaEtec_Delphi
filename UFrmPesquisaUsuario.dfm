inherited FrmPesquisaUsuario: TFrmPesquisaUsuario
  Caption = 'FrmPesquisaUsuario'
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Usu'#225'rios'
    Font.Style = [fsBold]
  end
  inherited PnlGeral: TPanel
    inherited DBGrid1: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'NomeUsuario'
          Width = 442
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryUsuario
  end
end

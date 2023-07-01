inherited FrmPesquisaCliente: TFrmPesquisaCliente
  Caption = 'FrmPesquisaCliente'
  ClientHeight = 338
  ClientWidth = 636
  OnDblClick = FormDblClick
  ExplicitWidth = 636
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 636
    Caption = '        Clientes'
    Font.Style = [fsBold]
    ExplicitWidth = 636
    inherited btnIncluir: TButton
      Left = 487
      ExplicitLeft = 487
    end
    inherited btnAlterar: TButton
      Left = 539
      ExplicitLeft = 539
    end
    inherited btnImprimir: TButton
      Left = 583
      ExplicitLeft = 583
    end
    inherited btnVoltar: TButton
      Left = 15
      ExplicitLeft = 15
    end
  end
  inherited PnlRodape: TPanel
    Top = 328
    Width = 636
    ExplicitTop = 328
    ExplicitWidth = 636
  end
  inherited PnlGeral: TPanel
    Width = 636
    Height = 258
    ExplicitWidth = 636
    ExplicitHeight = 258
    inherited PnlPesquisar: TPanel
      Width = 636
      ExplicitWidth = 636
      object edtNome: TEdit
        Left = 24
        Top = 14
        Width = 249
        Height = 25
        TabOrder = 0
        TextHint = 'Pesquisa por Nome...'
        OnChange = cmbAtivoChange
      end
      object edtBairro: TEdit
        Left = 279
        Top = 14
        Width = 227
        Height = 25
        TabOrder = 1
        TextHint = 'Pesquisa por Bairro...'
        OnChange = cmbAtivoChange
      end
      object cmbAtivo: TComboBox
        Left = 512
        Top = 14
        Width = 105
        Height = 25
        TabOrder = 2
        TextHint = 'Ativo'
        OnChange = cmbAtivoChange
        Items.Strings = (
          'Ambos;'
          'Ativos;'
          'Inativos.')
      end
    end
    inherited DBGrid1: TDBGrid
      Width = 636
      Height = 213
      Columns = <
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Celular'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ativo'
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryCliente
  end
end

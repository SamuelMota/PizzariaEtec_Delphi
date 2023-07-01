inherited FrmPesquisaPedidos: TFrmPesquisaPedidos
  Caption = 'FrmPesquisaPedidos'
  ClientHeight = 470
  ClientWidth = 745
  ExplicitWidth = 745
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 745
    Caption = '        Pedido'
    Font.Style = [fsBold]
    ExplicitWidth = 745
    inherited btnIncluir: TButton
      Left = 596
      ExplicitLeft = 596
    end
    inherited btnAlterar: TButton
      Left = 648
      ExplicitLeft = 648
    end
    inherited btnImprimir: TButton
      Left = 692
      ExplicitLeft = 692
    end
    inherited btnVoltar: TButton
      Left = 12
      ExplicitLeft = 12
    end
  end
  inherited PnlRodape: TPanel
    Top = 460
    Width = 745
    ExplicitTop = 460
    ExplicitWidth = 745
  end
  inherited PnlGeral: TPanel
    Width = 745
    Height = 390
    ExplicitWidth = 745
    ExplicitHeight = 390
    inherited PnlPesquisar: TPanel
      Width = 745
      ExplicitWidth = 745
    end
    inherited DBGrid1: TDBGrid
      Top = 73
      Width = 745
      Height = 169
      Columns = <
        item
          Expanded = False
          FieldName = 'DataPedido'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomecliente'
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Entregar'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PrevisaoEntrega'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorTotal'
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 0
      Top = 45
      Width = 745
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Pedidos'
      Color = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 0
      Top = 242
      Width = 745
      Height = 28
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Produtos do Pedido'
      Color = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
    end
    object DBGrid2: TDBGrid
      Left = 0
      Top = 270
      Width = 745
      Height = 120
      Align = alBottom
      BorderStyle = bsNone
      Color = clWhite
      DataSource = dtsItem
      DrawingStyle = gdsGradient
      GradientEndColor = 221
      GradientStartColor = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nomeitem'
          Width = 280
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtde'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Preco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor Total'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Observacao'
          Width = 184
          Visible = True
        end>
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryPedido
  end
  object dtsItem: TDataSource
    DataSet = dmDados.QryItemPedido
    Left = 592
    Top = 222
  end
end

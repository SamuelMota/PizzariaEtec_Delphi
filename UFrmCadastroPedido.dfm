inherited FrmCadastroPedido: TFrmCadastroPedido
  Caption = 'FrmCadastroPedido'
  ClientHeight = 470
  ClientWidth = 745
  ExplicitWidth = 745
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 745
    Caption = '        Pedido'
    ExplicitWidth = 745
    inherited btnVoltar: TButton
      Left = 12
      ExplicitLeft = 12
    end
    inherited btnSalvar: TButton
      Left = 580
      ExplicitLeft = 580
    end
    inherited btnCancelar: TButton
      Left = 632
      ExplicitLeft = 632
    end
    inherited btnExcluir: TButton
      Left = 684
      ExplicitLeft = 684
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
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 745
    ExplicitHeight = 390
    object Label1: TLabel
      Left = 32
      Top = 6
      Width = 28
      Height = 17
      Caption = 'Fone'
    end
    object Label2: TLabel
      Left = 199
      Top = 6
      Width = 39
      Height = 17
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 455
      Top = 6
      Width = 92
      Height = 17
      Caption = 'Data do Pedido'
    end
    object Label4: TLabel
      Left = 30
      Top = 60
      Width = 117
      Height = 17
      Caption = 'Previs'#227'o de Entrega'
    end
    object Label5: TLabel
      Left = 255
      Top = 60
      Width = 94
      Height = 17
      Caption = 'Forma de Pagto'
    end
    object DBText1: TDBText
      Left = 595
      Top = 71
      Width = 94
      Height = 37
      Alignment = taRightJustify
      AutoSize = True
      Color = clMaroon
      DataField = 'ValorTotal'
      DataSource = dts
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -27
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 114
      Width = 745
      Height = 276
      ActivePage = TabSheet1
      Align = alBottom
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Produtos'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 737
          Height = 28
          Align = alTop
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
          TabOrder = 0
        end
        object pnlItem: TPanel
          Left = 361
          Top = 28
          Width = 376
          Height = 216
          Align = alRight
          BevelKind = bkFlat
          BevelOuter = bvNone
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object Label6: TLabel
            Left = 24
            Top = 16
            Width = 47
            Height = 17
            Caption = 'Produto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 24
            Top = 70
            Width = 29
            Height = 17
            Caption = 'Qtde'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 112
            Top = 70
            Width = 33
            Height = 17
            Caption = 'Pre'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 208
            Top = 71
            Width = 62
            Height = 17
            Caption = 'Valor Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 24
            Top = 124
            Width = 70
            Height = 17
            Caption = 'Observa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit4: TDBEdit
            Left = 24
            Top = 39
            Width = 233
            Height = 25
            Color = cl3DLight
            DataField = 'nomeitem'
            DataSource = dtsItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object BtnProduto: TBitBtn
            Left = 263
            Top = 40
            Width = 42
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnClick = BtnProdutoClick
          end
          object DBEdit5: TDBEdit
            Left = 24
            Top = 93
            Width = 73
            Height = 25
            DataField = 'Qtde'
            DataSource = dtsItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit6: TDBEdit
            Left = 111
            Top = 93
            Width = 73
            Height = 25
            DataField = 'Preco'
            DataSource = dtsItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit7: TDBEdit
            Left = 208
            Top = 94
            Width = 73
            Height = 25
            Color = cl3DLight
            DataField = 'ValorTotal'
            DataSource = dtsItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBMemo1: TDBMemo
            Left = 24
            Top = 147
            Width = 329
            Height = 50
            DataField = 'Observacao'
            DataSource = dtsItem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
        end
        object pnlGrid: TPanel
          Left = 0
          Top = 28
          Width = 361
          Height = 216
          Align = alClient
          TabOrder = 2
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 359
            Height = 154
            Align = alClient
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
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'nomeitem'
                Width = 270
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Qtde'
                Width = 45
                Visible = True
              end>
          end
          object pnlBotoes: TPanel
            Left = 1
            Top = 155
            Width = 359
            Height = 60
            Align = alBottom
            BevelOuter = bvNone
            Color = clMaroon
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object btnIncluirPro: TButton
              Left = 17
              Top = 9
              Width = 48
              Height = 50
              Action = actIncluirProduto
              Images = dmDados.img32
              Style = bsCommandLink
              TabOrder = 0
            end
            object btnAlterarPro: TButton
              Left = 71
              Top = 9
              Width = 48
              Height = 50
              Action = actAlterarProduto
              Images = dmDados.img32
              Style = bsCommandLink
              TabOrder = 1
            end
            object btnExcluirPro: TButton
              Left = 125
              Top = 9
              Width = 48
              Height = 50
              Action = actExcluirProduto
              Images = dmDados.img32
              Style = bsCommandLink
              TabOrder = 2
            end
            object btnSalvarPro: TButton
              Left = 179
              Top = 9
              Width = 48
              Height = 50
              Action = actSalvarProduto
              Images = dmDados.img32
              Style = bsCommandLink
              TabOrder = 3
            end
            object btnCancelarPro: TButton
              Left = 233
              Top = 9
              Width = 48
              Height = 50
              Action = actCancelarProduto
              Images = dmDados.img32
              Style = bsCommandLink
              TabOrder = 4
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Entregar'
        ImageIndex = 1
      end
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 29
      Width = 121
      Height = 25
      DataField = 'Fone'
      DataSource = dts
      TabOrder = 1
      OnKeyPress = DBEdit1KeyPress
    end
    object BtnCliente: TBitBtn
      Left = 159
      Top = 29
      Width = 34
      Height = 25
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BtnClienteClick
    end
    object DBEdit2: TDBEdit
      Left = 199
      Top = 29
      Width = 250
      Height = 25
      Color = cl3DLight
      DataField = 'nomecliente'
      DataSource = dts
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 455
      Top = 29
      Width = 134
      Height = 25
      DataField = 'DataPedido'
      DataSource = dts
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 595
      Top = 33
      Width = 97
      Height = 17
      Caption = 'Entregar'
      DataField = 'Entregar'
      DataSource = dts
      TabOrder = 5
    end
    object dtpData: TDateTimePicker
      Left = 30
      Top = 83
      Width = 117
      Height = 25
      Date = 44523.000000000000000000
      Time = 0.848594166665861800
      TabOrder = 6
      OnChange = dtpDataChange
    end
    object dtpHora: TDateTimePicker
      Left = 153
      Top = 83
      Width = 79
      Height = 25
      Date = 44523.000000000000000000
      Time = 0.849473182868678100
      Kind = dtkTime
      TabOrder = 7
    end
    object ComboBox1: TComboBox
      Left = 255
      Top = 83
      Width = 145
      Height = 25
      TabOrder = 8
      Text = 'ComboBox1'
    end
  end
  inherited dts: TDataSource
    DataSet = dmDados.QryPedido
    Left = 480
    Top = 142
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 142
    object actIncluirProduto: TAction
      Hint = 'Adicionar Produto ao Pedido'
      ImageIndex = 195
      OnExecute = actIncluirProdutoExecute
    end
    object actAlterarProduto: TAction
      Hint = 'Alterar o Produto do Pedido '
      ImageIndex = 191
      OnExecute = actAlterarProdutoExecute
    end
    object actExcluirProduto: TAction
      Hint = 'Excluir Produto do Pedido'
      ImageIndex = 194
      OnExecute = actExcluirProdutoExecute
    end
    object actSalvarProduto: TAction
      Hint = 'Salvar o Produto no Pedido'
      ImageIndex = 192
      OnExecute = actSalvarProdutoExecute
    end
    object actCancelarProduto: TAction
      Hint = 'Cancelar Altera'#231#245'es do Produto'
      ImageIndex = 193
      OnExecute = actCancelarProdutoExecute
    end
  end
  object dtsItem: TDataSource
    DataSet = dmDados.QryItemPedido
    Left = 288
    Top = 310
  end
end

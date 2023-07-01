inherited FrmPrincipal: TFrmPrincipal
  Caption = ' Pizzaria Etec - Sistema de Gerenciamento'
  ClientHeight = 436
  ClientWidth = 621
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  ExplicitWidth = 621
  ExplicitHeight = 436
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Width = 621
    Caption = '  Pizzaria Etec'
    Font.Style = [fsBold]
    ExplicitWidth = 621
    object btnMinimizar: TButton
      Left = 510
      Top = 11
      Width = 46
      Height = 53
      Anchors = [akTop, akRight]
      Caption = 'btnMinimizar'
      ImageIndex = 28
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 0
      OnClick = btnMinimizarClick
    end
    object btnFechar: TButton
      Left = 562
      Top = 11
      Width = 46
      Height = 53
      Anchors = [akTop, akRight]
      Caption = 'btnFechar'
      ImageIndex = 146
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 1
      OnClick = BtnFecharClick
    end
  end
  inherited PnlRodape: TPanel
    Top = 426
    Width = 621
    ExplicitTop = 426
    ExplicitWidth = 621
  end
  inherited PnlGeral: TPanel
    Width = 621
    Height = 356
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 621
    ExplicitHeight = 356
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 621
      Height = 80
      ButtonHeight = 60
      ButtonWidth = 111
      Caption = 'ToolBar1'
      Color = clBlack
      DrawingStyle = dsGradient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      GradientEndColor = clBlack
      GradientStartColor = clMaroon
      HotTrackColor = clBtnShadow
      Images = dmDados.img32
      Indent = 2
      ParentColor = False
      ParentFont = False
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 2
        Top = 0
        Action = actConfiguracao
      end
      object ToolButton2: TToolButton
        Left = 113
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 121
        Top = 0
        Action = actProdutos
      end
      object ToolButton4: TToolButton
        Left = 232
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 240
        Top = 0
        Action = actClientes
      end
      object ToolButton8: TToolButton
        Left = 351
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton6: TToolButton
        Left = 359
        Top = 0
        Action = actPedidos
      end
    end
    object pnlConfiguracao: TPanel
      Left = 0
      Top = 78
      Width = 232
      Height = 163
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      Visible = False
      object SpeedButton1: TSpeedButton
        Left = 40
        Top = 24
        Width = 169
        Height = 22
        Action = actFormaPagto
        Flat = True
      end
      object SpeedButton2: TSpeedButton
        Left = 48
        Top = 68
        Width = 145
        Height = 22
        Action = actTipos
        Flat = True
      end
      object Bevel1: TBevel
        Left = 0
        Top = 112
        Width = 232
        Height = 57
        Shape = bsTopLine
      end
      object SpeedButton3: TSpeedButton
        Left = 48
        Top = 120
        Width = 145
        Height = 22
        Action = actUsuarios
        Flat = True
      end
    end
  end
  object ActionList1: TActionList
    Images = dmDados.img32
    Left = 416
    Top = 254
    object actConfiguracao: TAction
      Caption = 'Configura'#231#245'es '
      ImageIndex = 58
      OnExecute = actConfiguracaoExecute
    end
    object actProdutos: TAction
      Caption = 'Produtos'
      ImageIndex = 62
      OnExecute = actProdutosExecute
    end
    object actClientes: TAction
      Caption = 'Clientes'
      ImageIndex = 239
      OnExecute = actClientesExecute
    end
    object actPedidos: TAction
      Caption = 'Pedidos'
      ImageIndex = 81
      OnExecute = actPedidosExecute
    end
    object actTipos: TAction
      Caption = 'Tipos de Produtos'
      OnExecute = actTiposExecute
    end
    object actUsuarios: TAction
      Caption = 'Usu'#225'rios'
      OnExecute = actUsuariosExecute
    end
    object actFormaPagto: TAction
      Caption = 'Formas de Pagamento'
      OnExecute = actFormaPagtoExecute
    end
  end
end

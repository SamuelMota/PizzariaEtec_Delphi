inherited FrmBasePesquisa: TFrmBasePesquisa
  Caption = 'FrmBasePesquisa'
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Pesquisa'
    DesignSize = (
      469
      70)
    object btnIncluir: TButton
      Left = 320
      Top = 8
      Width = 46
      Height = 53
      Action = actIncluir
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 0
    end
    object btnAlterar: TButton
      Left = 372
      Top = 8
      Width = 46
      Height = 53
      Action = actAlterar
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 1
    end
    object btnImprimir: TButton
      Left = 416
      Top = 8
      Width = 46
      Height = 53
      Action = actImprimir
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 2
    end
    object btnVoltar: TButton
      Left = 8
      Top = 8
      Width = 46
      Height = 53
      Action = actVoltar
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 3
    end
  end
  inherited PnlRodape: TPanel
    ExplicitTop = 319
  end
  inherited PnlGeral: TPanel
    ExplicitLeft = 0
    ExplicitTop = 70
    ExplicitWidth = 469
    ExplicitHeight = 249
    object PnlPesquisar: TPanel
      Left = 0
      Top = 0
      Width = 469
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 45
      Width = 469
      Height = 204
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      DataSource = dts
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
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
    end
  end
  object dts: TDataSource
    Left = 216
    Top = 206
  end
  object ActionList1: TActionList
    Images = dmDados.img32
    Left = 264
    Top = 206
    object actVoltar: TAction
      Hint = 'Voltar'
      ImageIndex = 30
      ShortCut = 8219
      OnExecute = actVoltarExecute
    end
    object actIncluir: TAction
      Hint = 'Incluir um novo registro'
      ImageIndex = 86
      ShortCut = 113
      OnExecute = actIncluirExecute
    end
    object actAlterar: TAction
      Hint = 'Alterar o registro atual'
      ImageIndex = 77
      ShortCut = 114
      OnExecute = actAlterarExecute
    end
    object actImprimir: TAction
      Hint = 'Imprimir os dados atuais'
      ImageIndex = 180
      ShortCut = 115
      OnExecute = actImprimirExecute
    end
  end
end

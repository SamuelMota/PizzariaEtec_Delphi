inherited FrmBaseCadastro: TFrmBaseCadastro
  Caption = 'FrmBaseCadastro'
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  inherited PnlTitulo: TPanel
    Caption = '        Cadastro'
    Font.Style = [fsBold]
    DesignSize = (
      469
      70)
    object btnVoltar: TButton
      Left = 0
      Top = 8
      Width = 46
      Height = 53
      Action = actVoltar
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 0
    end
    object btnSalvar: TButton
      Left = 304
      Top = 8
      Width = 46
      Height = 53
      Action = actSalvar
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 1
    end
    object btnCancelar: TButton
      Left = 356
      Top = 8
      Width = 46
      Height = 53
      Action = actCancelar
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 2
    end
    object btnExcluir: TButton
      Left = 408
      Top = 8
      Width = 46
      Height = 53
      Action = actExcluir
      Anchors = [akTop, akRight]
      Images = dmDados.img32
      Style = bsCommandLink
      TabOrder = 3
    end
  end
  object dts: TDataSource
    OnDataChange = dtsDataChange
    Left = 384
    Top = 166
  end
  object ActionList1: TActionList
    Images = dmDados.img32
    Left = 336
    Top = 182
    object actVoltar: TAction
      Caption = 'actVoltar'
      Hint = 'Voltar'
      ImageIndex = 30
      ShortCut = 8219
      OnExecute = actVoltarExecute
    end
    object actSalvar: TAction
      Hint = 'Salvar as altera'#231#245'es em'
      ImageIndex = 50
      ShortCut = 113
      OnExecute = actSalvarExecute
    end
    object actCancelar: TAction
      Hint = 'Cancelar as altera'#231#245'es'
      ImageIndex = 75
      ShortCut = 114
      OnExecute = actCancelarExecute
    end
    object actExcluir: TAction
      Hint = 'Excluir os dados em exibi'#231#227'o'
      ImageIndex = 234
      ShortCut = 16430
      OnExecute = actExcluirExecute
    end
  end
end

object fmProduto: TfmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro Produtos'
  ClientHeight = 311
  ClientWidth = 1017
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1017
    Height = 17
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 629
  end
  object pnButon: TPanel
    Left = 0
    Top = 241
    Width = 1017
    Height = 70
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 344
    ExplicitWidth = 681
    object btNovo: TButton
      Left = 16
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Novo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btAlterar: TButton
      Left = 120
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btCancelar: TButton
      Left = 224
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btExcluir: TButton
      Left = 328
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object btImprimir: TButton
      Left = 432
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnCentro: TPanel
    Left = 0
    Top = 17
    Width = 1017
    Height = 224
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 320
    ExplicitTop = 112
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pgProduto: TPageControl
      Left = 1
      Top = 1
      Width = 1015
      Height = 222
      ActivePage = tbProduto
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 679
      ExplicitHeight = 271
      object tbProduto: TTabSheet
        Caption = 'Produtos'
        ExplicitTop = 24
        ExplicitWidth = 671
        ExplicitHeight = 243
        object dbgProduto: TDBGrid
          Left = 0
          Top = 0
          Width = 1007
          Height = 190
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object tbDadosProdutos: TTabSheet
        Caption = 'Dados produtos'
        ImageIndex = 1
        ExplicitTop = 24
        ExplicitWidth = 671
        ExplicitHeight = 243
      end
    end
  end
end

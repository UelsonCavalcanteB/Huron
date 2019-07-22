object fmProduto: TfmProduto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro Produtos'
  ClientHeight = 276
  ClientWidth = 1033
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1033
    Height = 17
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1017
  end
  object pnButon: TPanel
    Left = 0
    Top = 206
    Width = 1033
    Height = 70
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 211
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
      OnClick = btNovoClick
    end
    object btAlterar: TButton
      Left = 120
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btAlterarClick
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
      OnClick = btCancelarClick
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
      OnClick = btExcluirClick
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
    object btGravar: TButton
      Left = 536
      Top = 1
      Width = 105
      Height = 67
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object pnCentro: TPanel
    Left = 0
    Top = 17
    Width = 1033
    Height = 189
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1017
    ExplicitHeight = 150
    object pgProduto: TPageControl
      Left = 1
      Top = 1
      Width = 1031
      Height = 187
      ActivePage = tbDadosProdutos
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 1015
      ExplicitHeight = 148
      object tbProduto: TTabSheet
        Caption = 'Produtos'
        ExplicitWidth = 1007
        ExplicitHeight = 116
        object dbgProduto: TDBGrid
          Left = 0
          Top = 0
          Width = 1023
          Height = 155
          Align = alClient
          DataSource = dsProduto
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
        ExplicitWidth = 1007
        ExplicitHeight = 116
        object Label1: TLabel
          Left = 20
          Top = 32
          Width = 43
          Height = 17
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 193
          Top = 32
          Width = 57
          Height = 17
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 25
          Top = 73
          Width = 33
          Height = 17
          Caption = 'Pre'#231'o'
        end
        object Label4: TLabel
          Left = 201
          Top = 73
          Width = 52
          Height = 17
          Caption = 'Markunp'
        end
        object Label5: TLabel
          Left = 386
          Top = 73
          Width = 72
          Height = 17
          Caption = 'Pre'#231'o venda'
        end
        object DBEdit1: TDBEdit
          Left = 64
          Top = 29
          Width = 121
          Height = 25
          DataField = 'IDPRODUTO'
          DataSource = dsProduto
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 256
          Top = 29
          Width = 697
          Height = 25
          DataField = 'DESCRICAO'
          DataSource = dsProduto
          TabOrder = 1
        end
        object edValor: TDBEdit
          Left = 64
          Top = 70
          Width = 121
          Height = 25
          DataField = 'CUSTO'
          DataSource = dsProduto
          TabOrder = 2
        end
        object edPrec: TDBEdit
          Left = 464
          Top = 70
          Width = 121
          Height = 25
          DataField = 'PRECOVENDA'
          DataSource = dsProduto
          TabOrder = 3
          OnClick = edPrecClick
        end
        object edPorc: TEdit
          Left = 256
          Top = 70
          Width = 121
          Height = 25
          TabOrder = 4
        end
      end
    end
  end
  object dsProduto: TDataSource
    DataSet = fmConexao.FDQPROD
    Left = 477
    Top = 14
  end
  object ActionList: TActionList
    Left = 392
    Top = 25
    object DatasetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = '&First'
      Hint = 'First'
      ImageIndex = 0
    end
    object DatasetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = '&Prior'
      Hint = 'Prior'
      ImageIndex = 1
    end
    object DatasetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = '&Next'
      Hint = 'Next'
      ImageIndex = 2
    end
    object DatasetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = '&Last'
      Hint = 'Last'
      ImageIndex = 3
    end
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
    object DatasetRefresh1: TDataSetRefresh
      Category = 'Dataset'
      Caption = '&Refresh'
      Hint = 'Refresh'
      ImageIndex = 9
    end
  end
end

object fmCliente: TfmCliente
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro Cliente'
  ClientHeight = 350
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
  end
  object pnCli: TPanel
    Left = 0
    Top = 17
    Width = 1033
    Height = 254
    Align = alClient
    TabOrder = 1
    object pgDadosCadastrais: TPageControl
      Left = 1
      Top = 1
      Width = 1031
      Height = 252
      ActivePage = DadosCadastrais
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Clientes: TTabSheet
        Caption = 'Clientes'
        object DBGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 1023
          Height = 220
          Align = alClient
          DataSource = dsCli
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object DadosCadastrais: TTabSheet
        Caption = 'Dados Cadastrais'
        ImageIndex = 1
        object Label1: TLabel
          Left = 32
          Top = 25
          Width = 43
          Height = 17
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 171
          Top = 25
          Width = 74
          Height = 17
          Caption = 'Raz'#227'o Social'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 11
          Top = 69
          Width = 64
          Height = 17
          Caption = 'N. Fantasia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 681
          Top = 69
          Width = 29
          Height = 17
          Caption = 'CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 20
          Top = 117
          Width = 55
          Height = 17
          Caption = 'Endere'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 661
          Top = 117
          Width = 49
          Height = 17
          Caption = 'Telefone'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 44
          Top = 167
          Width = 31
          Height = 17
          Caption = 'Email'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtRazao: TDBEdit
          Left = 251
          Top = 22
          Width = 641
          Height = 25
          DataField = 'RAZAOSOCIAL'
          DataSource = dsCli
          TabOrder = 0
        end
        object edtFantasia: TDBEdit
          Left = 81
          Top = 66
          Width = 574
          Height = 25
          Hint = 'Digite o nome fantasia '
          HelpType = htKeyword
          HelpKeyword = 'Digite o nome fantasia '
          DataField = 'NOMEFANTAZIA'
          DataSource = dsCli
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 81
          Top = 114
          Width = 574
          Height = 25
          Hint = 'Digite o nome fantasia '
          HelpType = htKeyword
          HelpKeyword = 'Digite o nome fantasia '
          DataField = 'ENDERECO'
          DataSource = dsCli
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 81
          Top = 162
          Width = 811
          Height = 25
          Hint = 'Digite o nome fantasia '
          HelpType = htKeyword
          HelpKeyword = 'Digite o nome fantasia '
          DataField = 'EMAIL'
          DataSource = dsCli
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 716
          Top = 114
          Width = 176
          Height = 25
          Hint = 'Digite o nome fantasia '
          HelpType = htKeyword
          HelpKeyword = 'Digite o nome fantasia '
          DataField = 'TELEFONE'
          DataSource = dsCli
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 716
          Top = 66
          Width = 176
          Height = 25
          Hint = 'Digite o nome fantasia '
          HelpType = htKeyword
          HelpKeyword = 'Digite o nome fantasia '
          DataField = 'CNPJ'
          DataSource = dsCli
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 81
          Top = 22
          Width = 84
          Height = 25
          Hint = 'Digite o nome fantasia '
          HelpType = htKeyword
          HelpKeyword = 'Digite o nome fantasia '
          DataField = 'IDCLIENTE'
          DataSource = dsCli
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
      end
    end
  end
  object pnButon: TPanel
    Left = 0
    Top = 271
    Width = 1033
    Height = 79
    Align = alBottom
    TabOrder = 2
    object btNovo: TButton
      Left = 16
      Top = 5
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
      Top = 5
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
      OnClick = btAlterarClick
    end
    object btCancelar: TButton
      Left = 224
      Top = 5
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
      Top = 5
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
      Top = 5
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
    object btSair: TButton
      Left = 907
      Top = 4
      Width = 105
      Height = 67
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btSairClick
    end
    object btGravar: TButton
      Left = 536
      Top = 5
      Width = 105
      Height = 67
      Hint = 'Insert'
      Caption = 'Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      TabOrder = 6
      OnClick = btGravarClick
    end
  end
  object dsCli: TDataSource
    DataSet = fmConexao.FDQCLI
    Left = 701
    Top = 86
  end
  object ActionList: TActionList
    Left = 557
    Top = 22
    object DatasetInsert: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = dsCli
    end
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

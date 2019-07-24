object fmPedido: TfmPedido
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pedido'
  ClientHeight = 418
  ClientWidth = 740
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 97
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -40
    ExplicitTop = -6
    object lbCli: TLabel
      Left = 159
      Top = 24
      Width = 43
      Height = 17
      Caption = 'Cliente '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbProduto: TLabel
      Left = 16
      Top = 56
      Width = 47
      Height = 17
      Caption = 'Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbPedido: TLabel
      Left = 22
      Top = 24
      Width = 41
      Height = 17
      Caption = 'Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 427
      Top = 56
      Width = 34
      Height = 17
      Caption = 'Valor '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 559
      Top = 56
      Width = 55
      Height = 17
      Caption = 'Acr. valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 658
      Top = 18
      Width = 74
      Height = 28
      Caption = 'Adcionar'
    end
    object DBComboBox1: TDBComboBox
      Left = 208
      Top = 21
      Width = 444
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBox2: TDBComboBox
      Left = 69
      Top = 52
      Width = 348
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 69
      Top = 21
      Width = 84
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 463
      Top = 52
      Width = 90
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object UniDBEdit1: TUniDBEdit
      Left = 620
      Top = 52
      Width = 93
      Height = 25
      Hint = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      Font.Name = 'Segoe UI'
      TabOrder = 4
    end
  end
  object pnBut: TPanel
    Left = 0
    Top = 354
    Width = 740
    Height = 64
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 264
    ExplicitWidth = 724
    object btNovo: TButton
      Left = 16
      Top = -3
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
      Top = -3
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
    end
    object btCancelar: TButton
      Left = 224
      Top = -3
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
      Top = -3
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
      Top = -3
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
      Top = -3
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 740
    Height = 257
    Align = alClient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end

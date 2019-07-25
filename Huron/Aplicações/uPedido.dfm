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
  OnCreate = FormCreate
  OnShow = FormShow
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
      Left = 20
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
      Left = 620
      Top = 18
      Width = 93
      Height = 28
      Caption = 'Adcionar'
      OnClick = SpeedButton1Click
    end
    object cbCli: TComboBox
      Left = 69
      Top = 21
      Width = 545
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edCodPro: TEdit
      Left = 360
      Top = 54
      Width = 41
      Height = 21
      TabOrder = 1
      Text = 'edCodPro'
      Visible = False
    end
    object edAjuste: TEdit
      Left = 461
      Top = 52
      Width = 95
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
  object cbPedidoPro: TComboBox
    Left = 69
    Top = 52
    Width = 352
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object gdPedido: TStringGrid
    Left = 0
    Top = 97
    Width = 740
    Height = 257
    Align = alClient
    FixedRows = 0
    TabOrder = 3
    ExplicitLeft = 208
    ExplicitTop = 208
    ExplicitWidth = 320
    ExplicitHeight = 120
  end
  object dsPedido: TDataSource
    DataSet = fmConexao.FDQPEDIDO
    Left = 464
    Top = 104
  end
  object dsProdutoPedido: TDataSource
    DataSet = fmConexao.FDQProPedido
    Left = 544
    Top = 104
  end
  object dsClientePedido: TDataSource
    DataSet = fmConexao.FDQCliPedido
    Left = 632
    Top = 104
  end
end

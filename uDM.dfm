object fmConexao: TfmConexao
  Left = 0
  Top = 0
  Caption = 'dmConexao'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Connection: TFDConnection
    Params.Strings = (
      'Database=huron'
      'Server=POTIGUAR'
      'Password=theos'
      'ConnectionDef=MSSQL_Demo')
    Connected = True
    Left = 40
    Top = 32
  end
  object FDQCLI: TFDQuery
    Active = True
    Connection = Connection
    SQL.Strings = (
      'SELECT * FROM HURON.CLIENTE')
    Left = 152
    Top = 64
  end
end

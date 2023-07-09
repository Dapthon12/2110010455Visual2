object Form14: TForm14
  Left = 530
  Top = 217
  Width = 303
  Height = 236
  Caption = 'Menu Login'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 24
    Width = 48
    Height = 19
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object edt1: TEdit
    Left = 104
    Top = 64
    Width = 161
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 104
    Top = 104
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object btn2: TButton
    Left = 16
    Top = 144
    Width = 75
    Height = 41
    Caption = 'KELUAR'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn1: TButton
    Left = 200
    Top = 144
    Width = 75
    Height = 41
    Caption = 'LOGIN'
    TabOrder = 3
    OnClick = btn1Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'dblaporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Visual 2\DaudAlPathoni_2110010455_TugasAkhir\libmysql.dll'
    Left = 32
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 240
    Top = 8
  end
end

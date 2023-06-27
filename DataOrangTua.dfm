object Form4: TForm4
  Left = 192
  Top = 125
  Width = 583
  Height = 517
  Caption = 'Data Orang Tua'
  Color = clBtnFace
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
    Left = 24
    Top = 8
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label8: TLabel
    Left = 24
    Top = 56
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label9: TLabel
    Left = 24
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object Label10: TLabel
    Left = 24
    Top = 103
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label11: TLabel
    Left = 24
    Top = 127
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label3: TLabel
    Left = 24
    Top = 176
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object Label4: TLabel
    Left = 24
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label7: TLabel
    Left = 24
    Top = 152
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object edt1: TEdit
    Left = 104
    Top = 8
    Width = 433
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 104
    Top = 32
    Width = 433
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 104
    Top = 56
    Width = 433
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 104
    Top = 80
    Width = 433
    Height = 21
    TabOrder = 3
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 104
    Top = 104
    Width = 433
    Height = 21
    TabOrder = 4
    Text = 'edt5'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 266
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 24
    Top = 224
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 224
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 224
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 224
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 224
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = btn5Click
  end
  object edt6: TEdit
    Left = 104
    Top = 128
    Width = 433
    Height = 21
    TabOrder = 5
    Text = 'edt6'
  end
  object edt7: TEdit
    Left = 104
    Top = 176
    Width = 433
    Height = 21
    TabOrder = 7
    Text = 'edt7'
  end
  object btn6: TButton
    Left = 464
    Top = 224
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 14
    OnClick = btn6Click
  end
  object edt8: TEdit
    Left = 104
    Top = 200
    Width = 433
    Height = 21
    TabOrder = 8
    Text = 'edt8'
  end
  object cbb1: TComboBox
    Left = 104
    Top = 152
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = 'cbb1'
    Items.Strings = (
      'L'
      'P')
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from ortu')
    Params = <>
    Left = 40
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 352
  end
end

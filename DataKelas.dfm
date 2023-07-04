object Form6: TForm6
  Left = 192
  Top = 125
  Width = 583
  Height = 332
  Caption = 'Data Kelas'
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
    Left = 16
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Nama Kelas'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 38
    Height = 13
    Caption = 'Jurusan'
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
  object dbgrd1: TDBGrid
    Left = 16
    Top = 106
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idkelas'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'nama kelas'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jurusan'
        Width = 90
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 64
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 64
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 64
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 64
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 64
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 464
    Top = 64
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 8
    OnClick = btn6Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kelas')
    Params = <>
    Left = 40
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 192
  end
end

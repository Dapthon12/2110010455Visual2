object Form7: TForm7
  Left = 449
  Top = 118
  Width = 582
  Height = 381
  Caption = 'Data Poin'
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
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object Label8: TLabel
    Left = 16
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label9: TLabel
    Left = 16
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Status'
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
  object dbgrd1: TDBGrid
    Left = 16
    Top = 154
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idpoin'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_poin'
        Title.Caption = 'nama poin'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bobot'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 70
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 112
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 112
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 112
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 112
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 464
    Top = 112
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 9
    OnClick = btn6Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 40
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 240
  end
end

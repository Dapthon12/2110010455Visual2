object Form3: TForm3
  Left = 372
  Top = 113
  Width = 584
  Height = 478
  Caption = 'Data Wali Kelas'
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
    Left = 24
    Top = 8
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label7: TLabel
    Left = 24
    Top = 56
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label8: TLabel
    Left = 24
    Top = 80
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label9: TLabel
    Left = 24
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label10: TLabel
    Left = 24
    Top = 127
    Width = 72
    Height = 13
    Caption = 'Mata Pelajaran'
  end
  object Label11: TLabel
    Left = 24
    Top = 151
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label3: TLabel
    Left = 24
    Top = 176
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
    Top = 80
    Width = 433
    Height = 21
    TabOrder = 3
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 104
    Top = 104
    Width = 433
    Height = 21
    TabOrder = 4
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 104
    Top = 128
    Width = 433
    Height = 21
    TabOrder = 5
    Text = 'edt5'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 250
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idwalkel'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nip'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jk'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pendidikan'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'matpel'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 40
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 208
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 208
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 208
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 208
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object cbb1: TComboBox
    Left = 104
    Top = 56
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'cbb1'
    Items.Strings = (
      'L'
      'P')
  end
  object edt6: TEdit
    Left = 104
    Top = 152
    Width = 433
    Height = 21
    TabOrder = 6
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
    Top = 208
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 13
    OnClick = btn6Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from wali_kelas'
      '')
    Params = <>
    Left = 40
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 336
  end
end

object Form2: TForm2
  Left = 368
  Top = 80
  Width = 582
  Height = 549
  Caption = 'Data Siswa'
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
    Caption = 'NIS'
  end
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label4: TLabel
    Left = 24
    Top = 80
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label5: TLabel
    Left = 24
    Top = 104
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label6: TLabel
    Left = 24
    Top = 128
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label7: TLabel
    Left = 24
    Top = 152
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label8: TLabel
    Left = 24
    Top = 176
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label9: TLabel
    Left = 24
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label10: TLabel
    Left = 24
    Top = 223
    Width = 33
    Height = 13
    Caption = 'No. Hp'
  end
  object Label11: TLabel
    Left = 24
    Top = 247
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
  object edt5: TEdit
    Left = 104
    Top = 104
    Width = 433
    Height = 21
    TabOrder = 4
    Text = 'edt5'
  end
  object edt6: TEdit
    Left = 104
    Top = 176
    Width = 433
    Height = 21
    TabOrder = 7
    Text = 'edt6'
  end
  object edt7: TEdit
    Left = 104
    Top = 200
    Width = 433
    Height = 21
    TabOrder = 8
    Text = 'edt7'
  end
  object edt8: TEdit
    Left = 104
    Top = 224
    Width = 433
    Height = 21
    TabOrder = 9
    Text = 'edt8'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 320
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idsiswa'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nisn'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jk'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hp'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 280
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 11
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 280
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 12
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 280
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 13
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 280
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 14
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 280
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 15
    OnClick = btn5Click
  end
  object dtp1: TDateTimePicker
    Left = 104
    Top = 128
    Width = 186
    Height = 21
    Date = 45104.462068530090000000
    Time = 45104.462068530090000000
    TabOrder = 5
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
  object edt9: TEdit
    Left = 104
    Top = 248
    Width = 433
    Height = 21
    TabOrder = 10
    Text = 'edt9'
  end
  object btn6: TButton
    Left = 464
    Top = 280
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 16
    OnClick = btn6Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 32
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 32
    Top = 424
  end
end

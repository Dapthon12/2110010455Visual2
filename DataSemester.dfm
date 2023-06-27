object Form9: TForm9
  Left = 192
  Top = 125
  Width = 581
  Height = 503
  Caption = 'Data Semester'
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
    Width = 63
    Height = 13
    Caption = 'Nama Siswa*'
  end
  object Label2: TLabel
    Left = 24
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label8: TLabel
    Left = 24
    Top = 80
    Width = 51
    Height = 13
    Caption = 'Orang Tua'
  end
  object Label9: TLabel
    Left = 24
    Top = 128
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label10: TLabel
    Left = 24
    Top = 151
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label11: TLabel
    Left = 24
    Top = 175
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label3: TLabel
    Left = 24
    Top = 200
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label4: TLabel
    Left = 24
    Top = 56
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object Label5: TLabel
    Left = 24
    Top = 104
    Width = 25
    Height = 13
    Caption = 'Kelas'
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
  object edt4: TEdit
    Left = 104
    Top = 80
    Width = 433
    Height = 21
    TabOrder = 3
    Text = 'edt4'
  end
  object edt6: TEdit
    Left = 104
    Top = 152
    Width = 433
    Height = 21
    TabOrder = 6
    Text = 'edt6'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 274
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
    Columns = <
      item
        Expanded = False
        FieldName = 'idsemester'
        Title.Alignment = taCenter
        Title.Caption = 'id'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idsiswa'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idpoin'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idwalkel'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idortu'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idkelas'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Caption = 'nama siswa'
        Width = 90
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
        FieldName = 'nama'
        Title.Caption = 'wali kelas'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_1'
        Title.Caption = 'orang tua'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_2'
        Title.Caption = 'kelas'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'semester'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tingkat_kelas'
        Title.Caption = 'tingkat kelas'
        Width = 70
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 232
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 232
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 232
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 232
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 232
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = btn5Click
  end
  object edt7: TEdit
    Left = 104
    Top = 176
    Width = 433
    Height = 21
    TabOrder = 7
    Text = 'edt7'
  end
  object edt8: TEdit
    Left = 104
    Top = 200
    Width = 433
    Height = 21
    TabOrder = 8
    Text = 'edt8'
  end
  object btn6: TButton
    Left = 464
    Top = 232
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 14
    OnClick = btn6Click
  end
  object edt3: TEdit
    Left = 104
    Top = 56
    Width = 433
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object edt5: TEdit
    Left = 104
    Top = 104
    Width = 433
    Height = 21
    TabOrder = 4
    Text = 'edt5'
  end
  object dtp1: TDateTimePicker
    Left = 104
    Top = 128
    Width = 186
    Height = 21
    Date = 45104.352896250000000000
    Time = 45104.352896250000000000
    TabOrder = 5
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT semester.idsemester, semester.idsiswa, semester.idpoin, s' +
        'emester.idwalkel, semester.idortu, semester.idkelas, siswa.nama_' +
        'siswa, poin.nama_poin, wali_kelas.nama, ortu.nama, kelas.nama, s' +
        'emester.tanggal, semester.semester, semester.status, semester.ti' +
        'ngkat_kelas'
      'FROM semester'
      'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa'
      'LEFT JOIN poin ON semester.idpoin = poin.idpoin'
      'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel'
      'LEFT JOIN ortu ON semester.idortu = ortu.idortu'
      'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas')
    Params = <>
    Left = 40
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 360
  end
end

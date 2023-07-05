object Form13: TForm13
  Left = 387
  Top = 197
  Width = 583
  Height = 365
  Caption = 'Data Rangkuman'
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
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 65
    Height = 13
    Caption = 'ID Semester*'
  end
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 81
    Height = 13
    Caption = 'ID Poin Prestasi*'
  end
  object Label4: TLabel
    Left = 16
    Top = 64
    Width = 103
    Height = 13
    Caption = 'ID Poin Pelanggaran*'
  end
  object edt1: TEdit
    Left = 160
    Top = 16
    Width = 377
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 160
    Top = 40
    Width = 377
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 160
    Top = 64
    Width = 377
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 138
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idrangkuman'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idsemester'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idsiswa'
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
        FieldName = 'idprestasi'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idpelanggaran'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Title.Caption = 'nama siswa'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nis'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'nama kelas'
        Width = 65
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jk'
        Title.Alignment = taCenter
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_1'
        Title.Caption = 'nama wali kelas'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_2'
        Title.Caption = 'nama orang tua/wali'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp'
        Title.Caption = 'no. hp orang tua/wali'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_prestasi'
        Title.Caption = 'nama prestasi'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_pelanggaran'
        Title.Caption = 'nama pelanggaran'
        Width = 500
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bobot_prestasi'
        Title.Caption = 'bobot prestasi'
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'bobot_pelanggaran'
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
    Top = 96
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 96
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 96
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 96
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 96
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 464
    Top = 96
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
      
        'SELECT rangkuman.idrangkuman, semester.idsemester, semester.idsi' +
        'swa, semester.idwalkel, semester.idortu, semester.idkelas, rangk' +
        'uman.idprestasi, rangkuman.idpelanggaran, siswa.nama_siswa, sisw' +
        'a.nis, kelas.nama, siswa.jk, wali_kelas.nama, ortu.nama, ortu.te' +
        'lp,  prestasi_poin.nama_poin AS nama_prestasi, '
      
        '       pelanggaran_poin.nama_poin AS nama_pelanggaran, prestasi_' +
        'poin.bobot AS bobot_prestasi, '
      
        '       pelanggaran_poin.bobot AS bobot_pelanggaran, semester.sta' +
        'tus'
      'FROM rangkuman'
      'LEFT JOIN semester ON rangkuman.idsemester = semester.idsemester'
      'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa'
      
        'LEFT JOIN poin AS prestasi_poin ON rangkuman.idprestasi = presta' +
        'si_poin.idpoin'
      
        'LEFT JOIN poin AS pelanggaran_poin ON rangkuman.idpelanggaran = ' +
        'pelanggaran_poin.idpoin'
      'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel'
      'LEFT JOIN ortu ON semester.idortu = ortu.idortu'
      'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas')
    Params = <>
    Left = 40
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 224
  end
end

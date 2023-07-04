object Form1: TForm1
  Left = 465
  Top = 140
  Width = 404
  Height = 405
  Caption = 'Menu Utama'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 24
    Width = 158
    Height = 19
    Caption = 'Program Data Sekolah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 256
    Width = 76
    Height = 18
    Caption = 'Form Cetak'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 16
    Top = 80
    Width = 97
    Height = 41
    Caption = 'DATA SISWA'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 80
    Width = 113
    Height = 41
    Caption = 'DATA ORANG TUA'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 256
    Top = 80
    Width = 113
    Height = 41
    Caption = 'DATA WALI KELAS'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 160
    Top = 136
    Width = 89
    Height = 41
    Caption = 'DATA KELAS'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 32
    Top = 136
    Width = 113
    Height = 41
    Caption = 'DATA HUBUNGAN'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 264
    Top = 136
    Width = 89
    Height = 41
    Caption = 'DATA POIN'
    TabOrder = 5
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 16
    Top = 192
    Width = 113
    Height = 41
    Caption = 'DATA SEMESTER'
    TabOrder = 6
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 248
    Top = 192
    Width = 121
    Height = 41
    Caption = 'DATA RANGKUMAN'
    TabOrder = 7
    OnClick = btn8Click
  end
  object btn9: TButton
    Left = 144
    Top = 192
    Width = 89
    Height = 41
    Caption = 'DATA USER'
    TabOrder = 8
    OnClick = btn9Click
  end
  object btn10: TButton
    Left = 32
    Top = 288
    Width = 97
    Height = 41
    Caption = 'PRESTASI'
    TabOrder = 9
    OnClick = btn10Click
  end
  object btn11: TButton
    Left = 144
    Top = 288
    Width = 97
    Height = 41
    Caption = 'PELANGGARAN'
    TabOrder = 10
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 256
    Top = 288
    Width = 105
    Height = 41
    Caption = 'RANGKUMAN'
    TabOrder = 11
    OnClick = btn12Click
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 16
    object Data1: TMenuItem
      Caption = 'DATA SEKOLAH'
      object DataSiswa1: TMenuItem
        Caption = 'Data Siswa'
        OnClick = DataSiswa1Click
      end
      object DataOrangTua1: TMenuItem
        Caption = 'Data Orang Tua'
        OnClick = DataOrangTua1Click
      end
      object DataHubungan1: TMenuItem
        Caption = 'Data Hubungan'
        OnClick = DataHubungan1Click
      end
      object DataGuru1: TMenuItem
        Caption = 'Data Wali Kelas'
        OnClick = DataGuru1Click
      end
      object DataKelas1: TMenuItem
        Caption = 'Data Kelas'
        OnClick = DataKelas1Click
      end
      object DataPoin1: TMenuItem
        Caption = 'Data Poin'
        OnClick = DataPoin1Click
      end
      object DataSemester1: TMenuItem
        Caption = 'Data Semester'
        OnClick = DataSemester1Click
      end
      object DataRangkuman1: TMenuItem
        Caption = 'Data Rangkuman'
        OnClick = DataRangkuman1Click
      end
      object Keluar: TMenuItem
        Caption = 'Keluar'
        OnClick = KeluarClick
      end
    end
    object CETAK1: TMenuItem
      Caption = 'CETAK'
      object CetakPrestasi1: TMenuItem
        Caption = 'Cetak Prestasi'
        OnClick = CetakPrestasi1Click
      end
      object CetakPelanggaran1: TMenuItem
        Caption = 'Cetak Pelanggaran'
        OnClick = CetakPelanggaran1Click
      end
      object CetakRangkuman1: TMenuItem
        Caption = 'Cetak Rangkuman'
        OnClick = CetakRangkuman1Click
      end
    end
    object USER1: TMenuItem
      Caption = 'USER'
      object DataUser1: TMenuItem
        Caption = 'Data User'
        OnClick = DataUser1Click
      end
    end
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
    Left = 328
    Top = 8
  end
end

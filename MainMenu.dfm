object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Menu Utama'
  Color = clBtnFace
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
  object MainMenu1: TMainMenu
    Left = 48
    Top = 32
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
      object Keluar: TMenuItem
        Caption = 'Keluar'
        OnClick = KeluarClick
      end
    end
    object CETAK1: TMenuItem
      Caption = 'CETAK'
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
    Left = 120
    Top = 32
  end
end

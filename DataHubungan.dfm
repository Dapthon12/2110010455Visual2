object Form5: TForm5
  Left = 409
  Top = 149
  Width = 583
  Height = 404
  Caption = 'Data Hubungan'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 47
    Height = 13
    Caption = 'ID Siswa*'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 42
    Height = 13
    Caption = 'ID Ortu*'
  end
  object Label8: TLabel
    Left = 16
    Top = 56
    Width = 83
    Height = 13
    Caption = 'Status Hubungan'
  end
  object Label9: TLabel
    Left = 16
    Top = 80
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Label10: TLabel
    Left = 16
    Top = 103
    Width = 56
    Height = 13
    Caption = 'Status Ortu'
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
    Top = 178
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idhub'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idsiswa'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idortu'
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
        FieldName = 'nama'
        Title.Caption = 'nama ortu'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_hub_anak'
        Title.Caption = 'status hubungan'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_ortu'
        Title.Caption = 'status ortu'
        Width = 70
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 136
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 136
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 136
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 136
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 136
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 464
    Top = 136
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 11
    OnClick = btn6Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      
        'SELECT hubungan.idhub, hubungan.idsiswa,  hubungan.idortu, siswa' +
        '.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keter' +
        'angan, hubungan.status_ortu'
      'FROM hubungan'
      'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa'
      'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu')
    Params = <>
    Left = 40
    Top = 216
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 264
  end
end

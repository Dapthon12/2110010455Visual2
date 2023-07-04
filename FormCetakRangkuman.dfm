object Form12: TForm12
  Left = 394
  Top = 155
  Width = 597
  Height = 459
  Caption = 'Form Rangkuman Laporan'
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
    Top = 16
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 65
    Height = 13
    Caption = 'No. NIS/NISN'
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 67
    Height = 13
    Caption = 'Kelas/Jurusan'
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label5: TLabel
    Left = 16
    Top = 144
    Width = 78
    Height = 13
    Caption = 'Nama Wali Kelas'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 105
    Height = 13
    Caption = 'Nama Orang Tua/Wali'
  end
  object Label7: TLabel
    Left = 16
    Top = 208
    Width = 111
    Height = 13
    Caption = 'No. Hp Orang Tua/Wali'
  end
  object edt1: TEdit
    Left = 136
    Top = 16
    Width = 321
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 136
    Top = 48
    Width = 321
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 136
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object cbb1: TComboBox
    Left = 136
    Top = 112
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbb1'
  end
  object edt4: TEdit
    Left = 136
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 4
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 136
    Top = 176
    Width = 321
    Height = 21
    TabOrder = 5
    Text = 'edt5'
  end
  object edt6: TEdit
    Left = 136
    Top = 208
    Width = 321
    Height = 21
    TabOrder = 6
    Text = 'edt6'
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 234
    Width = 561
    Height = 177
    DataSource = DataSource1
    TabOrder = 7
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
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idsemester'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'idsiswa'
        Width = 40
        Visible = True
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
        Title.Caption = 'bobot pelanggaran'
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
    Left = 464
    Top = 192
    Width = 105
    Height = 33
    Caption = 'CETAK'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 464
    Top = 48
    Width = 105
    Height = 33
    Caption = 'DATA SEMESTER'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 464
    Top = 96
    Width = 105
    Height = 33
    Caption = 'DATA RANGKUMAN'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 464
    Top = 144
    Width = 105
    Height = 33
    Caption = 'REFRESH DATA'
    TabOrder = 11
    OnClick = btn4Click
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
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 336
  end
  object frxDBrangkuman: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 128
    Top = 280
  end
  object frxrangkuman: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45105.847449016200000000
    ReportOptions.LastChange = 45111.493112939820000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 136
    Top = 336
    Datasets = <
      item
        DataSet = frxDBrangkuman
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 219.212740000000000000
          Top = 11.338590000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN INFORMASI KESISWAAN')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 260.787570000000000000
          Top = 37.795300000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'MA SMIP BANJARMASIN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 404.409710000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 37.795300000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bulan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tahun Pelajaran')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 105.826840000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Siswa')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 37.795300000000000000
          Top = 132.283550000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. NIS/NISN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 37.795300000000000000
          Top = 158.740260000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kelas/Jurusan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 37.795300000000000000
          Top = 185.196970000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jenis Kelamin')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 37.795300000000000000
          Top = 211.653680000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Wali Kelas')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 37.795300000000000000
          Top = 238.110390000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Orang Tua/Wali')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 37.795300000000000000
          Top = 264.567100000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No Hp Orang Tua/Wali')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 200.315090000000000000
          Top = 105.826840000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 200.315090000000000000
          Top = 132.283550000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 200.315090000000000000
          Top = 30.236240000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 200.315090000000000000
          Top = 56.692950000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 200.315090000000000000
          Top = 158.740260000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 200.315090000000000000
          Top = 185.196970000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 200.315090000000000000
          Top = 211.653680000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 200.315090000000000000
          Top = 238.110390000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 200.315090000000000000
          Top = 264.567100000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : ')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 234.330860000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'mmmm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 34.015770000000000000
          Top = 328.819110000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 71.811070000000000000
          Top = 328.819110000000000000
          Width = 226.771800000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Pelanggaran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 495.118430000000000000
          Top = 328.819110000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Point')
          ParentFont = False
        end
        object Date1: TfrxMemoView
          Left = 234.330860000000000000
          Top = 56.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 34.015770000000000000
          Top = 366.614410000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object frxDBDataset1nama_siswa: TfrxMemoView
          Left = 234.330860000000000000
          Top = 105.826840000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_siswa"]')
        end
        object frxDBDataset1nis: TfrxMemoView
          Left = 234.330860000000000000
          Top = 132.283550000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
        end
        object frxDBDataset1jk: TfrxMemoView
          Left = 234.330860000000000000
          Top = 185.196970000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
        end
        object frxDBDataset1nama_1: TfrxMemoView
          Left = 234.330860000000000000
          Top = 211.653680000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_1'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_1"]')
        end
        object frxDBDataset1nama: TfrxMemoView
          Left = 234.330860000000000000
          Top = 158.740260000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
        end
        object frxDBDataset1nama_2: TfrxMemoView
          Left = 234.330860000000000000
          Top = 238.110390000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_2'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_2"]')
        end
        object frxDBDataset1telp: TfrxMemoView
          Left = 234.330860000000000000
          Top = 264.567100000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
        end
        object frxDBDataset1nama_pelanggaran: TfrxMemoView
          Left = 71.811070000000000000
          Top = 366.614410000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_pelanggaran'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama_pelanggaran"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 298.582870000000000000
          Top = 328.819110000000000000
          Width = 196.535560000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Prestasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nama_prestasi: TfrxMemoView
          Left = 298.582870000000000000
          Top = 366.614410000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_prestasi'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama_prestasi"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 495.118430000000000000
          Top = 347.716760000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pelanggaran')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 582.047620000000000000
          Top = 347.716760000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Prestasi')
          ParentFont = False
        end
        object frxDBDataset1bobot_prestasi: TfrxMemoView
          Left = 582.047620000000000000
          Top = 366.614410000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot_prestasi'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."bobot_prestasi"]')
          ParentFont = False
        end
        object frxDBDataset1bobot_pelanggaran: TfrxMemoView
          Left = 495.118430000000000000
          Top = 366.614410000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot_pelanggaran'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."bobot_pelanggaran"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 34.015770000000000000
          Top = 385.512060000000000000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Point')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 495.118430000000000000
          Top = 385.512060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot_pelanggaran'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."bobot_pelanggaran"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 582.047620000000000000
          Top = 385.512060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'bobot_prestasi'
          DataSet = frxDBrangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."bobot_prestasi"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 306.141930000000000000
        Top = 585.827150000000000000
        Width = 718.110700000000000000
        object Memo25: TfrxMemoView
          Left = 461.102660000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Banjarmasin, ...................................')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 30.236240000000000000
          Top = 45.354360000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Orang Tua Siswa/i')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 529.134200000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Wali Kelas')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 272.126160000000000000
          Top = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Mengetahui'
            'Kepala Madrasah,')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 22.677180000000000000
          Top = 143.622140000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '...........................')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 263.102350000000000000
          Top = 241.684600000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '...........................')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 480.000310000000000000
          Top = 143.622140000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '...........................')
          ParentFont = False
        end
      end
    end
  end
end

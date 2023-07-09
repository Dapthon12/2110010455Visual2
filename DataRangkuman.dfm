object Form13: TForm13
  Left = 387
  Top = 197
  Width = 659
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
    Width = 609
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
    Left = 552
    Top = 96
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 9
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 464
    Top = 96
    Width = 75
    Height = 33
    Caption = 'CETAK'
    TabOrder = 10
    OnClick = btn7Click
  end
  object ZQuery1: TZQuery
    Connection = Form14.ZConnection1
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
  object frxDBDataRangkuman: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 576
  end
  object frxDataRangkuman: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45116.413552569400000000
    ReportOptions.LastChange = 45116.487773761580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDataRangkuman
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo13: TfrxMemoView
          Left = 200.315090000000000000
          Top = 11.338590000000000000
          Width = 343.937230000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA RANGKUMAN SISWA MA SMIP BANJARMASIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 75.590600000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataRangkuman
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 30.236240000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nama_siswa: TfrxMemoView
          Left = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_siswa"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nik: TfrxMemoView
          Left = 113.385900000000000000
          Width = 41.574830000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 260.787570000000000000
          Width = 98.267780000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nama_1'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 457.323130000000000000
          Width = 86.929190000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 359.055350000000000000
          Width = 98.267780000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nama_2'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 185.196970000000000000
          Width = 75.590600000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 544.252320000000000000
          Width = 83.149660000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nama_prestasi'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_prestasi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Width = 30.236240000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 627.401980000000000000
          Width = 109.606370000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'nama_pelanggaran'
          DataSet = frxDBDataRangkuman
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama_pelanggaran"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 30.236240000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 260.787570000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'WALI KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 185.196970000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 30.236240000000000000
          Width = 83.149660000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA SISWA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 113.385900000000000000
          Width = 41.574830000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 457.323130000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NO. HP ORANG TUA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 359.055350000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ORANG TUA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 544.252320000000000000
          Width = 83.149660000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PRESTASI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 154.960730000000000000
          Width = 30.236240000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 627.401980000000000000
          Width = 109.606370000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PELANGGARAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end

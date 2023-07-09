object Form2: TForm2
  Left = 361
  Top = 107
  Width = 660
  Height = 550
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
    Top = 328
    Width = 609
    Height = 169
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
        Width = 39
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
        Title.Caption = 'nama siswa'
        Width = 100
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
        Title.Caption = 'tempat lahir'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_lahir'
        Title.Caption = 'tanggal lahir'
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
        Width = 255
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
    Left = 552
    Top = 280
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 16
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 464
    Top = 280
    Width = 75
    Height = 33
    Caption = 'CETAK'
    TabOrder = 18
    OnClick = btn7Click
  end
  object ZQuery1: TZQuery
    Connection = Form14.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 576
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 576
    Top = 72
  end
  object frxDBDataSiswa: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 576
    Top = 128
  end
  object frxDataSiswa: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45116.413552569400000000
    ReportOptions.LastChange = 45116.447433564800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 176
    Datasets = <
      item
        DataSet = frxDBDataSiswa
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
            'DATA SISWA MA SMIP BANJARMASIN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 41.574830000000000000
        Top = 219.212740000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataSiswa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 30.236240000000000000
          Height = 41.574830000000000000
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
        object frxDBDataset1nis: TfrxMemoView
          Left = 30.236240000000000000
          Width = 45.354360000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxDBDataSiswa
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
        object Memo7: TfrxMemoView
          Left = 75.590600000000000000
          Width = 56.692950000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataSet = frxDBDataSiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nisn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1nama_siswa: TfrxMemoView
          Left = 132.283550000000000000
          Width = 113.385900000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'nama_siswa'
          DataSet = frxDBDataSiswa
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
          Left = 245.669450000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxDBDataSiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 321.260050000000000000
          Width = 86.929190000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'tempat_lahir'
          DataSet = frxDBDataSiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tempat_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 408.189240000000000000
          Width = 71.811070000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
          DataSet = frxDBDataSiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 480.000310000000000000
          Width = 30.236240000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxDBDataSiswa
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
        object Memo17: TfrxMemoView
          Left = 510.236550000000000000
          Width = 90.708720000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBDataSiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 600.945270000000000000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxDBDataSiswa
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
        object Memo20: TfrxMemoView
          Left = 668.976810000000000000
          Width = 71.811070000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DataField = 'hp'
          DataSet = frxDBDataSiswa
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."hp"]')
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
        object Memo2: TfrxMemoView
          Left = 30.236240000000000000
          Width = 45.354360000000000000
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
        object Memo3: TfrxMemoView
          Left = 75.590600000000000000
          Width = 56.692950000000000000
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
            'NISN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 600.945270000000000000
          Width = 68.031540000000000000
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
            'TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Width = 71.811070000000000000
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
            'TANGGAL LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 132.283550000000000000
          Width = 113.385900000000000000
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
          Left = 245.669450000000000000
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
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 321.260050000000000000
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
            'TEMPAT LAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 480.000310000000000000
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
        object Memo16: TfrxMemoView
          Left = 510.236550000000000000
          Width = 90.708720000000000000
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
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 668.976810000000000000
          Width = 71.811070000000000000
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
            'NO. HP')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end

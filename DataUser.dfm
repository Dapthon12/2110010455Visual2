object Form8: TForm8
  Left = 359
  Top = 173
  Width = 584
  Height = 381
  Caption = 'Data User'
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
    Left = 16
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label8: TLabel
    Left = 16
    Top = 56
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label9: TLabel
    Left = 16
    Top = 80
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
  object dbgrd1: TDBGrid
    Left = 16
    Top = 154
    Width = 537
    Height = 177
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'iduser'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'username'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created_at'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'created_userid'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'updated_at'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'updated_userid'
        Visible = False
      end>
  end
  object btn1: TButton
    Left = 24
    Top = 112
    Width = 75
    Height = 33
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 112
    Width = 75
    Height = 33
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 112
    Width = 75
    Height = 33
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 112
    Width = 75
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 112
    Width = 75
    Height = 33
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 464
    Top = 112
    Width = 75
    Height = 33
    Caption = 'KEMBALI'
    TabOrder = 10
    OnClick = btn6Click
  end
  object ZQuery1: TZQuery
    Connection = Form1.ZConnection1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 40
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 40
    Top = 240
  end
end

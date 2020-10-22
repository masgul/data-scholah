object Form1: TForm1
  Left = 419
  Top = 121
  Width = 752
  Height = 575
  Caption = 'Form1'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NAMA: TLabel
    Left = 24
    Top = 152
    Width = 36
    Height = 13
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 184
    Width = 40
    Height = 13
    Caption = 'KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 216
    Width = 55
    Height = 13
    Caption = 'KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 248
    Width = 33
    Height = 13
    Caption = 'NILAI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 120
    Width = 23
    Height = 13
    Caption = 'NO.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 48
    Width = 351
    Height = 42
    Caption = 'DATA NILAI SISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -35
    Font.Name = 'Swis721 Blk BT'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 72
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 496
    Top = 432
    Width = 73
    Height = 25
    Caption = 'EDIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'News706 BT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 496
    Top = 464
    Width = 241
    Height = 41
    Caption = 'SIMPAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'News706 BT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 392
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 64
    Top = 320
    Width = 417
    Height = 169
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button4: TButton
    Left = 496
    Top = 152
    Width = 137
    Height = 65
    Caption = 'KELUAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 576
    Top = 432
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'News706 BT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button5Click
  end
  object Edit4: TEdit
    Left = 72
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object DBNavigator1: TDBNavigator
    Left = 120
    Top = 488
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 152
    Top = 296
    Width = 313
    Height = 21
    TabOrder = 10
  end
  object GroupBox1: TGroupBox
    Left = 496
    Top = 320
    Width = 145
    Height = 97
    Caption = 'URUTKAN NILAI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    object Button7: TButton
      Left = 24
      Top = 24
      Width = 97
      Height = 49
      Caption = 'ASCENDING'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Swis721 Hv BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button7Click
    end
  end
  object Edit6: TEdit
    Left = 72
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Button6: TButton
    Left = 656
    Top = 432
    Width = 75
    Height = 25
    Caption = 'CANCEL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'News706 BT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = Button6Click
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 216
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\LELAH K\CAPEK.md' +
      'b;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 464
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Y'
    Left = 504
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 544
    Top = 24
  end
end

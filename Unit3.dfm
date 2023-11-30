object Form3: TForm3
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 56
    Top = 80
    Width = 61
    Height = 13
    Caption = 'Nama Pasien'
  end
  object lbl3: TLabel
    Left = 56
    Top = 120
    Width = 112
    Height = 13
    Caption = 'Nomor RegistrasiPasien'
  end
  object lbl4: TLabel
    Left = 416
    Top = 40
    Width = 403
    Height = 23
    Caption = 'DATABASE PASIEN PUSKESMAS SUNGAI TABUK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dg1: TDBGrid
    Left = 40
    Top = 240
    Width = 849
    Height = 169
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cbb1: TComboBox
    Left = 48
    Top = 192
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'cbb1'
  end
  object Edit1: TEdit
    Left = 216
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object btn1: TButton
    Left = 688
    Top = 144
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 3
  end
  object btn2: TButton
    Left = 688
    Top = 192
    Width = 75
    Height = 25
    Caption = 'btn2'
    TabOrder = 4
  end
  object btn3: TButton
    Left = 800
    Top = 144
    Width = 75
    Height = 25
    Caption = 'btn3'
    TabOrder = 5
  end
  object btn4: TButton
    Left = 800
    Top = 192
    Width = 75
    Height = 25
    Caption = 'btn4'
    TabOrder = 6
  end
  object grp1: TGroupBox
    Left = 424
    Top = 112
    Width = 185
    Height = 105
    Caption = 'Saran'
    TabOrder = 7
    object lbl1: TLabel
      Left = 64
      Top = 48
      Width = 16
      Height = 13
      Caption = 'lbl1'
    end
  end
  object Edit2: TEdit
    Left = 248
    Top = 72
    Width = 105
    Height = 21
    TabOrder = 8
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 248
    Top = 112
    Width = 105
    Height = 21
    TabOrder = 9
    Text = 'Edit2'
  end
  object zqry1: TZQuery
    Params = <>
    Left = 16
    Top = 8
  end
  object tbl1: TTable
    Left = 56
    Top = 8
  end
  object ds1: TDataSource
    Left = 96
    Top = 8
  end
end

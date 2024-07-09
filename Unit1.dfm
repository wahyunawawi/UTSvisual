object Form1: TForm1
  Left = 341
  Top = 168
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 96
    Width = 35
    Height = 16
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 128
    Width = 53
    Height = 16
    Caption = 'Diskripsi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 64
    Width = 513
    Height = 16
    Caption = 
      'Nama : Muhammad wahyu (2210010101) - Ulangan Tengah Semester Vis' +
      'ual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Enama: TEdit
    Left = 112
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edis: TEdit
    Left = 112
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Bsimpan: TButton
    Left = 232
    Top = 168
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = BsimpanClick
  end
  object Bedit: TButton
    Left = 320
    Top = 168
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = BeditClick
  end
  object Bhapus: TButton
    Left = 416
    Top = 168
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = BhapusClick
  end
  object Bbatal: TButton
    Left = 504
    Top = 168
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = BbatalClick
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 208
    Width = 977
    Height = 209
    DataSource = DataModule2.DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end

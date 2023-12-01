object Form1: TForm1
  Left = 262
  Top = 214
  Width = 1046
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 320
    Top = 104
    Width = 489
    Height = 249
    Caption = 'grp1'
    TabOrder = 0
    object lbl1: TLabel
      Left = 136
      Top = 104
      Width = 52
      Height = 13
      Caption = 'User Name'
    end
    object lbl2: TLabel
      Left = 136
      Top = 144
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object edt1: TEdit
      Left = 208
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 208
      Top = 144
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btn1: TButton
      Left = 184
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object Menu: TMainMenu
    Left = 32
    Top = 24
    object FormBarang1: TMenuItem
      Caption = 'Form Barang'
      Visible = False
      OnClick = FormBarang1Click
    end
    object FormKonsumen1: TMenuItem
      Caption = 'Form Konsumen'
      Visible = False
      OnClick = FormKonsumen1Click
    end
    object FormPendataanPenjualan1: TMenuItem
      Caption = 'Form Pendataan Penjualan'
      Visible = False
      OnClick = FormPendataanPenjualan1Click
    end
    object FormPendataanUpdatestock1: TMenuItem
      Caption = 'Form Pendataan Update stock'
      Visible = False
      OnClick = FormPendataanUpdatestock1Click
    end
    object FormCetakLaporan1: TMenuItem
      Caption = 'Form Laporan Pengiriman'
      Visible = False
      OnClick = FormCetakLaporan1Click
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      Visible = False
      OnClick = Logout1Click
    end
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 488
    Top = 144
  end
  object zqry1: TZQuery
    Params = <>
    Left = 592
    Top = 136
  end
end

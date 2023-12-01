object Form5: TForm5
  Left = 275
  Top = 177
  Width = 1044
  Height = 540
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 32
    Top = 24
    Width = 53
    Height = 13
    Caption = 'No Kuitansi'
  end
  object lbl2: TLabel
    Left = 32
    Top = 56
    Width = 88
    Height = 13
    Caption = 'Tanggal Penjualan'
  end
  object lbl3: TLabel
    Left = 40
    Top = 152
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object lbl4: TLabel
    Left = 120
    Top = 152
    Width = 78
    Height = 13
    Caption = 'Nama Sparepart'
  end
  object lbl5: TLabel
    Left = 216
    Top = 152
    Width = 49
    Height = 13
    Caption = 'Spesifikasi'
  end
  object lbl8: TLabel
    Left = 432
    Top = 152
    Width = 26
    Height = 13
    Caption = 'Stock'
  end
  object lbl9: TLabel
    Left = 536
    Top = 152
    Width = 35
    Height = 13
    Caption = 'Update'
  end
  object lbl6: TLabel
    Left = 336
    Top = 152
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object edt3: TEdit
    Left = 40
    Top = 176
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object edt4: TEdit
    Left = 120
    Top = 176
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object edt5: TEdit
    Left = 216
    Top = 176
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object edt1: TEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt2: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn1: TButton
    Left = 616
    Top = 160
    Width = 75
    Height = 41
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn1Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 216
    Width = 769
    Height = 201
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn2: TButton
    Left = 32
    Top = 440
    Width = 75
    Height = 41
    Caption = 'Edit'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 128
    Top = 440
    Width = 105
    Height = 41
    Caption = 'Hapus'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 720
    Top = 440
    Width = 75
    Height = 41
    Caption = 'Cetak'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 248
    Top = 440
    Width = 75
    Height = 41
    Caption = 'Clear'
    TabOrder = 10
    OnClick = btn5Click
  end
  object edt6: TEdit
    Left = 328
    Top = 176
    Width = 81
    Height = 21
    TabOrder = 11
    Text = 'edt6'
  end
  object edt7: TEdit
    Left = 432
    Top = 176
    Width = 81
    Height = 21
    TabOrder = 12
  end
  object edt8: TEdit
    Left = 536
    Top = 176
    Width = 73
    Height = 21
    TabOrder = 13
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan_alatberat'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
    Left = 672
    Top = 24
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM `update_stock`')
    Params = <>
    Left = 672
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 728
    Top = 88
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.696433773100000000
    ReportOptions.LastChange = 45261.715992928240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 40
    Datasets = <
      item
        DataSet = frxdbdtst1
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
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 241.889920000000000000
          Top = 22.677180000000000000
          Width = 272.126160000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -32
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Laporan Stock')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1nama_sparepart: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sparepart'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."nama_sparepart"]')
          ParentFont = False
        end
        object frxDBDataset1spesifikasi: TfrxMemoView
          Left = 196.535560000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'spesifikasi'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."spesifikasi"]')
          ParentFont = False
        end
        object frxDBDataset1stock: TfrxMemoView
          Left = 381.732530000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'stock'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."stock"]')
          ParentFont = False
        end
        object frxDBDataset1kode_barang: TfrxMemoView
          Left = 574.488560000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kode_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."kode_barang"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 45.354360000000000000
        Top = 170.078850000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama_Sparepart')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 196.535560000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Spesifikasi')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Stock')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 574.488560000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kode_barang')
          ParentFont = False
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 728
    Top = 152
  end
end

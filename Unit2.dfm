object Form2: TForm2
  Left = 412
  Top = 220
  Width = 1044
  Height = 519
  Caption = 'Form2'
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
    Left = 56
    Top = 32
    Width = 75
    Height = 13
    Caption = 'Kode Sparepart'
  end
  object lbl2: TLabel
    Left = 56
    Top = 64
    Width = 78
    Height = 13
    Caption = 'Nama Sparepart'
  end
  object lbl3: TLabel
    Left = 56
    Top = 96
    Width = 49
    Height = 13
    Caption = 'Spesifikasi'
  end
  object lbl4: TLabel
    Left = 56
    Top = 168
    Width = 66
    Height = 13
    Caption = 'Harga Satuan'
  end
  object lbl5: TLabel
    Left = 56
    Top = 200
    Width = 26
    Height = 13
    Caption = 'Stock'
  end
  object edt1: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 152
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 152
    Top = 96
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 152
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object btn2: TButton
    Left = 48
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 152
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 256
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 360
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 320
    Width = 465
    Height = 153
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt5: TEdit
    Left = 152
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object btn1: TButton
    Left = 456
    Top = 280
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 10
    OnClick = btn1Click
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
      'SELECT * FROM `barang`')
    Params = <>
    Left = 672
    Top = 88
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 672
    Top = 152
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.601751608800000000
    ReportOptions.LastChange = 45261.717237847220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 216
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
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 162.519790000000000000
          Top = 18.897650000000000000
          Width = 423.307360000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DAFTAR BARANG - ALAT BERAT')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Kode Sparepart')
        end
        object Memo3: TfrxMemoView
          Left = 166.299320000000000000
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Nama Sparepart')
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Spesifikasi')
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Harga Satuan')
        end
        object Memo6: TfrxMemoView
          Left = 638.740570000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Stock')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1kode_sparepart: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kode_sparepart'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."kode_sparepart"]')
        end
        object frxDBDataset1nama_sparepart: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_sparepart'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_sparepart"]')
        end
        object frxDBDataset1spesifikasi: TfrxMemoView
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'spesifikasi'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."spesifikasi"]')
        end
        object frxDBDataset1harga_satuan: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga_satuan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."harga_satuan"]')
        end
        object frxDBDataset1stock: TfrxMemoView
          Left = 638.740570000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'stock'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."stock"]')
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 672
    Top = 272
  end
end

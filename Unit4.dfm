object Form4: TForm4
  Left = 186
  Top = 193
  Width = 1078
  Height = 540
  Caption = 'Form4'
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
    Top = 16
    Width = 53
    Height = 13
    Caption = 'No Kuitansi'
  end
  object lbl2: TLabel
    Left = 32
    Top = 48
    Width = 88
    Height = 13
    Caption = 'Tanggal Penjualan'
  end
  object lbl3: TLabel
    Left = 360
    Top = 16
    Width = 62
    Height = 13
    Caption = 'Id Konsumen'
  end
  object lbl4: TLabel
    Left = 360
    Top = 48
    Width = 79
    Height = 13
    Caption = 'Nama Konsumen'
  end
  object lbl5: TLabel
    Left = 32
    Top = 120
    Width = 61
    Height = 13
    Caption = 'Kode Barang'
  end
  object lbl6: TLabel
    Left = 112
    Top = 120
    Width = 78
    Height = 13
    Caption = 'Nama Sparepart'
  end
  object lbl7: TLabel
    Left = 208
    Top = 120
    Width = 49
    Height = 13
    Caption = 'Spesifikasi'
  end
  object lbl8: TLabel
    Left = 320
    Top = 120
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object lbl9: TLabel
    Left = 416
    Top = 120
    Width = 34
    Height = 13
    Caption = 'Satuan'
  end
  object lbl10: TLabel
    Left = 512
    Top = 120
    Width = 26
    Height = 13
    Caption = 'Stock'
  end
  object lbl11: TLabel
    Left = 560
    Top = 120
    Width = 55
    Height = 13
    Caption = 'Jumlah Jual'
  end
  object lbl12: TLabel
    Left = 640
    Top = 120
    Width = 68
    Height = 13
    Caption = 'Jumlah_Harga'
  end
  object edt1: TEdit
    Left = 136
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 464
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 464
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 32
    Top = 144
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 112
    Top = 144
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 208
    Top = 144
    Width = 97
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 320
    Top = 144
    Width = 81
    Height = 21
    TabOrder = 7
  end
  object edt9: TEdit
    Left = 416
    Top = 144
    Width = 81
    Height = 21
    TabOrder = 8
  end
  object edt10: TEdit
    Left = 512
    Top = 144
    Width = 33
    Height = 21
    TabOrder = 9
  end
  object edt11: TEdit
    Left = 560
    Top = 144
    Width = 65
    Height = 21
    TabOrder = 10
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 184
    Width = 777
    Height = 217
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 752
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 12
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 32
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 13
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 136
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 14
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 720
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 15
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 240
    Top = 440
    Width = 75
    Height = 25
    Caption = 'clear'
    TabOrder = 16
    OnClick = btn5Click
  end
  object edt12: TEdit
    Left = 640
    Top = 144
    Width = 65
    Height = 21
    TabOrder = 17
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
      'SELECT * FROM `pendataan_penjualan`')
    Params = <>
    Left = 720
    Top = 24
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 768
    Top = 24
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_kuitansi=no_kuitansi'
      'tanggal_penjualan=tanggal_penjualan'
      'id_konsumer=id_konsumer'
      'nama_konsumer=nama_konsumer'
      'kode_barang=kode_barang'
      'nama_barang=nama_barang'
      'spesifikasi=spesifikasi'
      'harga=harga'
      'satuan=satuan'
      'stock=stock'
      'jumlah_jual=jumlah_jual'
      'jumlah_harga=jumlah_harga')
    DataSource = ds1
    BCDToCurrency = False
    Left = 720
    Top = 80
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.439982025500000000
    ReportOptions.LastChange = 45261.716450995370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 80
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 988.000000000000000000
      Left = 4.000000000000000000
      Top = 12.000000000000000000
      Width = 996.000000000000000000
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
        object Memo1: TfrxMemoView
          Left = 215.433210000000000000
          Top = 18.897650000000000000
          Width = 279.685220000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Laporan Penjualan')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 45.354360000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_konsumer: TfrxMemoView
          Left = 18.897650000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_konsumer'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."id_konsumer"]')
          ParentFont = False
        end
        object frxDBDataset1nama_konsumer: TfrxMemoView
          Left = 113.385900000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."nama_konsumer"]')
          ParentFont = False
        end
        object frxDBDataset1kode_barang: TfrxMemoView
          Left = 249.448980000000000000
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
        object frxDBDataset1harga: TfrxMemoView
          Left = 389.291590000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'harga'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."harga"]')
          ParentFont = False
        end
        object frxDBDataset1jumlah_jual: TfrxMemoView
          Left = 506.457020000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah_jual'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_jual"]')
          ParentFont = False
        end
        object frxDBDataset1jumlah_harga: TfrxMemoView
          Left = 612.283860000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah_harga'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_harga"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Id Konsumer')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Konsumer')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kode Barang')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jumlah Jual')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 612.283860000000000000
          Top = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jumlah Harga')
          ParentFont = False
        end
      end
    end
  end
end

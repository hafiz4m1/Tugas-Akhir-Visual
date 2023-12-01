object Form6: TForm6
  Left = 333
  Top = 239
  Width = 1044
  Height = 540
  Caption = 'Form6'
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
    Left = 40
    Top = 32
    Width = 69
    Height = 13
    Caption = 'Tanggal Cetak'
  end
  object lbl2: TLabel
    Left = 40
    Top = 72
    Width = 79
    Height = 13
    Caption = 'Nama Pengawas'
  end
  object lbl3: TLabel
    Left = 40
    Top = 112
    Width = 78
    Height = 13
    Caption = 'No Unit Pengirim'
  end
  object lbl4: TLabel
    Left = 40
    Top = 152
    Width = 57
    Height = 13
    Caption = 'Tangal Kirim'
  end
  object edt1: TEdit
    Left = 128
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 128
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 128
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object dbgrd1: TDBGrid
    Left = 288
    Top = 32
    Width = 320
    Height = 120
    DataSource = ds1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 40
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 368
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 592
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 144
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 8
    OnClick = btn5Click
  end
  object edt4: TEdit
    Left = 128
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 9
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
      'SELECT * FROM `laporan_pengiriman`')
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
    ReportOptions.CreateDate = 45261.704702835600000000
    ReportOptions.LastChange = 45261.715192777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 728
    Top = 24
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
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 249.448980000000000000
          Top = 18.897650000000000000
          Width = 245.669450000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Laporan Pengiriman')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Top = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal Kirim')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 264.567100000000000000
          Top = 15.118120000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Pengawas')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 525.354670000000000000
          Top = 15.118120000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No Unit Pengirim')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 75.590600000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1tanggal_kirim: TfrxMemoView
          Left = 37.795300000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal_kirim'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_kirim"]')
          ParentFont = False
        end
        object frxDBDataset1nama_pengawas: TfrxMemoView
          Left = 260.787570000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_pengawas'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."nama_pengawas"]')
          ParentFont = False
        end
        object frxDBDataset1no_unit_pengirim: TfrxMemoView
          Left = 525.354670000000000000
          Top = 26.456710000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_unit_pengirim'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."no_unit_pengirim"]')
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
    Left = 784
    Top = 24
  end
end

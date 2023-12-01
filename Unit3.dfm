object Form3: TForm3
  Left = 205
  Top = 313
  Width = 1044
  Height = 540
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
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 63
    Height = 13
    Caption = 'ID Konsumen'
  end
  object lbl2: TLabel
    Left = 56
    Top = 64
    Width = 87
    Height = 13
    Caption = 'Nama Perusahaan'
  end
  object lbl3: TLabel
    Left = 56
    Top = 96
    Width = 61
    Height = 13
    Caption = 'Nama Pemilik'
  end
  object lbl4: TLabel
    Left = 56
    Top = 136
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object lbl5: TLabel
    Left = 56
    Top = 176
    Width = 38
    Height = 13
    Caption = 'Telepon'
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
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 152
    Top = 96
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 152
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 152
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btn2: TButton
    Left = 64
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 168
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Ubah'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 272
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 296
    Width = 585
    Height = 161
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 480
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn5: TButton
    Left = 368
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 10
    OnClick = btn5Click
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
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'SELECT * FROM `konsumen`')
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
    ReportOptions.CreateDate = 45260.842436956000000000
    ReportOptions.LastChange = 45261.716810567130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 208
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
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 11.338590000000000000
          Width = 317.480520000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Laporan Konsumen')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 52.913420000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_konsumen: TfrxMemoView
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_konsumen'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."id_konsumen"]')
        end
        object frxDBDataset1alamat: TfrxMemoView
          Left = 393.071120000000000000
          Top = 18.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
        end
        object frxDBDataset1telepon: TfrxMemoView
          Left = 566.929500000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telepon'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."telepon"]')
        end
        object frxDBDataset1nama_perusahaan: TfrxMemoView
          Left = 90.708720000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_perusahaan'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_perusahaan"]')
        end
        object frxDBDataset1nama_pemilik: TfrxMemoView
          Left = 268.346630000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama_pemilik'
          DataSet = frxdbdtst1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8 = (
            '[frxDBDataset1."nama_pemilik"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 79.370130000000000000
        Top = 117.165430000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID')
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'nama_perusahaan')
        end
        object Memo4: TfrxMemoView
          Left = 268.346630000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Nama')
        end
        object Memo5: TfrxMemoView
          Left = 393.071120000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Alamat')
        end
        object Memo6: TfrxMemoView
          Left = 563.149970000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'No Telp')
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 680
    Top = 272
  end
end

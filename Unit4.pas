unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    edt11: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl12: TLabel;
    edt12: TEdit;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm4.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into pendataan_penjualan values("'+edt1.Text+'",  "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'", "'+edt6.Text+'", "'+edt7.Text+'", "'+edt8.Text+'", "'+edt9.Text+'", "'+edt10.Text+'", "'+edt11.Text+'", "'+edt12.Text+'" )');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pendataan_penjualan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('no_kuitansi').Text := edt1.Text;
  zqry1.FieldByName('tanggal_penjualan').Text := edt2.Text;
  zqry1.FieldByName('id_konsumer').Text := edt3.Text;
  zqry1.FieldByName('nama_konsumer').Text := edt4.Text;
  zqry1.FieldByName('kode_barang').Text := edt5.Text;
  zqry1.FieldByName('nama_sparepart').Text := edt6.Text;
  zqry1.FieldByName('spesifikasi').Text := edt7.Text;
  zqry1.FieldByName('harga').Text := edt8.Text;
  zqry1.FieldByName('satuan').Text := edt9.Text;
  zqry1.FieldByName('stock').Text := edt10.Text;
  zqry1.FieldByName('jumlah_jual').Text := edt11.Text;
  zqry1.FieldByName('jumlah_harga').Text := edt12.Text;
  zqry1.Post;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:=zqry1.Fields[0].AsString;
  edt2.Text:=zqry1.Fields[1].AsString;
  edt3.Text:=zqry1.Fields[2].AsString;
  edt4.Text:=zqry1.Fields[3].AsString;
  edt5.Text:=zqry1.Fields[4].AsString;
  edt6.Text:=zqry1.Fields[5].AsString;
  edt7.Text:=zqry1.Fields[6].AsString;
  edt8.Text:=zqry1.Fields[7].AsString;
  edt9.Text:=zqry1.Fields[8].AsString;
  edt10.Text:=zqry1.Fields[9].AsString;
  edt11.Text:=zqry1.Fields[10].AsString;
  edt12.Text:=zqry1.Fields[11].AsString;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
  edt9.Clear;
  edt10.Clear;
  edt11.Clear;
  edt12.Clear;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

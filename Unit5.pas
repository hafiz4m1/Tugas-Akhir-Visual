unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet;

type
  TForm5 = class(TForm)
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt1: TEdit;
    lbl1: TLabel;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    edt2: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    btn1: TButton;
    dbgrd1: TDBGrid;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl6: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into update_stock values("'+edt1.Text+'",  "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'", "'+edt6.Text+'", "'+edt7.Text+'", "'+edt8.Text+'" )');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from update_stock');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('no_kuitansi').Text := edt1.Text;
  zqry1.FieldByName('tanggal_penjualan').Text := edt2.Text;
  zqry1.FieldByName('kode_barang').Text := edt3.Text;
  zqry1.FieldByName('nama_sparepart').Text := edt4.Text;
  zqry1.FieldByName('spesifikasi').Text := edt5.Text;
  zqry1.FieldByName('harga').Text := edt6.Text;
  zqry1.FieldByName('stock').Text := edt7.Text;
  zqry1.FieldByName('update').Text := edt8.Text;
  zqry1.Post;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
  edt6.Clear;
  edt7.Clear;
  edt8.Clear;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

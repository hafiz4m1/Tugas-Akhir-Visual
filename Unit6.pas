unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    edt3: TEdit;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    lbl4: TLabel;
    edt4: TEdit;
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
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into laporan_pengiriman values("'+edt1.Text+'",  "'+edt2.Text+'", "'+edt3.Text+'" , "'+edt4.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from laporan_pengiriman');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('tanggal_cetak').Text := edt1.Text;
  zqry1.FieldByName('nama_pengawas').Text := edt2.Text;
  zqry1.FieldByName('no_unit_pengirim').Text := edt3.Text;
  zqry1.FieldByName('tanggal_kirim').Text := edt4.Text;
zqry1.Post;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

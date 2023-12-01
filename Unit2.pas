unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    lbl5: TLabel;
    edt5: TEdit;
    btn1: TButton;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into barang values("'+edt1.Text+'", "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'" )');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from barang');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
zqry1.Edit;
  zqry1.FieldByName('kode_sparepart').Text := edt1.Text;
  zqry1.FieldByName('nama_sparepart').Text := edt2.Text;
  zqry1.FieldByName('spesifikasi').Text := edt3.Text;
  zqry1.FieldByName('harga_satuan').Text := edt4.Text;
  zqry1.FieldByName('stock').Text := edt5.Text;
zqry1.Post;

end;
procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:=zqry1.Fields[0].AsString;
  edt2.Text:=zqry1.Fields[1].AsString;
  edt3.Text:=zqry1.Fields[2].AsString;
  edt4.Text:=zqry1.Fields[3].AsString;
  edt5.Text:=zqry1.Fields[4].AsString;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

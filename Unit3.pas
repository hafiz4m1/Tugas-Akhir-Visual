unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    btn1: TButton;
    btn5: TButton;
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
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn2Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into konsumen values("'+edt1.Text+'",  "'+edt2.Text+'", "'+edt3.Text+'", "'+edt4.Text+'", "'+edt5.Text+'" )');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from konsumen');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('id_konsumen').Text := edt1.Text;
  zqry1.FieldByName('nama_perusahaan').Text := edt2.Text;
  zqry1.FieldByName('nama_pemilik').Text := edt3.Text;
  zqry1.FieldByName('alamat').Text := edt4.Text;
  zqry1.FieldByName('telepon').Text := edt5.Text;
  zqry1.Post;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:=zqry1.Fields[0].AsString;
  edt2.Text:=zqry1.Fields[1].AsString;
  edt3.Text:=zqry1.Fields[2].AsString;
  edt4.Text:=zqry1.Fields[3].AsString;
  edt5.Text:=zqry1.Fields[4].AsString;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Data Akan Di Hapus ???', mtConfirmation,[mbYes,mbNo],0)=mryes then
zqry1.Delete;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
  edt1.Clear;
  edt2.Clear;
  edt3.Clear;
  edt4.Clear;
  edt5.Clear;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    Menu: TMainMenu;
    FormBarang1: TMenuItem;
    FormKonsumen1: TMenuItem;
    FormPendataanPenjualan1: TMenuItem;
    FormPendataanUpdatestock1: TMenuItem;
    FormCetakLaporan1: TMenuItem;
    grp1: TGroupBox;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    Logout1: TMenuItem;
    procedure FormBarang1Click(Sender: TObject);
    procedure FormKonsumen1Click(Sender: TObject);
    procedure FormPendataanPenjualan1Click(Sender: TObject);
    procedure FormPendataanUpdatestock1Click(Sender: TObject);
    procedure FormCetakLaporan1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.FormBarang1Click(Sender: TObject);
begin
  Form2.show;
end;

procedure TForm1.FormKonsumen1Click(Sender: TObject);
begin
  Form3.Show;
end;


procedure TForm1.FormPendataanPenjualan1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.FormPendataanUpdatestock1Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.FormCetakLaporan1Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
if (edt1.Text='admin') and (edt2.Text='1234') then
   FormBarang1.Visible:=True;
   FormKonsumen1.Visible:=True;
   FormPendataanPenjualan1.Visible:=True;
   FormPendataanUpdatestock1.Visible:=True;
   FormCetakLaporan1.Visible:=True;
   grp1.Visible:=False;
   Logout1.Visible:=True;
end;

procedure TForm1.Logout1Click(Sender: TObject);
begin
  FormBarang1.Visible:=False;
   FormKonsumen1.Visible:=False;
   FormPendataanPenjualan1.Visible:=False;
   FormPendataanUpdatestock1.Visible:=False;
   FormCetakLaporan1.Visible:=False;
  grp1.Visible:=True;
  Logout1.Visible:=False;
  Showmessage(' BERHASIL LOGOUT');
end;

end.

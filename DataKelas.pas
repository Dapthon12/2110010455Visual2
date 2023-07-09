unit DataKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn7: TButton;
    frxDBDataKelas: TfrxDBDataset;
    frxDataKelas: TfrxReport;
    procedure bersih;
    procedure posisiawal;
    procedure tulis;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

uses MainMenu, FormLogin;

{$R *.dfm}

{ TForm6 }

procedure TForm6.bersih;
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm6.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm6.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('Nama Kelas Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('Jurusan Tidak Boleh Kosong!'); end else
if ZQuery1.Locate('nama',edt1.Text,[]) then
begin
  ShowMessage('Data Sudah Ada Di Sistem!');
  edt1.SetFocus;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into kelas values(null,"'+edt1.Text+'","'+edt2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')then
begin
  ShowMessage('Inputan Wajib Diisi!');
  end else
if (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update kelas set nama="'+edt1.Text+'",jurusan="'+edt2.Text+'" where idkelas="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from kelas where idkelas="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

procedure TForm6.btn7Click(Sender: TObject);
begin
frxDataKelas.ShowReport();
end;

end.

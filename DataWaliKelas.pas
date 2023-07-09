unit DataWaliKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    cbb1: TComboBox;
    edt6: TEdit;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    edt7: TEdit;
    btn6: TButton;
    frxDBDataWaliKelas: TfrxDBDataset;
    frxDataWaliKelas: TfrxReport;
    btn7: TButton;
    procedure bersih;
    procedure posisiawal;
    procedure tulis;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id : string;

implementation

uses MainMenu, FormLogin;

{$R *.dfm}

{ TForm3 }

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
cbb1.Text :='---PILIH KELAMIN---';
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
end;

procedure TForm3.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
cbb1.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm3.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
cbb1.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('NIP Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('Nama Tidak Boleh Kosong!'); end else
if (cbb1.Text = '') or (cbb1.Text='---PILIH KELAMIN---') then begin
  ShowMessage('Jenis Kelamin Tidak Boleh Kosong!'); end else
if edt3.Text = '' then begin
  ShowMessage('Pendidikan Tidak Boleh Kosong!'); end else
if edt4.Text = '' then begin
  ShowMessage('Telpon Tidak Boleh Kosong!'); end else
if edt5.Text = '' then begin
  ShowMessage('Mata Pelajaran Tidak Boleh Kosong!'); end else
if edt6.Text = '' then begin
  ShowMessage('Alamat Tidak Boleh Kosong!'); end else
if edt7.Text = '' then begin
  ShowMessage('Status Tidak Boleh Kosong!'); end else
if ZQuery1.Locate('nip',edt1.Text,[]) then
begin
  ShowMessage('Data Sudah Ada Di Sistem!');
  edt1.SetFocus;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into wali_kelas values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')or (cbb1.Text='') or (cbb1.Text='---PILIH KELAMIN---')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')or(edt6.Text='')or(edt7.Text='') then
begin
  ShowMessage('Inputan Wajib Diisi!');
end else
if (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
and (cbb1.Text= ZQuery1.Fields[3].AsString) and (edt3.Text= ZQuery1.Fields[4].AsString)
and (edt4.Text= ZQuery1.Fields[5].AsString) and (edt5.Text= ZQuery1.Fields[6].AsString)
and (edt6.Text= ZQuery1.Fields[7].AsString) and (edt7.Text= ZQuery1.Fields[8].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update wali_kelas set nip="'+edt1.Text+'",nama="'+edt2.Text+'",jk="'+cbb1.Text+'",pendidikan="'+edt3.Text+'",telp="'+edt4.Text+'",matpel="'+edt5.Text+'",alamat="'+edt6.Text+'",status="'+edt7.Text+'" where idwalkel="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
cbb1.Text:= ZQuery1.Fields[3].AsString;
edt3.Text:= ZQuery1.Fields[4].AsString;
edt4.Text:= ZQuery1.Fields[5].AsString;
edt5.Text:= ZQuery1.Fields[6].AsString;
edt6.Text:= ZQuery1.Fields[7].AsString;
edt7.Text:= ZQuery1.Fields[8].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from wali_kelas where idwalkel="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
frxDataWaliKelas.ShowReport();
end;

end.

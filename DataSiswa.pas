unit DataSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Buttons, Grids, DBGrids, ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
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
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dtp1: TDateTimePicker;
    cbb1: TComboBox;
    edt9: TEdit;
    btn6: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure tulis;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id : string;

implementation

uses MainMenu;

{$R *.dfm}

{ TForm2 }

procedure TForm2.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
cbb1.Text :='---PILIH KELAMIN---';
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
end;

procedure TForm2.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
dtp1.Enabled:= False;
cbb1.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
edt9.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm2.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('NIS Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('NISN Tidak Boleh Kosong!'); end else
if edt3.Text = '' then begin
  ShowMessage('Nama Siswa Tidak Boleh Kosong!'); end else
if edt4.Text = '' then begin
  ShowMessage('NIK Tidak Boleh Kosong!'); end else
if edt5.Text = '' then begin
  ShowMessage('Tempat Lahir Tidak Boleh Kosong!'); end else
if (cbb1.Text = '') or (cbb1.Text='---PILIH KELAMIN---') then begin
  ShowMessage('Jenis Kelamin Tidak Boleh Kosong!'); end else
if edt6.Text = '' then begin
  ShowMessage('Alamat Lahir Tidak Boleh Kosong!'); end else
if edt7.Text = '' then begin
  ShowMessage('Telpon Tidak Boleh Kosong!'); end else
if edt8.Text = '' then begin
  ShowMessage('No. HP Tidak Boleh Kosong!'); end else
if edt9.Text = '' then begin
  ShowMessage('Status Tidak Boleh Kosong!'); end else
if ZQuery1.Locate('nis',edt1.Text,[]) then
begin
  ShowMessage('Data Sudah Ada Di Sistem!');
  edt1.SetFocus;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into siswa values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='') or (cbb1.Text='') or (cbb1.Text='---PILIH KELAMIN---')or(edt6.Text='')or(edt7.Text='')or(edt8.Text='')or(edt9.Text='') then
begin
  ShowMessage('Inputan Wajib Diisi!');
end else
if (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
and (edt3.Text= ZQuery1.Fields[3].AsString) and (edt4.Text= ZQuery1.Fields[4].AsString)
and (edt5.Text= ZQuery1.Fields[5].AsString) and (dtp1.Date= ZQuery1.Fields[6].AsDateTime)
and (cbb1.Text= ZQuery1.Fields[7].AsString) and (edt6.Text= ZQuery1.Fields[8].AsString)
and (edt7.Text= ZQuery1.Fields[9].AsString) and (edt8.Text= ZQuery1.Fields[10].AsString)
and (edt9.Text= ZQuery1.Fields[11].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update siswa set nis="'+edt1.Text+'",nisn="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt5.Text+'",tanggal_lahir="'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'",jk="'+cbb1.Text+'",alamat="'+edt6.Text+'",telp="'+edt7.Text+'",hp="'+edt8.Text+'",status="'+edt9.Text+'" where idsiswa="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;
dtp1.Date:= ZQuery1.Fields[6].AsDateTime;
cbb1.Text:= ZQuery1.Fields[7].AsString;
edt6.Text:= ZQuery1.Fields[8].AsString;
edt7.Text:= ZQuery1.Fields[9].AsString;
edt8.Text:= ZQuery1.Fields[10].AsString;
edt9.Text:= ZQuery1.Fields[11].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from siswa where idsiswa="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;


procedure TForm2.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

end.

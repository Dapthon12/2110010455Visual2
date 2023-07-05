unit DataSemester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, Grids, DBGrids;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt4: TEdit;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    edt7: TEdit;
    edt8: TEdit;
    btn6: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Label4: TLabel;
    edt3: TEdit;
    Label5: TLabel;
    edt5: TEdit;
    dtp1: TDateTimePicker;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id : string;

implementation

uses MainMenu;

{$R *.dfm}

{ TForm9 }

procedure TForm9.bersih;
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

procedure TForm9.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
dtp1.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm9.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
dtp1.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('Nama Siswa Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('Nama Poin Tidak Boleh Kosong!'); end else
if edt3.Text = '' then begin
  ShowMessage('Wali Kelas Tidak Boleh Kosong!'); end else
if edt4.Text = '' then begin
  ShowMessage('Orang Tua Tidak Boleh Kosong!'); end else
if edt5.Text = '' then begin
  ShowMessage('Kelas Tidak Boleh Kosong!'); end else
if edt6.Text = '' then begin
  ShowMessage('Semester Tidak Boleh Kosong!'); end else
if edt7.Text = '' then begin
  ShowMessage('Status Tidak Boleh Kosong!'); end else
if edt8.Text = '' then begin
  ShowMessage('Tingkat Kelas Tidak Boleh Kosong!'); end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into semester values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT semester.idsemester, semester.idsiswa, semester.idpoin, semester.idwalkel, semester.idortu, semester.idkelas, ' +
                'siswa.nama_siswa, poin.nama_poin, wali_kelas.nama, ortu.nama, kelas.nama, semester.tanggal, semester.semester, ' +
                'semester.status, semester.tingkat_kelas ' +
                'FROM semester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin ON semester.idpoin = poin.idpoin ' +
                'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel ' +
                'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')or(edt6.Text='')or(edt7.Text='')or(edt8.Text='') then
begin
  ShowMessage('Inputan Wajib Diisi!');
end else
if (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
and (edt3.Text= ZQuery1.Fields[3].AsString)and (edt4.Text= ZQuery1.Fields[4].AsString)
and (edt5.Text= ZQuery1.Fields[5].AsString) and (dtp1.Date= ZQuery1.Fields[11].AsDateTime)
and (edt6.Text= ZQuery1.Fields[12].AsString) and (edt7.Text= ZQuery1.Fields[13].AsString)
and (edt8.Text= ZQuery1.Fields[14].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update semester set idsiswa="'+edt1.Text+'",idpoin="'+edt2.Text+'",idwalkel="'+edt3.Text+'",idortu="'+edt4.Text+'",idkelas="'+edt5.Text+'",tanggal="'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'",semester="'+edt6.Text+'",status="'+edt7.Text+'",tingkat_kelas="'+edt8.Text+'" where idsemester="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT semester.idsemester, semester.idsiswa, semester.idpoin, semester.idwalkel, semester.idortu, semester.idkelas, ' +
                'siswa.nama_siswa, poin.nama_poin, wali_kelas.nama, ortu.nama, kelas.nama, semester.tanggal, semester.semester, ' +
                'semester.status, semester.tingkat_kelas ' +
                'FROM semester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin ON semester.idpoin = poin.idpoin ' +
                'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel ' +
                'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;
dtp1.Date:= ZQuery1.Fields[11].AsDateTime;
edt6.Text:= ZQuery1.Fields[12].AsString;
edt7.Text:= ZQuery1.Fields[13].AsString;
edt8.Text:= ZQuery1.Fields[14].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from semester where idsemester="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT semester.idsemester, semester.idsiswa, semester.idpoin, semester.idwalkel, semester.idortu, semester.idkelas, ' +
                'siswa.nama_siswa, poin.nama_poin, wali_kelas.nama, ortu.nama, kelas.nama, semester.tanggal, semester.semester, ' +
                'semester.status, semester.tingkat_kelas ' +
                'FROM semester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin ON semester.idpoin = poin.idpoin ' +
                'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel ' +
                'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

end.

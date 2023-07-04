unit DataRangkuman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids;

type
  TForm13 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure bersih;
    procedure posisiawal;
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
  Form13: TForm13;
  id : string;

implementation

uses MainMenu;

{$R *.dfm}

{ TForm13 }

procedure TForm13.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm13.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm13.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
end;

procedure TForm13.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm13.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('ID Semester Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('ID Poin Prestasi Tidak Boleh Kosong!'); end else
if edt3.Text = '' then begin
  ShowMessage('ID Poin Pelanggaran Tidak Boleh Kosong!'); end else
if ZQuery1.Locate('idsiswa',edt1.Text,[]) then
begin
  ShowMessage('Data Sudah Ada Di Sistem!');
  edt1.SetFocus;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into rangkuman values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT rangkuman.idrangkuman, semester.idsemester, semester.idsiswa, semester.idwalkel, semester.idortu, semester.idkelas, rangkuman.idprestasi, rangkuman.idpelanggaran, siswa.nama_siswa, ' +
                'siswa.nis, kelas.nama, siswa.jk, wali_kelas.nama, ortu.nama, ortu.telp, ' +
                'prestasi_poin.nama_poin AS nama_prestasi, pelanggaran_poin.nama_poin AS nama_pelanggaran, ' +
                'prestasi_poin.bobot AS bobot_prestasi, pelanggaran_poin.bobot AS bobot_pelanggaran, semester.status ' +
                'FROM rangkuman ' +
                'LEFT JOIN semester ON rangkuman.idsemester = semester.idsemester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin AS prestasi_poin ON rangkuman.idprestasi = prestasi_poin.idpoin ' +
                'LEFT JOIN poin AS pelanggaran_poin ON rangkuman.idpelanggaran = pelanggaran_poin.idpoin ' +
                'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel ' +
                'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm13.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')or(edt3.Text='') then
begin
  ShowMessage('Inputan Wajib Diisi!');
end else
if (edt1.Text= ZQuery1.Fields[6].AsString) and (edt2.Text= ZQuery1.Fields[7].AsString)
and (edt3.Text= ZQuery1.Fields[8].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update rangkuman set idsemester="'+edt1.Text+'",idprestasi="'+edt2.Text+'",idpelanggaran="'+edt3.Text+'" where idrangkuman="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT rangkuman.idrangkuman, semester.idsemester, semester.idsiswa, semester.idwalkel, semester.idortu, semester.idkelas, rangkuman.idprestasi, rangkuman.idpelanggaran, siswa.nama_siswa, ' +
                'siswa.nis, kelas.nama, siswa.jk, wali_kelas.nama, ortu.nama, ortu.telp, ' +
                'prestasi_poin.nama_poin AS nama_prestasi, pelanggaran_poin.nama_poin AS nama_pelanggaran, ' +
                'prestasi_poin.bobot AS bobot_prestasi, pelanggaran_poin.bobot AS bobot_pelanggaran, semester.status ' +
                'FROM rangkuman ' +
                'LEFT JOIN semester ON rangkuman.idsemester = semester.idsemester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin AS prestasi_poin ON rangkuman.idprestasi = prestasi_poin.idpoin ' +
                'LEFT JOIN poin AS pelanggaran_poin ON rangkuman.idpelanggaran = pelanggaran_poin.idpoin ' +
                'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel ' +
                'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm13.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[6].AsString;
edt3.Text:= ZQuery1.Fields[7].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm13.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from rangkuman where idrangkuman="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT rangkuman.idrangkuman, semester.idsemester, semester.idsiswa, semester.idwalkel, semester.idortu, semester.idkelas, rangkuman.idprestasi, rangkuman.idpelanggaran, siswa.nama_siswa, ' +
                'siswa.nis, kelas.nama, siswa.jk, wali_kelas.nama, ortu.nama, ortu.telp, ' +
                'prestasi_poin.nama_poin AS nama_prestasi, pelanggaran_poin.nama_poin AS nama_pelanggaran, ' +
                'prestasi_poin.bobot AS bobot_prestasi, pelanggaran_poin.bobot AS bobot_pelanggaran, semester.status ' +
                'FROM rangkuman ' +
                'LEFT JOIN semester ON rangkuman.idsemester = semester.idsemester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin AS prestasi_poin ON rangkuman.idprestasi = prestasi_poin.idpoin ' +
                'LEFT JOIN poin AS pelanggaran_poin ON rangkuman.idpelanggaran = pelanggaran_poin.idpoin ' +
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

procedure TForm13.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm13.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

end.

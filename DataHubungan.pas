unit DataHubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    btn6: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn7: TButton;
    frxDBDataHubungan: TfrxDBDataset;
    frxDataHubungan: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure tulis;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id : string;

implementation

uses MainMenu, FormLogin;

{$R *.dfm}

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
bersih;
ZQuery1.SQL.Text := 'SELECT hubungan.idhub, hubungan.idsiswa,hubungan.idortu, siswa.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keterangan, hubungan.status_ortu ' +
                    'FROM hubungan ' +
                    'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa ' +
                    'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu';
ZQuery1.Open;
end;

procedure TForm5.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm5.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('ID Siswa Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('ID Ortu Tidak Boleh Kosong!'); end else
if edt3.Text = '' then begin
  ShowMessage('Status Hubungan Tidak Boleh Kosong!'); end else
if edt4.Text = '' then begin
  ShowMessage('Keterangan Tidak Boleh Kosong!'); end else
if edt5.Text = '' then begin
  ShowMessage('Status Ortu Tidak Boleh Kosong!'); end else
if ZQuery1.Locate('idsiswa',edt1.Text,[]) then
begin
  ShowMessage('Data Sudah Ada Di Sistem!');
  edt1.SetFocus;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT hubungan.idhub, hubungan.idsiswa,hubungan.idortu, siswa.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keterangan, hubungan.status_ortu ' +
                'FROM hubungan ' +
                'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')or(edt5.Text='')then
begin
  ShowMessage('Inputan Wajib Diisi!');
end else
if  (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
and (edt3.Text= ZQuery1.Fields[5].AsString)and (edt4.Text= ZQuery1.Fields[6].AsString)
and (edt5.Text= ZQuery1.Fields[7].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update hubungan set idsiswa="'+edt1.Text+'",idortu="'+edt2.Text+'",status_hub_anak="'+edt3.Text+'",keterangan="'+edt4.Text+'",status_ortu="'+edt5.Text+'" where idhub="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT hubungan.idhub, hubungan.idsiswa,hubungan.idortu, siswa.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keterangan, hubungan.status_ortu ' +
                'FROM hubungan ' +
                'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from hubungan where idhub="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT hubungan.idhub, hubungan.idsiswa,hubungan.idortu, siswa.nama_siswa, ortu.nama, hubungan.status_hub_anak, hubungan.keterangan, hubungan.status_ortu ' +
                'FROM hubungan ' +
                'LEFT JOIN siswa ON hubungan.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN ortu ON hubungan.idortu = ortu.idortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('Data Batal Dihapus');
posisiawal;
end;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[5].AsString;
edt4.Text:= ZQuery1.Fields[6].AsString;
edt5.Text:= ZQuery1.Fields[7].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin
frxDataHubungan.ShowReport();
end;

end.

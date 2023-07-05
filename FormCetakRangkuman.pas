unit FormCetakRangkuman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    cbb1: TComboBox;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    frxDBrangkuman: TfrxDBDataset;
    frxrangkuman: TfrxReport;
    btn5: TButton;
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses MainMenu, DataSemester, DataRangkuman;

{$R *.dfm}

{ TForm12 }

procedure TForm12.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text :='---PILIH KELAMIN---';
edt4.Clear;
edt5.Clear;
edt6.Clear;
end;

procedure TForm12.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[8].AsString;
edt2.Text:= ZQuery1.Fields[9].AsString;
edt3.Text:= ZQuery1.Fields[10].AsString;
cbb1.Text:= ZQuery1.Fields[11].AsString;
edt4.Text:= ZQuery1.Fields[12].AsString;
edt5.Text:= ZQuery1.Fields[13].AsString;
edt6.Text:= ZQuery1.Fields[14].AsString;
btn1.Enabled:= True;
end;

procedure TForm12.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
cbb1.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
btn1.Enabled:= False;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm12.btn2Click(Sender: TObject);
begin
Form9.ShowModal;
Close;
end;

procedure TForm12.btn3Click(Sender: TObject);
begin
Form13.ShowModal;
Close;
end;

procedure TForm12.btn4Click(Sender: TObject);
begin
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
end;

procedure TForm12.btn1Click(Sender: TObject);
begin
frxrangkuman.ShowReport();
end;

procedure TForm12.btn5Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

end.

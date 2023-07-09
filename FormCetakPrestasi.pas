unit FormCetakPrestasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    edt1: TEdit;
    Label2: TLabel;
    edt2: TEdit;
    edt3: TEdit;
    Label3: TLabel;
    cbb1: TComboBox;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btn1: TButton;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    dbgrd1: TDBGrid;
    frxDBprestasi: TfrxDBDataset;
    frxPrestasi: TfrxReport;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    Label8: TLabel;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses MainMenu, DataSemester, FormLogin;

{$R *.dfm}

procedure TForm10.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text :='---PILIH KELAMIN---';
edt4.Clear;
edt5.Clear;
edt6.Clear;
end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[6].AsString;
edt2.Text:= ZQuery1.Fields[7].AsString;
edt3.Text:= ZQuery1.Fields[8].AsString;
cbb1.Text:= ZQuery1.Fields[9].AsString;
edt4.Text:= ZQuery1.Fields[10].AsString;
edt5.Text:= ZQuery1.Fields[11].AsString;
edt6.Text:= ZQuery1.Fields[12].AsString;
btn1.Enabled:= True;
end;

procedure TForm10.posisiawal;
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

procedure TForm10.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm10.btn1Click(Sender: TObject);
begin
frxPrestasi.ShowReport();
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
Form9.ShowModal;
Close;
end;

procedure TForm10.btn3Click(Sender: TObject);
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('SELECT semester.idsemester, semester.idsiswa, semester.idpoin, semester.idwalkel, semester.idortu, semester.idkelas, ' +
                'siswa.nama_siswa, siswa.nis, kelas.nama, siswa.jk, wali_kelas.nama, ortu.nama, ortu.telp, poin.nama_poin, poin.jenis, poin.bobot, semester.status ' +
                'FROM semester ' +
                'LEFT JOIN siswa ON semester.idsiswa = siswa.idsiswa ' +
                'LEFT JOIN poin ON semester.idpoin = poin.idpoin ' +
                'LEFT JOIN wali_kelas ON semester.idwalkel = wali_kelas.idwalkel ' +
                'LEFT JOIN ortu ON semester.idortu = ortu.idortu ' +
                'LEFT JOIN kelas ON semester.idkelas = kelas.idkelas');
ZQuery1.Open;
end;

procedure TForm10.btn4Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

end.

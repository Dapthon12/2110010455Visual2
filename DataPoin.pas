unit DataPoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
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
    frxDBDataPoin: TfrxDBDataset;
    frxDataPoin: TfrxReport;
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
  Form7: TForm7;
  id : string;

implementation

uses MainMenu, FormLogin;

{$R *.dfm}

{ TForm7 }

procedure TForm7.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm7.posisiawal;
begin
bersih;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
end;

procedure TForm7.tulis;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
bersih;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
if edt1.Text = '' then begin
  ShowMessage('Nama Poin Tidak Boleh Kosong!'); end else
if edt2.Text = '' then begin
  ShowMessage('Bobot Tidak Boleh Kosong!'); end else
if edt3.Text = '' then begin
  ShowMessage('Jenis Tidak Boleh Kosong!'); end else
if edt4.Text = '' then begin
  ShowMessage('Status Tidak Boleh Kosong!'); end else
if ZQuery1.Locate('nama_poin',edt1.Text,[]) then
begin
  ShowMessage('Data Sudah Ada Di Sistem!');
  edt1.SetFocus;
end else
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('insert into poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from poin');
ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
if (edt1.Text='')or(edt2.Text='')or(edt3.Text='')or(edt4.Text='')then
begin
  ShowMessage('Inputan Wajib Diisi!');
  end else
if (edt1.Text= ZQuery1.Fields[1].AsString) and (edt2.Text= ZQuery1.Fields[2].AsString)
and (edt3.Text= ZQuery1.Fields[3].AsString) and (edt4.Text= ZQuery1.Fields[4].AsString) then
begin
  ShowMessage('Data Tidak Ada Perubahan!');
  posisiawal;
end else
begin
ShowMessage('Data Berhasil Diupdate!');
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update poin set nama_poin="'+edt1.Text+'",bobot="'+edt2.Text+'",jenis="'+edt3.Text+'",status="'+edt4.Text+'" where idpoin="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from poin');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
       id:= ZQuery1.Fields[0].AsString;
edt1.Text:= ZQuery1.Fields[1].AsString;
edt2.Text:= ZQuery1.Fields[2].AsString;
edt3.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
tulis;
btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
if MessageDlg('Apakah Yakin Ingin Menghapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('delete from poin where idpoin="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from poin');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('Data Batal Dihapus');
  posisiawal;
end;
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
Form1.Show;
Close;
end;

procedure TForm7.btn7Click(Sender: TObject);
begin
frxDataPoin.ShowReport();
end;

end.

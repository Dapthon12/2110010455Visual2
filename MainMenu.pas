unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Data1: TMenuItem;
    DataSiswa1: TMenuItem;
    DataGuru1: TMenuItem;
    DataOrangTua1: TMenuItem;
    DataPoin1: TMenuItem;
    Keluar: TMenuItem;
    ZConnection1: TZConnection;
    DataKelas1: TMenuItem;
    DataHubungan1: TMenuItem;
    DataSemester1: TMenuItem;
    CETAK1: TMenuItem;
    USER1: TMenuItem;
    DataUser1: TMenuItem;
    CetakPrestasi1: TMenuItem;
    CetakPelanggaran1: TMenuItem;
    procedure DataSiswa1Click(Sender: TObject);
    procedure DataGuru1Click(Sender: TObject);
    procedure KeluarClick(Sender: TObject);
    procedure DataOrangTua1Click(Sender: TObject);
    procedure DataHubungan1Click(Sender: TObject);
    procedure DataKelas1Click(Sender: TObject);
    procedure DataPoin1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure DataSemester1Click(Sender: TObject);
    procedure CetakPrestasi1Click(Sender: TObject);
    procedure CetakPelanggaran1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DataSiswa, DataWaliKelas, DataOrangTua, DataHubungan, DataKelas,
  DataPoin, DataUser, DataSemester, FormCetakPrestasi,
  FormCetakPelanggaran;

{$R *.dfm}

procedure TForm1.DataSiswa1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.DataGuru1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.KeluarClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.DataOrangTua1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.DataHubungan1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.DataKelas1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.DataPoin1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.DataUser1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.DataSemester1Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm1.CetakPrestasi1Click(Sender: TObject);
begin
Form10.ShowModal;
end;

procedure TForm1.CetakPelanggaran1Click(Sender: TObject);
begin
Form11.ShowModal;
end;

end.

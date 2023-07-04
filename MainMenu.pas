unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ZAbstractConnection, ZConnection, StdCtrls;

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
    CetakRangkuman1: TMenuItem;
    DataRangkuman1: TMenuItem;
    Label1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    Label2: TLabel;
    btn10: TButton;
    btn11: TButton;
    btn12: TButton;
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
    procedure CetakRangkuman1Click(Sender: TObject);
    procedure DataRangkuman1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
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
  FormCetakPelanggaran, FormCetakRangkuman, DataRangkuman;

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

procedure TForm1.CetakRangkuman1Click(Sender: TObject);
begin
Form12.ShowModal;
end;

procedure TForm1.DataRangkuman1Click(Sender: TObject);
begin
Form13.ShowModal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
Form9.ShowModal;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
Form13.ShowModal;
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
Form10.ShowModal;
end;

procedure TForm1.btn11Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm1.btn12Click(Sender: TObject);
begin
Form12.ShowModal;
end;

end.

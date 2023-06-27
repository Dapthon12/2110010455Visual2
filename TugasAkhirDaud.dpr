program TugasAkhirDaud;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {Form1},
  DataSiswa in 'DataSiswa.pas' {Form2},
  DataWaliKelas in 'DataWaliKelas.pas' {Form3},
  DataOrangTua in 'DataOrangTua.pas' {Form4},
  DataHubungan in 'DataHubungan.pas' {Form5},
  DataKelas in 'DataKelas.pas' {Form6},
  DataPoin in 'DataPoin.pas' {Form7},
  DataUser in 'DataUser.pas' {Form8},
  DataSemester in 'DataSemester.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.

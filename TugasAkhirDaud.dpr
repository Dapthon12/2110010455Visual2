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
  DataSemester in 'DataSemester.pas' {Form9},
  FormCetakPrestasi in 'FormCetakPrestasi.pas' {Form10},
  FormCetakPelanggaran in 'FormCetakPelanggaran.pas' {Form11},
  FormCetakRangkuman in 'FormCetakRangkuman.pas' {Form12},
  DataRangkuman in 'DataRangkuman.pas' {Form13},
  FormLogin in 'FormLogin.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.

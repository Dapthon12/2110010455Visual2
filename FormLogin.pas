unit FormLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm14 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    Label1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    Label3: TLabel;
    edt2: TEdit;
    btn2: TButton;
    btn1: TButton;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses MainMenu;

{$R *.dfm}

{ TForm14 }

procedure TForm14.posisiawal;
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm14.btn1Click(Sender: TObject);
begin
  // Validasi apakah username dan password terisi
  if (edt1.Text = '') or (edt2.Text = '') then
  begin
    ShowMessage('Username dan password harus diisi.');
    Exit;
  end;

  // Periksa kecocokan username dan password di basis data
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM user WHERE username = :username AND password = :password');
  ZQuery1.ParamByName('username').AsString := edt1.Text;
  ZQuery1.ParamByName('password').AsString := edt2.Text;
  ZQuery1.Open;
  // Jika ada baris yang cocok, berarti login berhasil
  if not ZQuery1.IsEmpty then
  begin
    ShowMessage('Login berhasil.');
    
    // Menyembunyikan form login
    Hide;
    
    // Menampilkan form main menu
    Form1.Show;
  end
  else
    ShowMessage('Username atau password salah.');
end;

procedure TForm14.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm14.btn2Click(Sender: TObject);
begin
Close;
end;

end.

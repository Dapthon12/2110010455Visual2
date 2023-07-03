unit FormCetakPelanggaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm11 = class(TForm)
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
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    frxDBpelanggaran: TfrxDBDataset;
    frxPelanggaran: TfrxReport;
    btn1: TButton;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses MainMenu;

{$R *.dfm}

procedure TForm11.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text :='---PILIH KELAMIN---';
edt4.Clear;
edt5.Clear;
edt6.Clear;
end;

procedure TForm11.dbgrd1CellClick(Column: TColumn);
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

procedure TForm11.posisiawal;
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

procedure TForm11.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm11.btn1Click(Sender: TObject);
begin
frxPelanggaran.ShowReport();
end;

end.

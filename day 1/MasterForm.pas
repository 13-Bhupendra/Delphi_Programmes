unit MasterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Data.DB, Data.Win.ADODB;

type
  TFormPatternAndUDF = class(TForm)
    MainMenu: TMainMenu;
    Form11: TMenuItem;
    ransMain1: TMenuItem;
    ArthmaticOop1: TMenuItem;
    conTransMain: TADOConnection;
    AcMaster: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;



    procedure ArthmaticOop1Click(Sender: TObject);
    procedure AcMasterClick(Sender: TObject);
    procedure ransMain1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  FormPatternAndUDF: TFormPatternAndUDF;

implementation

{$R *.dfm}

uses ArthmaticOptRadioAndCheckbtn, TransMainForm, AcMasterForm;

procedure TFormPatternAndUDF.AcMasterClick(Sender: TObject);
begin
   if FormAcMaster = nil then
    FormAcMaster := TFormAcMaster.Create(self);
    FormAcMaster.Show;
end;

procedure TFormPatternAndUDF.ArthmaticOop1Click(Sender: TObject);
begin
  if FormArthmaticOprationRadioAndCheckBox = nil then
    FormArthmaticOprationRadioAndCheckBox := TFormArthmaticOprationRadioAndCheckBox.Create(self);
  FormArthmaticOprationRadioAndCheckBox.Show;
end;






procedure TFormPatternAndUDF.ransMain1Click(Sender: TObject);
begin
    if FormTransMain = nil then
    FormTransMain := TFormTransMain.Create(self);
  FormTransMain.Show;
end;

end.

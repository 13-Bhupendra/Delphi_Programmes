unit MasterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB;

type
  TFormMaster = class(TForm)
    MainMenu: TMainMenu;
    Master1: TMenuItem;
    Ac1: TMenuItem;
    Item1: TMenuItem;
    transaction1: TMenuItem;
    Con: TADOConnection;
    ransMain1: TMenuItem;
    City1: TMenuItem;
    procedure Ac1Click(Sender: TObject);
    procedure Item1Click(Sender: TObject);
    procedure ransMain1Click(Sender: TObject);
    procedure ransDetails1Click(Sender: TObject);
    procedure City1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMaster: TFormMaster;

implementation

{$R *.dfm}

uses AcMasterForm, ItemMAsterForm, TransMainForm, TransDetailsForm, CityForm;

procedure TFormMaster.Ac1Click(Sender: TObject);
begin
    if FormAc = nil then
        FormAc := TFormAc.Create(self);
    FormAc.Show;
end;

procedure TFormMaster.City1Click(Sender: TObject);
begin
  if FormCity = nil then
    FormCity := TFormCity.Create(self);
    FormCity.show;
end;

procedure TFormMaster.Item1Click(Sender: TObject);
begin
  if FormItemMaster = nil then
    FormItemMaster := TFormItemMaster.Create(self);
    FormItemMaster.show

end;

procedure TFormMaster.ransDetails1Click(Sender: TObject);
begin
  if FormTransDtl = nil then
      FormTransDtl := TFormTransDtl.Create(self);
    FormTransDtl.show;
end;

procedure TFormMaster.ransMain1Click(Sender: TObject);
begin
  if FormTransMain = nil then
      FormTransMain := TFormTransMain.Create(self);
  FormTransMain.Show;
end;

end.

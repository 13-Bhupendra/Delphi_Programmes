unit AcMasterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.Menus;

type
  TFormAc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditAcName: TwwDBEdit;
    DBEditPanNo: TwwDBEdit;
    DBEditGstNo: TwwDBEdit;
    DBEditState: TwwDBEdit;
    DBNavigator1: TDBNavigator;
    wwDBGrid1: TwwDBGrid;
    DbLkpCmbCity: TwwDBLookupCombo;
    LkpCmbCityName: TwwDBLookupCombo;
    PopupMenuCity: TPopupMenu;
    City1: TMenuItem;
    Panel2: TPanel;
    BtnOpenDlgAc: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure City1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAc: TFormAc;


implementation

{$R *.dfm}

uses AcData, CityForm;


procedure TFormAc.City1Click(Sender: TObject);
begin
  if FormCity = nil then
    FormCity := TFormCity.Create(self);
  FormCity.Show;
end;

procedure TFormAc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action := caFree;
 FormAc := nil;
end;

procedure TFormAc.FormCreate(Sender: TObject);
begin
  DataAc := TDataAc.Create(self);
end;

end.

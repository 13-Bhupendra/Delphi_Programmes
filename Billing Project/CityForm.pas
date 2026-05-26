unit CityForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit, Vcl.ExtCtrls;

type
  TFormCity = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EditCityName: TwwDBEdit;
    DBNavigator1: TDBNavigator;
    wwDBGrid1: TwwDBGrid;
    Label2: TLabel;
    wwDBEdit1: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCity: TFormCity;

implementation

{$R *.dfm}

uses CityData;

procedure TFormCity.FormCreate(Sender: TObject);
begin
  DataCity := TDataCity.Create(self);
end;

end.

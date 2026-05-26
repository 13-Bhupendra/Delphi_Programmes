unit CityData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataCity = class(TDataModule)
    QryCity: TADOQuery;
    QryCityCityID: TAutoIncField;
    QryCityCityName: TStringField;
    DataSource1: TDataSource;
    QryCityStateName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataCity: TDataCity;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MasterForm;

{$R *.dfm}

procedure TDataCity.DataModuleCreate(Sender: TObject);
begin
  QryCity.Open;
end;

end.

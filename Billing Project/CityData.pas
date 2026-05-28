unit CityData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Dialogs , controls;

type
  TDataCity = class(TDataModule)
    QryCity: TADOQuery;
    QryCityCityID: TAutoIncField;
    QryCityCityName: TStringField;
    DataSource1: TDataSource;
    QryCityStateName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QryCityBeforePost(DataSet: TDataSet);
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

procedure TDataCity.QryCityBeforePost(DataSet: TDataSet);
begin
    if MessageDlg('Sure you want to Add City ?' , mtConfirmation , [mbYes , mbNo] , 0) = mrNo then
    Abort
end;

end.

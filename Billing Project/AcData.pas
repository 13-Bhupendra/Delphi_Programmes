unit AcData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB , Vcl.dialogs , controls;

type
  TDataAc = class(TDataModule)
    QryAcMaster: TADOQuery;
    QryAcMasterAcId: TAutoIncField;
    QryAcMasterAcName: TStringField;
    QryAcMasterPanNo: TStringField;
    QryAcMasterGstNo: TStringField;
    DataSrcAcMaster: TDataSource;
    QryCityLkp: TADOQuery;
    QryCityLkpCityID: TAutoIncField;
    QryCityLkpCityName: TStringField;
    QryAcMasterCityID: TIntegerField;
    QryAcMasterLkpCityName: TStringField;
    QryAcMasterState: TStringField;
    QryCityLkpStateName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QryAcMasterCityIDChange(Sender: TField);
    procedure QryAcMasterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataAc: TDataAc;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MasterForm;

{$R *.dfm}

procedure TDataAc.DataModuleCreate(Sender: TObject);
begin
  QryAcMaster.Open;
  QryCityLkp.Open;
end;

procedure TDataAc.QryAcMasterBeforePost(DataSet: TDataSet);
begin
  if MessageDlg('Sure you want to Add AC ?' , mtConfirmation , [mbYes , mbNo] , 0) = mrNo then
  Abort
end;

procedure TDataAc.QryAcMasterCityIDChange(Sender: TField);
begin
      QryAcMasterState.AsString := QryCityLkpStateName.AsString;
end;

end.

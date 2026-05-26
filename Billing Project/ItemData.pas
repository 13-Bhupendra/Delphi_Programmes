unit ItemData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataItem = class(TDataModule)
    QryItemMaster: TADOQuery;
    QryItemMasteritemID: TAutoIncField;
    QryItemMasteritemName: TStringField;
    QryItemMasteritemGroupID: TIntegerField;
    QryItemMasterGstper: TBCDField;
    DataSrcItemMaster: TDataSource;
    QryItemMasterRate: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataItem: TDataItem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MasterForm;

{$R *.dfm}

procedure TDataItem.DataModuleCreate(Sender: TObject);
begin
  QryItemMaster.Open;
end;

end.

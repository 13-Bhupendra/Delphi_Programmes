unit TransData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    QryTransMain: TADOQuery;
    QryTransMaintransMainID: TAutoIncField;
    QryTransMainBillNo: TIntegerField;
    QryTransMainBillDate: TWideStringField;
    QryTransMainChallanNo: TStringField;
    QryTransMainCustomer: TStringField;
    QryTransMainTotalBasicAmount: TStringField;
    QryTransMainAcID: TIntegerField;
    QryTransMainTotalGst: TBCDField;
    QryTransMainTotalNetAmount: TBCDField;
    DataSrcTransMain: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PatternAndUDFForm, TransMainForm;

{$R *.dfm}

end.

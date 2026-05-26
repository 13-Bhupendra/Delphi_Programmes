unit TransMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormTransMain = class(TForm)
    Panel1: TPanel;
    LblBillNo: TLabel;
    LblBillDate: TLabel;
    LblCustomer: TLabel;
    LblChallanNo: TLabel;
    LblBscAmt: TLabel;
    LblAcId: TLabel;
    LblTotalGst: TLabel;
    LblTotalNetAmt: TLabel;
    EditBillNo: TDBEdit;
    EditBillDate: TDBEdit;
    EditChallanNo: TDBEdit;
    EditCustomer: TDBEdit;
    EditTotalBscAmt: TDBEdit;
    EditTotalGst: TDBEdit;
    EditTotalNetAmt: TDBEdit;
    EditAcID: TDBEdit;
    DBNavigator1: TDBNavigator;
    ADOQryTransMain: TADOQuery;
    ADOQryTransMaintransMainID: TAutoIncField;
    ADOQryTransMainBillNo: TIntegerField;
    ADOQryTransMainBillDate: TWideStringField;
    ADOQryTransMainChallanNo: TStringField;
    ADOQryTransMainCustomer: TStringField;
    ADOQryTransMainTotalBasicAmount: TStringField;
    ADOQryTransMainAcID: TIntegerField;
    ADOQryTransMainTotalGst: TBCDField;
    ADOQryTransMainTotalNetAmount: TBCDField;
    DataSrcTransMain: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransMain: TFormTransMain;

implementation

{$R *.dfm}

uses PatternAndUDFForm;

procedure TFormTransMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  FormTransMain := nil
end;

end.

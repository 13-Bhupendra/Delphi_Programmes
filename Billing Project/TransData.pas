unit TransData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataTrans = class(TDataModule)
    QryTrans: TADOQuery;
    QryTranstransMainID: TAutoIncField;
    QryTransBillNo: TIntegerField;
    QryTransBillDate: TDateTimeField;
    QryTransChallanNo: TStringField;
    QryTransCustomer: TStringField;
    QryTransTotalBasicAmount: TStringField;
    QryTransAcID: TIntegerField;
    QryTransTotalGst: TFloatField;
    QryTransTotalNetAmount: TFloatField;
    DataSrcTrans: TDataSource;
    QryAcLkp: TADOQuery;
    QryAcLkpAcId: TAutoIncField;
    QryAcLkpAcName: TStringField;
    QryAcLkpCityID: TIntegerField;
    QryAcLkpPanNo: TStringField;
    QryAcLkpGstNo: TStringField;
    QryAcLkpState: TStringField;
    QryTransLkpAcName: TStringField;
    QryTransDtl: TADOQuery;
    DataSrcTransDtl: TDataSource;
    QryTransDtlTransDetailID: TAutoIncField;
    QryTransDtlTransMainID: TIntegerField;
    QryTransDtlQty: TFloatField;
    QryTransDtlRate: TFloatField;
    QryTransDtlBasicAmount: TFloatField;
    QryTransDtlGst: TFloatField;
    QryTransDtlGstAmount: TFloatField;
    QryTransDtlGrossAmount: TFloatField;
    QryItemLkp: TADOQuery;
    QryItemLkpitemID: TAutoIncField;
    QryItemLkpitemName: TStringField;
    QryItemLkpitemGroupID: TIntegerField;
    QryItemLkpGstper: TBCDField;
    QryTransDtlItemID: TIntegerField;
    QryTransDtlLkpItemName: TStringField;
    QryItemLkpRate: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QryTransDtlItemIDChange(Sender: TField);
    procedure QryTransDtlQtyChange(Sender: TField);
    procedure QryTransBeforePost(DataSet: TDataSet);
    procedure QryTransAfterPost(DataSet: TDataSet);
    procedure QryTransAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalcInvoiceBill;
  public
    { Public declarations }
  end;

var
  DataTrans: TDataTrans;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses MasterForm;

{$R *.dfm}

procedure TDataTrans.CalcInvoiceBill;
begin
    QryTransDtlBasicAmount.AsFloat := QryTransDtlQty.AsFloat * QryTransDtlRate.AsFloat;
    QryTransDtlGstAmount.AsFloat := (QryTransDtlBasicAmount.AsFloat * QryTransDtlGst.AsFloat) / 100;
    QryTransDtlGrossAmount.AsFloat := QryTransDtlBasicAmount.AsFloat + QryTransDtlGstAmount.AsFloat;
end;

procedure TDataTrans.DataModuleCreate(Sender: TObject);
begin
  QryTrans.Open;
  QryAcLkp.Open;
  QryTransDtl.Open;
  QryItemLkp.Open;
end;

procedure TDataTrans.QryTransAfterPost(DataSet: TDataSet);
begin
  QryTransDtl.First;
  while not QryTransDtl.Eof do
  begin
    if QryTransDtlTransMainID.IsNull then
    begin
      QryTransDtl.Edit;

      QryTransDtlTransMainID.AsInteger := QryTransTransMainID.AsInteger;

      QryTransDtl.Post;
    end;

    QryTransDtl.Next;
  end;
end;

procedure TDataTrans.QryTransAfterScroll(DataSet: TDataSet);
begin
  QryTransDtl.Close;

  QryTransDtl.Parameters.ParamByName('TransMainID').Value := QryTranstransMainID.AsInteger;

  QryTransDtl.Open;
end;

procedure TDataTrans.QryTransBeforePost(DataSet: TDataSet);
  var
    dAmount , dGstAmt , dNetAmt : Double;
begin
  dAmount := 0;
  dGstAmt :=0;
  dNetAmt := 0;

  QryTransDtl.First;
  while not QryTransDtl.Eof do
  begin
    dAmount := dAmount + QryTransDtlBasicAmount.AsFloat;
    dGstAmt := dGstAmt + QryTransDtlGstAmount.AsFloat;
    dNetAmt := dNetAmt + QryTransDtlGrossAmount.AsFloat;
    QryTransDtl.Next;
  end;

  QryTransTotalBasicAmount.AsFloat := dAmount;
  QryTransTotalGst.AsFloat := dGstAmt;
  QryTransTotalNetAmount.AsFloat := dNetAmt;
//  QryTransDtl.Last;
end;

procedure TDataTrans.QryTransDtlItemIDChange(Sender: TField);
begin
  QryTransDtlGst.AsFloat := QryItemLkpGstper.AsFloat;
  QryTransDtlRate.AsFloat := QryItemLkpRate.AsFloat
end;

procedure TDataTrans.QryTransDtlQtyChange(Sender: TField);
begin
  CalcInvoiceBill;
end;

end.

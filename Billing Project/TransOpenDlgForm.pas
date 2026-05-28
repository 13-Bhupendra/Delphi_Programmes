unit TransOpenDlgForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFormTransOpenDlg = class(TForm)
    QryTransMain: TADOQuery;
    QryTransMaintransMainID: TAutoIncField;
    QryTransMainTotalBasicAmount: TStringField;
    QryTransMainTotalGst: TFloatField;
    QryTransMainTotalNetAmount: TFloatField;
    DataSrcTransMain: TDataSource;
    QryTransMainAcName: TStringField;
    wwDBGrid1: TwwDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransOpenDlg: TFormTransOpenDlg;

implementation

{$R *.dfm}

uses MasterForm, TransData;

procedure TFormTransOpenDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  FormTransOpenDlg := nil;
end;

procedure TFormTransOpenDlg.FormCreate(Sender: TObject);
begin
  QryTransMain.Open;
end;

procedure TFormTransOpenDlg.wwDBGrid1DblClick(Sender: TObject);
begin

  with DataTrans do
  begin
      QryTrans.Parameters.ParamValues['TransMainID'] := QryTransMaintransMainID.AsInteger;
      if QryTrans.Active then QryTrans.Requery() else QryTrans.Open;    
  end;
  
  Close;
end;

end.

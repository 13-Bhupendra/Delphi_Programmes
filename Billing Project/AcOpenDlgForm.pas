unit AcOpenDlgForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFormAcOpenDlg = class(TForm)
    wwDBGrid1: TwwDBGrid;
    QryAc: TADOQuery;
    DataSrcAc: TDataSource;
    QryAcAcName: TStringField;
    QryAcCityName: TStringField;
    QryAcStateName: TStringField;
    QryAcPanNo: TStringField;
    QryAcAcId: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAcOpenDlg: TFormAcOpenDlg;

implementation

{$R *.dfm}

uses MasterForm, AcData;

procedure TFormAcOpenDlg.FormCreate(Sender: TObject);
begin
  QryAc.Open;
end;

procedure TFormAcOpenDlg.wwDBGrid1DblClick(Sender: TObject);
begin
    with DataAc do
    begin
      DataAc.QryAcMaster.Parameters.ParamValues['AcID'] := QryAcAcId.AsInteger;
      if QryAcMaster.Active then QryAcMaster.Requery() else QryAcMaster.Open;
    end;
    close;
end;

end.

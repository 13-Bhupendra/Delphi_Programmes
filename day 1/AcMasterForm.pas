unit AcMasterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, vcl.wwdbigrd,
  vcl.wwdbgrid;

type
  TFormAcMaster = class(TForm)
    Panel1: TPanel;
    LblAcName: TLabel;
    LblAdd1: TLabel;
    LblAdd2: TLabel;
    LblPan: TLabel;
    LblGstNo: TLabel;
    EditAcName: TDBEdit;
    EditAdd1: TDBEdit;
    EditAdd2: TDBEdit;
    EditGstNo: TDBEdit;
    EditPan: TDBEdit;
    ADOQryAcMaster: TADOQuery;
    DataSrcAcMaster: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGridAc: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAcMaster: TFormAcMaster;

implementation

{$R *.dfm}

uses PatternAndUDFForm;

procedure TFormAcMaster.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  FormAcMaster := nil;
end;

end.

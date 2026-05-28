unit TransMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, vcl.wwdblook,
  Vcl.StdCtrls, Vcl.Mask, vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.DBCtrls, vcl.Wwdbdatetimepicker, Vcl.Menus;

type
  TFormTransMain = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditAcName: TwwDBEdit;
    DBEditCustomer: TwwDBEdit;
    DBEditTotalBscAmt: TwwDBEdit;
    DBChallanNo: TwwDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEditTotalGst: TwwDBEdit;
    DBTotalNetAmt: TwwDBEdit;
    DBLkpCmbAcId: TwwDBLookupCombo;
    DBNavigator1: TDBNavigator;
    DateTimePkrBillDate: TwwDBDateTimePicker;
    wwDBGrid1: TwwDBGrid;
    LkpCmbItemName: TwwDBLookupCombo;
    PopupMenuAc: TPopupMenu;
    Account1: TMenuItem;
    PopupMenuItem: TPopupMenu;
    Item1: TMenuItem;
    Panel2: TPanel;
    BtnDelete: TButton;
    Panel3: TPanel;
    BtnOpen: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnOpenClick(Sender: TObject);
    procedure Account1Click(Sender: TObject);
    procedure Item1Click(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransMain: TFormTransMain;

implementation

{$R *.dfm}

uses TransData, TransOpenDlgForm, AcMasterForm, ItemMAsterForm;


procedure TFormTransMain.Account1Click(Sender: TObject);
begin
 if FormAc = nil then
        FormAc := TFormAc.Create(self);
    FormAc.Show;
end;

procedure TFormTransMain.BtnDeleteClick(Sender: TObject);
begin
DataTrans.QryTransDtl.Delete;
end;

procedure TFormTransMain.BtnOpenClick(Sender: TObject);
begin
  if FormTransOpenDlg =nil then
    FormTransOpenDlg := TFormTransOpenDlg.Create(self);
  FormTransOpenDlg.ShowModal;
end;

procedure TFormTransMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormTransMain := nil;
end;

procedure TFormTransMain.FormCreate(Sender: TObject);
begin
  DataTrans := TDataTrans.Create(self);
end;

procedure TFormTransMain.Item1Click(Sender: TObject);
begin
  if FormItemMaster = nil then
      FormItemMaster := TFormItemMaster.Create(self);
  FormItemMaster.Show;
end;

end.

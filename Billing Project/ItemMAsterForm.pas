unit ItemMAsterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, vcl.wwdblook, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, vcl.Wwdbedit, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFormItemMaster = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    DBEditAcName: TwwDBEdit;
    DBEditGst: TwwDBEdit;
    DBNavigator1: TDBNavigator;
    DBEditItemGrpName: TwwDBEdit;
    EditRate: TwwDBEdit;
    Label3: TLabel;
    wwDBGrid1: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItemMaster: TFormItemMaster;

implementation

{$R *.dfm}

uses ItemData;


procedure TFormItemMaster.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormItemMaster := nil;
end;

procedure TFormItemMaster.FormCreate(Sender: TObject);
begin
  DataItem := TDataItem.Create(self);
end;

end.

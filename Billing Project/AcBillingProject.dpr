program AcBillingProject;

uses
  Vcl.Forms,
  MasterForm in 'MasterForm.pas' {FormMaster},
  AcMasterForm in 'AcMasterForm.pas' {FormAc},
  ItemMAsterForm in 'ItemMAsterForm.pas' {FormItemMaster},
  TransMainForm in 'TransMainForm.pas' {FormTransMain},
  AcData in 'AcData.pas' {DataAc: TDataModule},
  ItemData in 'ItemData.pas' {DataItem: TDataModule},
  TransData in 'TransData.pas' {DataTrans: TDataModule},
  CityData in 'CityData.pas' {DataCity: TDataModule},
  CityForm in 'CityForm.pas' {FormCity};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMaster, FormMaster);
  Application.Run;
end.

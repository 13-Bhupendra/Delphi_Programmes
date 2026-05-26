program ArthmaticOptRadioAndCheckbtns;

uses
  Vcl.Forms,
  ArthmaticOptRadioAndCheckbtn in 'ArthmaticOptRadioAndCheckbtn.pas' {FormArthmaticOprationRadioAndCheckBox},
  Vcl.Themes,
  Vcl.Styles,
  PatternAndUDFForm in 'PatternAndUDFForm.pas' {FormPatternAndUDF},
  TransMainForm in 'TransMainForm.pas' {FormTransMain},
  AcMasterForm in 'AcMasterForm.pas' {FormAcMaster};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPatternAndUDF, FormPatternAndUDF);
  Application.Run;
end.

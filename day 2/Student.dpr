program Student;

uses
  Vcl.Forms,
  StudentManagementForm in 'StudentManagementForm.pas' {FormStudentManagement};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormStudentManagement, FormStudentManagement);
  Application.Run;
end.

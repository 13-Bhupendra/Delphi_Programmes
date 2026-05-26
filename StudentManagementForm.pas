unit StudentManagementForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TFormStudentManagement = class(TForm)
    EditName: TPanel;
    LblTitle: TLabel;
    LblName: TLabel;
    EditFirstName: TEdit;
    LblLastName: TLabel;
    EditLastName: TEdit;
    LblRollNo: TLabel;
    EditRollNo: TEdit;
    Rdg: TRadioGroup;
    LblEmail: TLabel;
    EditEmail: TEdit;
    LblNumber: TLabel;
    EditNumber: TEdit;
    CheckListBox: TCheckListBox;
    LblHobbies: TLabel;
    Memo: TMemo;
    Btn: TButton;
    procedure BtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStudentManagement: TFormStudentManagement;

implementation

{$R *.dfm}

procedure TFormStudentManagement.BtnClick(Sender: TObject);

begin

//    sLastName := EditLastName.Text;
//    sEmail := EditEmail.Text;
//    sNumber := EditNumber.Text;
//    sRollNo := EditRollNo.Text;

    Memo.Lines.Add(LblName.Caption +  EditFirstName.Text);
    Memo.Lines.Add(LblLastName.Caption +  EditLastName.Text);
    Memo.Lines.Add(LblRollNo.Caption +  EditRollNo.Text);
    Memo.Lines.Add(LblEmail.Caption +  EditEmail.Text);
    Memo.Lines.Add(LblNumber.Caption +  EditNumber.Text);

//    if Rdg.ItemIndex = 0 then
//    begin
//      Memo.Lines.Add(Rdg.Caption + ': Male')
//    end
//    else if Rdg.ItemIndex = 1 then
//    begin
//      Memo.Lines.Add(Rdg.Caption + ': Female');
//    end
//    else if Rdg.ItemIndex = 2 then
//    begin
//      Memo.Lines.Add(Rdg.Caption + ': Other')
//    end;

  if Rdg.ItemIndex <> -1 then
    Memo.Lines.Add(Rdg.Caption + ' : ' +    Rdg.Items[Rdg.ItemIndex]);

end;

end.

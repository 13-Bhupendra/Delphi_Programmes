unit ArthmaticOptRadioAndCheckbtn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TFormArthmaticOprationRadioAndCheckBox = class(TForm)
    Panel1: TPanel;
    LblNum1: TLabel;
    LblNum2: TLabel;
    EditNum1: TEdit;
    EditNum2: TEdit;
    Memo: TMemo;
    Rdg: TRadioGroup;
    btn1: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    LblNum4: TLabel;
    EditNum3: TEdit;
    EditNum4: TEdit;
    Memo1: TMemo;
    Btn2: TButton;
    CheckListBox: TCheckListBox;
    procedure btn1Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArthmaticOprationRadioAndCheckBox: TFormArthmaticOprationRadioAndCheckBox;

implementation

{$R *.dfm}

uses PatternAndUDFForm;

procedure TFormArthmaticOprationRadioAndCheckBox.btn1Click(Sender: TObject);
  var
    iNum1 , iNum2 , iAns : Integer;

  var
    dDiv : double;
begin
  iNum1 := StrToInt(EditNum1.Text);
  iNum2 := StrToInt(EditNum2.Text);

//  iAns := iNum1 + iNum2;
//  Memo.Lines.Add(intToStr(iAns))

  Memo.Clear;
  if Rdg.itemIndex = 0 then
  begin
    iAns := iNum1 + iNum2;
    Memo.Lines.Add('Sub of Num1 and Num2 is : ' + intToStr(iAns));
  end
  else if Rdg.ItemIndex = 1 then
  begin
    iAns := iNum1 - iNum2;
    Memo.Lines.Add('Sub of Num1 and Num2 is : ' + intToStr(iAns));
  end
  else if Rdg.ItemIndex = 2 then
  begin
    dDiv := iNum1 / iNum2;
    Memo.Lines.Add('Division of Num1 and Num2 is : ' + FloatToStr(dDiv));
  end
  else if Rdg.ItemIndex = 3 then
  begin
    iAns := iNum1 * iNum2;
    Memo.Lines.Add('Mult of Num1 and Num2 is : ' +  intToStr(iAns));
  end
  else
  begin
    Memo.Lines.Add('Radio Button Not Checked Yet !');
  end;

end;

procedure TFormArthmaticOprationRadioAndCheckBox.Btn2Click(Sender: TObject);
  var
    iNum1 , iNum2 , iAns : Integer;
   var
    dDiv : double;
begin
  iNum1 := StrToInt(EditNum3.Text);
  iNum2 := StrToInt(EditNum4.Text);

//   iAns := iNum1 + iNum2;
//   Memo1.Lines.Add(intToStr(iAns))
  Memo1.clear;
  if checkListBox.checked[0] then
  begin
    iAns := iNum1 + iNum2;
    Memo1.Lines.Add('Sum of Num1 and Num2 is : ' + intToStr(iAns))
  end;

  if checkListBox.checked[1] then
  begin
    iAns := iNum1 - iNum2;
    Memo1.Lines.Add('Sub of Num1 and Num2 is : ' + intToStr(iAns))
  end;

  if checkListBox.checked[2] then
  begin
    dDiv := iNum1 / iNum2;
    Memo1.Lines.Add('Div of Num1 and Num2 is : ' + FloatToStr(dDiv))
  end;

  if checkListBox.checked[3] then
  begin
    iAns := iNum1 * iNum2;
    Memo1.Lines.Add('Mult of Num1 and Num2 is : ' + intToStr(iAns))
  end;

end;

procedure TFormArthmaticOprationRadioAndCheckBox.Button1Click(Sender: TObject);
begin
  if FormPatternAndUDF = nil then
     FormPatternAndUDF := TFormPatternAndUDF.Create(self);
  FormPatternAndUDF.Show
end;

end.


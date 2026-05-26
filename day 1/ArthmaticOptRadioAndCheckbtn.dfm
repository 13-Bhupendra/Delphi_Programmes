object FormArthmaticOprationRadioAndCheckBox: TFormArthmaticOprationRadioAndCheckBox
  Left = 0
  Top = 0
  Caption = 'Arthmatic Opration Radio And CheckBox'
  ClientHeight = 537
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 265
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -19
    object LblNum1: TLabel
      Left = 24
      Top = 27
      Width = 96
      Height = 15
      Caption = 'Enter Number 1 :  '
    end
    object LblNum2: TLabel
      Left = 24
      Top = 59
      Width = 93
      Height = 15
      Caption = 'Enter Number 2 : '
    end
    object EditNum1: TEdit
      Left = 123
      Top = 22
      Width = 157
      Height = 23
      TabOrder = 0
    end
    object EditNum2: TEdit
      Left = 123
      Top = 51
      Width = 157
      Height = 23
      TabOrder = 1
    end
    object Memo: TMemo
      Left = 560
      Top = 24
      Width = 313
      Height = 209
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object Rdg: TRadioGroup
      Left = 297
      Top = 24
      Width = 241
      Height = 137
      Caption = 'Check Radio to view answer'
      Items.Strings = (
        'Sum'
        'Substraction'
        'Division'
        'Multiplication')
      TabOrder = 3
    end
    object btn1: TButton
      Left = 297
      Top = 167
      Width = 241
      Height = 35
      Cursor = crHandPoint
      Caption = 'View Answer'
      TabOrder = 4
      OnClick = btn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 265
    Width = 892
    Height = 272
    Align = alTop
    Caption = 'e'
    TabOrder = 1
    ExplicitTop = 269
    object Label1: TLabel
      Left = 21
      Top = 30
      Width = 96
      Height = 15
      Caption = 'Enter Number 1 :  '
    end
    object LblNum4: TLabel
      Left = 24
      Top = 59
      Width = 93
      Height = 15
      Caption = 'Enter Number 2 : '
    end
    object EditNum3: TEdit
      Left = 123
      Top = 24
      Width = 157
      Height = 23
      TabOrder = 0
    end
    object EditNum4: TEdit
      Left = 123
      Top = 53
      Width = 157
      Height = 23
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 560
      Top = 24
      Width = 313
      Height = 209
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object Btn2: TButton
      Left = 297
      Top = 151
      Width = 241
      Height = 35
      Caption = 'View Answer'
      TabOrder = 3
      OnClick = Btn2Click
    end
    object CheckListBox: TCheckListBox
      Left = 297
      Top = 24
      Width = 241
      Height = 121
      ItemHeight = 15
      Items.Strings = (
        'Sum'
        'Substraction'
        'Division'
        'Mult')
      TabOrder = 4
    end
  end
end

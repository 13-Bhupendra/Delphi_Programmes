object FormStudentManagement: TFormStudentManagement
  Left = 0
  Top = 0
  Caption = 'Student Management'
  ClientHeight = 525
  ClientWidth = 925
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EditName: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 525
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -296
    ExplicitTop = 8
    object LblTitle: TLabel
      Left = 312
      Top = 24
      Width = 280
      Height = 23
      Caption = 'Student Management System'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblName: TLabel
      Left = 32
      Top = 104
      Width = 143
      Height = 15
      Caption = 'Enter Student First Name : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LblLastName: TLabel
      Left = 32
      Top = 138
      Width = 140
      Height = 15
      Caption = 'Enter Student Last Name : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LblRollNo: TLabel
      Left = 32
      Top = 172
      Width = 140
      Height = 15
      Alignment = taRightJustify
      Caption = 'Enter Student Roll No. : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LblEmail: TLabel
      Left = 101
      Top = 206
      Width = 71
      Height = 15
      Alignment = taRightJustify
      Caption = 'Enter Email : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LblNumber: TLabel
      Left = 89
      Top = 242
      Width = 83
      Height = 15
      Alignment = taRightJustify
      Caption = 'Enter Number : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object LblHobbies: TLabel
      Left = 83
      Top = 351
      Width = 89
      Height = 15
      Alignment = taRightJustify
      Caption = 'Select Hobbies : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object EditFirstName: TEdit
      Left = 189
      Top = 103
      Width = 232
      Height = 28
      TabOrder = 0
    end
    object EditLastName: TEdit
      Left = 189
      Top = 137
      Width = 232
      Height = 28
      TabOrder = 1
    end
    object EditRollNo: TEdit
      Left = 189
      Top = 171
      Width = 232
      Height = 28
      TabOrder = 2
    end
    object Rdg: TRadioGroup
      Left = 32
      Top = 284
      Width = 389
      Height = 45
      BiDiMode = bdLeftToRight
      Caption = 'Select Gender'
      Columns = 3
      Items.Strings = (
        'Male'
        'Female'
        'Other')
      ParentBiDiMode = False
      TabOrder = 3
    end
    object EditEmail: TEdit
      Left = 189
      Top = 205
      Width = 232
      Height = 28
      TabOrder = 4
    end
    object EditNumber: TEdit
      Left = 189
      Top = 239
      Width = 232
      Height = 28
      TabOrder = 5
    end
    object CheckListBox: TCheckListBox
      Left = 189
      Top = 351
      Width = 232
      Height = 66
      ItemHeight = 13
      Items.Strings = (
        'Photography'
        'Sketching & Drawing'
        'Creative Writing'
        'Digital Graphic Design')
      TabOrder = 6
    end
    object Memo: TMemo
      Left = 520
      Top = 103
      Width = 377
      Height = 314
      Lines.Strings = (
        '')
      TabOrder = 7
    end
    object Btn: TButton
      Left = 656
      Top = 440
      Width = 145
      Height = 33
      Caption = 'Show details'
      TabOrder = 8
      OnClick = BtnClick
    end
  end
end

object FormPatternAndUDF: TFormPatternAndUDF
  Left = 0
  Top = 0
  Caption = 'Pattern And UDF'
  ClientHeight = 480
  ClientWidth = 916
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 916
    Height = 480
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 40
      Width = 182
      Height = 23
      Caption = 'Ac Managemet System'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object MainMenu: TMainMenu
    Left = 424
    Top = 32
    object Form11: TMenuItem
      Caption = 'Menu'
      object AcMaster: TMenuItem
        Caption = 'AcMaster'
        OnClick = AcMasterClick
      end
      object ransMain1: TMenuItem
        Caption = 'TransMain'
        OnClick = ransMain1Click
      end
    end
    object ArthmaticOop1: TMenuItem
      Caption = 'Arthmatic Oop'
      OnClick = ArthmaticOop1Click
    end
  end
  object conTransMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saadmin;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=Employee;Data Source=LAPTOP-SNFK41CN\' +
      'SQL2019'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 496
    Top = 32
  end
end

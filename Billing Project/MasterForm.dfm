object FormMaster: TFormMaster
  Left = 0
  Top = 0
  Caption = 'Ac Billing System'
  ClientHeight = 455
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu: TMainMenu
    Left = 840
    Top = 40
    object Master1: TMenuItem
      Caption = 'Master'
      object Ac1: TMenuItem
        Caption = 'Account'
        OnClick = Ac1Click
      end
      object Item1: TMenuItem
        Caption = 'Items'
        OnClick = Item1Click
      end
      object City1: TMenuItem
        Caption = 'City'
        OnClick = City1Click
      end
    end
    object transaction1: TMenuItem
      Caption = 'transaction'
      object ransMain1: TMenuItem
        Caption = 'Sales'
        OnClick = ransMain1Click
      end
    end
  end
  object Con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saadmin;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=Employee;Data Source=LAPTOP-SNFK41CN\' +
      'SQL2019'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 752
    Top = 56
  end
end

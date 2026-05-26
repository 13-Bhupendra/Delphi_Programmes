object FormCity: TFormCity
  Left = 0
  Top = 0
  Caption = 'City'
  ClientHeight = 470
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 217
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 48
      Width = 82
      Height = 19
      Caption = 'City Name : '
    end
    object Label2: TLabel
      Left = 45
      Top = 99
      Width = 92
      Height = 19
      Caption = 'State Name : '
    end
  end
  object EditCityName: TwwDBEdit
    Left = 152
    Top = 45
    Width = 249
    Height = 27
    DataField = 'CityName'
    DataSource = DataCity.DataSource1
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object DBNavigator1: TDBNavigator
    Left = 56
    Top = 144
    Width = 340
    Height = 33
    DataSource = DataCity.DataSource1
    TabOrder = 2
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 217
    Width = 879
    Height = 253
    Selected.Strings = (
      'CityID'#9'10'#9'CityID'#9#9
      'CityName'#9'20'#9'CityName'#9#9
      'StateName'#9'20'#9'StateName'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataCity.DataSource1
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBEdit1: TwwDBEdit
    Left = 152
    Top = 96
    Width = 249
    Height = 27
    DataField = 'StateName'
    DataSource = DataCity.DataSource1
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
end

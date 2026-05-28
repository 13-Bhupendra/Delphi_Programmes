object FormAcOpenDlg: TFormAcOpenDlg
  Left = 0
  Top = 0
  Caption = 'FormAcOpenDlg'
  ClientHeight = 366
  ClientWidth = 846
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 846
    Height = 366
    Selected.Strings = (
      'AcName'#9'30'#9'AcName'#9'F'#9
      'CityName'#9'20'#9'CityName'#9#9
      'StateName'#9'20'#9'StateName'#9#9
      'PanNo'#9'20'#9'PanNo'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSrcAc
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object QryAc: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'#9'ac.AcId,'
      #9#9'ac.AcName ,'
      #9#9'c.CityName,'
      #9#9'c.StateName,'
      #9#9'ac.PanNo'
      'from AcMaster ac'
      'join citys c'
      'on ac.CityID = c.CityID')
    Left = 776
    Top = 32
    object QryAcAcName: TStringField
      DisplayWidth = 30
      FieldName = 'AcName'
      Size = 50
    end
    object QryAcCityName: TStringField
      DisplayWidth = 20
      FieldName = 'CityName'
    end
    object QryAcStateName: TStringField
      DisplayWidth = 20
      FieldName = 'StateName'
    end
    object QryAcPanNo: TStringField
      DisplayWidth = 20
      FieldName = 'PanNo'
      Size = 10
    end
    object QryAcAcId: TAutoIncField
      FieldName = 'AcId'
      ReadOnly = True
    end
  end
  object DataSrcAc: TDataSource
    DataSet = QryAc
    Left = 776
    Top = 104
  end
end

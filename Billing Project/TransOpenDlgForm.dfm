object FormTransOpenDlg: TFormTransOpenDlg
  Left = 0
  Top = 0
  Caption = 'Trans Open Dlg'
  ClientHeight = 395
  ClientWidth = 854
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 854
    Height = 305
    Selected.Strings = (
      'transMainID'#9'10'#9'transMainID'#9#9
      'AcName'#9'30'#9'AcName'#9'F'
      'TotalBasicAmount'#9'25'#9'TotalBasicAmount'#9'F'
      'TotalGst'#9'25'#9'TotalGst'#9'F'
      'TotalNetAmount'#9'25'#9'TotalNetAmount'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DataSrcTransMain
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object QryTransMain: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select t.transMainID,'
      #9#9'a.AcName,'
      #9#9't.TotalBasicAmount,'
      #9#9't.TotalGst,'
      #9#9't.TotalNetAmount'
      'from TransMain t'
      'join AcMaster a on a.AcId = t.AcID')
    Left = 760
    Top = 40
    object QryTransMaintransMainID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'transMainID'
      ReadOnly = True
    end
    object QryTransMainAcName: TStringField
      DisplayWidth = 30
      FieldName = 'AcName'
      Size = 50
    end
    object QryTransMainTotalBasicAmount: TStringField
      DisplayWidth = 25
      FieldName = 'TotalBasicAmount'
    end
    object QryTransMainTotalGst: TFloatField
      DisplayWidth = 25
      FieldName = 'TotalGst'
    end
    object QryTransMainTotalNetAmount: TFloatField
      DisplayWidth = 25
      FieldName = 'TotalNetAmount'
    end
  end
  object DataSrcTransMain: TDataSource
    DataSet = QryTransMain
    Left = 760
    Top = 128
  end
end

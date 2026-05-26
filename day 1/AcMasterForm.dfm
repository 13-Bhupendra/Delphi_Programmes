object FormAcMaster: TFormAcMaster
  Left = 0
  Top = 0
  Caption = 'Ac'
  ClientHeight = 454
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Calibri'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 890
    Height = 321
    Align = alTop
    TabOrder = 0
    object LblAcName: TLabel
      Left = 62
      Top = 48
      Width = 101
      Height = 18
      Caption = 'Enter Ac Name : '
    end
    object LblAdd1: TLabel
      Left = 93
      Top = 80
      Width = 70
      Height = 18
      Caption = 'Address 1 : '
    end
    object LblAdd2: TLabel
      Left = 93
      Top = 112
      Width = 70
      Height = 18
      Caption = 'Address 2 : '
    end
    object LblPan: TLabel
      Left = 76
      Top = 177
      Width = 87
      Height = 18
      Caption = 'Pan Number : '
    end
    object LblGstNo: TLabel
      Left = 78
      Top = 144
      Width = 85
      Height = 18
      Caption = 'Gst Number : '
    end
    object EditAcName: TDBEdit
      Left = 169
      Top = 45
      Width = 208
      Height = 26
      DataField = 'AcName'
      DataSource = DataSrcAcMaster
      TabOrder = 0
    end
    object EditAdd1: TDBEdit
      Left = 169
      Top = 77
      Width = 208
      Height = 26
      DataField = 'Address1'
      DataSource = DataSrcAcMaster
      TabOrder = 1
    end
    object EditAdd2: TDBEdit
      Left = 169
      Top = 109
      Width = 208
      Height = 26
      DataField = 'Address2'
      DataSource = DataSrcAcMaster
      TabOrder = 2
    end
    object EditGstNo: TDBEdit
      Left = 169
      Top = 143
      Width = 208
      Height = 26
      DataField = 'GstNo'
      DataSource = DataSrcAcMaster
      TabOrder = 3
    end
    object EditPan: TDBEdit
      Left = 169
      Top = 175
      Width = 208
      Height = 26
      DataField = 'PanNo'
      DataSource = DataSrcAcMaster
      TabOrder = 4
    end
    object DBNavigator1: TDBNavigator
      Left = 78
      Top = 232
      Width = 290
      Height = 33
      DataSource = DataSrcAcMaster
      TabOrder = 5
    end
  end
  object DBGridAc: TwwDBGrid
    Left = 0
    Top = 321
    Width = 890
    Height = 133
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    ExplicitLeft = 720
    ExplicitTop = 368
    ExplicitWidth = 320
    ExplicitHeight = 120
  end
  object ADOQryAcMaster: TADOQuery
    Active = True
    Connection = FormPatternAndUDF.conTransMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From AcMaster')
    Left = 816
    Top = 24
  end
  object DataSrcAcMaster: TDataSource
    DataSet = ADOQryAcMaster
    Left = 816
    Top = 88
  end
end

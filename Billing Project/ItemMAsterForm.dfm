object FormItemMaster: TFormItemMaster
  Left = 0
  Top = 0
  Caption = 'Item Master'
  ClientHeight = 450
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 321
    Align = alTop
    TabOrder = 0
    object TLabel
      Left = 89
      Top = 45
      Width = 87
      Height = 19
      Caption = 'Item Name : '
    end
    object Label2: TLabel
      Left = 42
      Top = 92
      Width = 134
      Height = 19
      Caption = 'Item Group Name : '
    end
    object Label4: TLabel
      Left = 133
      Top = 139
      Width = 43
      Height = 19
      Caption = 'Rate : '
    end
    object Label3: TLabel
      Left = 116
      Top = 187
      Width = 60
      Height = 19
      Caption = 'Gst (%) : '
    end
    object DBEditAcName: TwwDBEdit
      Left = 190
      Top = 42
      Width = 241
      Height = 27
      DataField = 'itemName'
      DataSource = DataItem.DataSrcItemMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditGst: TwwDBEdit
      Left = 190
      Top = 184
      Width = 241
      Height = 27
      DataField = 'Gstper'
      DataSource = DataItem.DataSrcItemMaster
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBNavigator1: TDBNavigator
      Left = 106
      Top = 249
      Width = 320
      Height = 33
      DataSource = DataItem.DataSrcItemMaster
      TabOrder = 2
    end
    object DBEditItemGrpName: TwwDBEdit
      Left = 190
      Top = 89
      Width = 241
      Height = 27
      DataField = 'itemGroupID'
      DataSource = DataItem.DataSrcItemMaster
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object EditRate: TwwDBEdit
      Left = 190
      Top = 135
      Width = 241
      Height = 27
      DataField = 'Rate'
      DataSource = DataItem.DataSrcItemMaster
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 321
    Width = 881
    Height = 129
    Selected.Strings = (
      'itemName'#9'50'#9'itemName'#9#9
      'itemGroupID'#9'10'#9'itemGroupID'#9#9
      'Rate'#9'10'#9'Rate'#9#9
      'Gstper'#9'19'#9'Gstper'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataItem.DataSrcItemMaster
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
  end
end

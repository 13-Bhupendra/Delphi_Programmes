object FormAc: TFormAc
  Left = 0
  Top = 0
  Caption = 'Account Master'
  ClientHeight = 470
  ClientWidth = 887
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
    Width = 887
    Height = 313
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 41
      Top = 56
      Width = 73
      Height = 19
      Caption = 'Ac Name : '
    end
    object Label2: TLabel
      Left = 72
      Top = 101
      Width = 42
      Height = 19
      Caption = 'City :  '
    end
    object Label3: TLabel
      Left = 66
      Top = 146
      Width = 48
      Height = 19
      Caption = 'State : '
    end
    object Label4: TLabel
      Left = 48
      Top = 189
      Width = 66
      Height = 19
      Caption = 'Pan No. : '
    end
    object Label5: TLabel
      Left = 52
      Top = 235
      Width = 62
      Height = 19
      Caption = 'Gst No. : '
    end
    object DBEditAcName: TwwDBEdit
      Left = 120
      Top = 53
      Width = 241
      Height = 27
      DataField = 'AcName'
      DataSource = DataAc.DataSrcAcMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditPanNo: TwwDBEdit
      Left = 120
      Top = 186
      Width = 241
      Height = 27
      DataField = 'PanNo'
      DataSource = DataAc.DataSrcAcMaster
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditGstNo: TwwDBEdit
      Left = 120
      Top = 232
      Width = 241
      Height = 27
      DataField = 'GstNo'
      DataSource = DataAc.DataSrcAcMaster
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditState: TwwDBEdit
      Left = 120
      Top = 143
      Width = 241
      Height = 27
      DataField = 'State'
      DataSource = DataAc.DataSrcAcMaster
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBNavigator1: TDBNavigator
      Left = 41
      Top = 275
      Width = 320
      Height = 33
      DataSource = DataAc.DataSrcAcMaster
      TabOrder = 4
    end
    object DbLkpCmbCity: TwwDBLookupCombo
      Left = 120
      Top = 98
      Width = 241
      Height = 27
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CityName'#9'20'#9'CityName'#9'F')
      DataField = 'CityID'
      DataSource = DataAc.DataSrcAcMaster
      LookupTable = DataAc.QryCityLkp
      LookupField = 'CityID'
      PopupMenu = PopupMenuCity
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 885
      Height = 32
      Align = alTop
      TabOrder = 6
      object BtnOpenDlgAc: TButton
        Left = 1
        Top = 1
        Width = 89
        Height = 30
        Align = alLeft
        Caption = 'open'
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 4
        ExplicitHeight = 25
      end
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 313
    Width = 887
    Height = 157
    ControlType.Strings = (
      'lkpCityName;CustomEdit;LkpCmbCityName;F'
      'LkpCityName;CustomEdit;LkpCmbCityName;F')
    Selected.Strings = (
      'AcName'#9'50'#9'AcName'#9#9
      'LkpCityName'#9'20'#9'City Name'#9#9
      'PanNo'#9'30'#9'PanNo'#9'F'#9
      'GstNo'#9'30'#9'GstNo'#9'F'
      'State'#9'20'#9'State'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataAc.DataSrcAcMaster
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    object LkpCmbCityName: TwwDBLookupCombo
      Left = 384
      Top = 64
      Width = 121
      Height = 27
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CityName'#9'20'#9'CityName'#9'F')
      DataField = 'CityID'
      DataSource = DataAc.DataSrcAcMaster
      LookupTable = DataAc.QryCityLkp
      LookupField = 'CityID'
      PopupMenu = PopupMenuCity
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
  end
  object PopupMenuCity: TPopupMenu
    Left = 792
    Top = 48
    object City1: TMenuItem
      Caption = 'City'
      OnClick = City1Click
    end
  end
end

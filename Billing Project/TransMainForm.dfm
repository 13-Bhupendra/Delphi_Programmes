object FormTransMain: TFormTransMain
  Left = 0
  Top = 0
  Caption = 'Trans Main'
  ClientHeight = 621
  ClientWidth = 900
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
    Width = 900
    Height = 481
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -6
    object Label1: TLabel
      Left = 105
      Top = 84
      Width = 61
      Height = 19
      Caption = 'Bill No. : '
    end
    object Label2: TLabel
      Left = 97
      Top = 129
      Width = 69
      Height = 19
      Caption = 'Bill Date : '
    end
    object Label3: TLabel
      Left = 76
      Top = 174
      Width = 90
      Height = 19
      Caption = 'Challan No. : '
    end
    object Label4: TLabel
      Left = 89
      Top = 217
      Width = 77
      Height = 19
      Caption = 'Customer : '
    end
    object Label5: TLabel
      Left = 22
      Top = 263
      Width = 144
      Height = 19
      Caption = 'Total basic Amount : '
    end
    object Label6: TLabel
      Left = -42
      Top = 272
      Width = 43
      Height = 19
      Caption = 'AcID : '
    end
    object Label7: TLabel
      Left = 120
      Top = 40
      Width = 46
      Height = 19
      Caption = 'AcId  : '
    end
    object Label8: TLabel
      Left = 94
      Top = 312
      Width = 72
      Height = 19
      Caption = 'Total Gst : '
    end
    object Label9: TLabel
      Left = 31
      Top = 360
      Width = 135
      Height = 19
      Caption = 'Total Net Amount : '
    end
    object DBEditAcName: TwwDBEdit
      Left = 184
      Top = 81
      Width = 241
      Height = 27
      DataField = 'BillNo'
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditCustomer: TwwDBEdit
      Left = 184
      Top = 214
      Width = 241
      Height = 27
      DataField = 'Customer'
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditTotalBscAmt: TwwDBEdit
      Left = 184
      Top = 260
      Width = 241
      Height = 27
      DataField = 'TotalBasicAmount'
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBChallanNo: TwwDBEdit
      Left = 184
      Top = 171
      Width = 241
      Height = 27
      DataField = 'ChallanNo'
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBEditTotalGst: TwwDBEdit
      Left = 183
      Top = 309
      Width = 241
      Height = 27
      DataField = 'TotalGst'
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBTotalNetAmt: TwwDBEdit
      Left = 183
      Top = 357
      Width = 241
      Height = 27
      DataField = 'TotalNetAmount'
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBLkpCmbAcId: TwwDBLookupCombo
      Left = 184
      Top = 37
      Width = 241
      Height = 27
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'AcName'#9'50'#9'AcName'#9'F')
      DataField = 'AcID'
      DataSource = DataTrans.DataSrcTrans
      LookupTable = DataTrans.QryAcLkp
      LookupField = 'AcId'
      PopupMenu = PopupMenuAc
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object DBNavigator1: TDBNavigator
      Left = 45
      Top = 408
      Width = 380
      Height = 33
      DataSource = DataTrans.DataSrcTrans
      TabOrder = 7
    end
    object DateTimePkrBillDate: TwwDBDateTimePicker
      Left = 184
      Top = 126
      Width = 241
      Height = 27
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      DataField = 'BillDate'
      DataSource = DataTrans.DataSrcTrans
      Epoch = 1950
      ShowButton = True
      TabOrder = 8
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 898
      Height = 33
      Align = alTop
      TabOrder = 9
      object BtnOpen: TButton
        Left = 1
        Top = 1
        Width = 75
        Height = 31
        Align = alLeft
        Caption = 'Open'
        TabOrder = 0
        OnClick = BtnOpenClick
        ExplicitLeft = 816
        ExplicitTop = -1
        ExplicitHeight = 25
      end
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 481
    Width = 900
    Height = 140
    ControlType.Strings = (
      'LkpItemName;CustomEdit;LkpCmbItemName;F')
    Selected.Strings = (
      'TransMainID'#9'10'#9'TransMainID'#9#9
      'LkpItemName'#9'25'#9'Item Name'#9'F'
      'Qty'#9'15'#9'Qty'#9'F'#9
      'Rate'#9'20'#9'Rate'#9'F'#9
      'Gst'#9'15'#9'Gst'#9'F'#9
      'BasicAmount'#9'25'#9'BasicAmount'#9'F'#9
      'GstAmount'#9'25'#9'GstAmount'#9'F'#9
      'GrossAmount'#9'25'#9'GrossAmount'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataTrans.DataSrcTransDtl
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
    TitleLines = 1
    TitleButtons = False
    ExplicitHeight = 124
    object LkpCmbItemName: TwwDBLookupCombo
      Left = 416
      Top = 64
      Width = 121
      Height = 27
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'itemName'#9'50'#9'itemName'#9'F')
      DataField = 'ItemID'
      DataSource = DataTrans.DataSrcTransDtl
      LookupTable = DataTrans.QryItemLkp
      LookupField = 'itemID'
      PopupMenu = PopupMenuItem
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object Panel2: TPanel
      Left = 0
      Top = 95
      Width = 896
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 360
      ExplicitTop = 40
      ExplicitWidth = 185
      object BtnDelete: TButton
        Left = 1
        Top = 1
        Width = 112
        Height = 39
        Align = alLeft
        Caption = 'Remove'
        TabOrder = 0
        OnClick = BtnDeleteClick
      end
    end
  end
  object PopupMenuAc: TPopupMenu
    Left = 776
    Top = 120
    object Account1: TMenuItem
      Caption = 'Account'
      OnClick = Account1Click
    end
  end
  object PopupMenuItem: TPopupMenu
    Left = 776
    Top = 200
    object Item1: TMenuItem
      Caption = 'Item'
      OnClick = Item1Click
    end
  end
end

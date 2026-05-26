object FormTransMain: TFormTransMain
  Left = 0
  Top = 0
  Caption = 'TransMain'
  ClientHeight = 559
  ClientWidth = 887
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
    Width = 887
    Height = 369
    Align = alTop
    TabOrder = 0
    object LblBillNo: TLabel
      Left = 59
      Top = 32
      Width = 91
      Height = 18
      Caption = 'Enter Bill No. : '
    end
    object LblBillDate: TLabel
      Left = 52
      Top = 64
      Width = 98
      Height = 18
      Caption = 'Enter Bill Date : '
    end
    object LblCustomer: TLabel
      Left = 80
      Top = 128
      Width = 70
      Height = 18
      Caption = 'Customer : '
    end
    object LblChallanNo: TLabel
      Left = 33
      Top = 96
      Width = 117
      Height = 18
      Caption = 'Enter Challan No. : '
    end
    object LblBscAmt: TLabel
      Left = 26
      Top = 160
      Width = 124
      Height = 18
      Caption = 'Total Basic Amount :'
    end
    object LblAcId: TLabel
      Left = 116
      Top = 192
      Width = 34
      Height = 18
      Caption = 'AcId :'
    end
    object LblTotalGst: TLabel
      Left = 89
      Top = 224
      Width = 61
      Height = 18
      Caption = 'Total Gst :'
    end
    object LblTotalNetAmt: TLabel
      Left = 36
      Top = 256
      Width = 119
      Height = 18
      Caption = 'Total Net Amount : '
    end
  end
  object EditBillNo: TDBEdit
    Left = 156
    Top = 29
    Width = 213
    Height = 26
    DataField = 'BillNo'
    DataSource = DataSrcTransMain
    TabOrder = 1
  end
  object EditBillDate: TDBEdit
    Left = 156
    Top = 61
    Width = 213
    Height = 26
    DataField = 'BillDate'
    DataSource = DataSrcTransMain
    TabOrder = 2
  end
  object EditChallanNo: TDBEdit
    Left = 156
    Top = 93
    Width = 213
    Height = 26
    DataField = 'ChallanNo'
    DataSource = DataSrcTransMain
    TabOrder = 3
  end
  object EditCustomer: TDBEdit
    Left = 156
    Top = 125
    Width = 213
    Height = 26
    DataField = 'Customer'
    DataSource = DataSrcTransMain
    TabOrder = 4
  end
  object EditTotalBscAmt: TDBEdit
    Left = 156
    Top = 157
    Width = 213
    Height = 26
    DataField = 'TotalBasicAmount'
    DataSource = DataSrcTransMain
    TabOrder = 5
  end
  object EditTotalGst: TDBEdit
    Left = 156
    Top = 218
    Width = 213
    Height = 26
    DataField = 'TotalGst'
    DataSource = DataSrcTransMain
    TabOrder = 6
  end
  object EditTotalNetAmt: TDBEdit
    Left = 156
    Top = 248
    Width = 213
    Height = 26
    DataField = 'TotalNetAmount'
    DataSource = DataSrcTransMain
    TabOrder = 7
  end
  object EditAcID: TDBEdit
    Left = 156
    Top = 188
    Width = 213
    Height = 26
    DataField = 'AcID'
    DataSource = DataSrcTransMain
    TabOrder = 8
  end
  object DBNavigator1: TDBNavigator
    Left = 49
    Top = 304
    Width = 320
    Height = 33
    DataSource = DataSrcTransMain
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 369
    Width = 887
    Height = 190
    Align = alClient
    DataSource = DataSrcTransMain
    TabOrder = 10
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Calibri'
    TitleFont.Style = [fsBold]
  end
  object ADOQryTransMain: TADOQuery
    Active = True
    Connection = FormPatternAndUDF.conTransMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From TransMain')
    Left = 760
    Top = 24
    object ADOQryTransMaintransMainID: TAutoIncField
      FieldName = 'transMainID'
      ReadOnly = True
    end
    object ADOQryTransMainBillNo: TIntegerField
      FieldName = 'BillNo'
    end
    object ADOQryTransMainBillDate: TWideStringField
      FieldName = 'BillDate'
      Size = 10
    end
    object ADOQryTransMainChallanNo: TStringField
      FieldName = 'ChallanNo'
      Size = 15
    end
    object ADOQryTransMainCustomer: TStringField
      FieldName = 'Customer'
    end
    object ADOQryTransMainTotalBasicAmount: TStringField
      FieldName = 'TotalBasicAmount'
    end
    object ADOQryTransMainAcID: TIntegerField
      FieldName = 'AcID'
    end
    object ADOQryTransMainTotalGst: TBCDField
      FieldName = 'TotalGst'
      Precision = 18
      Size = 0
    end
    object ADOQryTransMainTotalNetAmount: TBCDField
      FieldName = 'TotalNetAmount'
      Precision = 18
      Size = 0
    end
  end
  object DataSrcTransMain: TDataSource
    DataSet = ADOQryTransMain
    Left = 768
    Top = 88
  end
end

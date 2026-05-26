object DataTrans: TDataTrans
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 496
  Width = 842
  object QryTrans: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    BeforePost = QryTransBeforePost
    AfterPost = QryTransAfterPost
    AfterScroll = QryTransAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from TransMain')
    Left = 64
    Top = 40
    object QryTranstransMainID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'transMainID'
      ReadOnly = True
    end
    object QryTransBillNo: TIntegerField
      DisplayWidth = 10
      FieldName = 'BillNo'
    end
    object QryTransBillDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'BillDate'
    end
    object QryTransChallanNo: TStringField
      DisplayWidth = 15
      FieldName = 'ChallanNo'
      Size = 15
    end
    object QryTransCustomer: TStringField
      DisplayWidth = 20
      FieldName = 'Customer'
    end
    object QryTransTotalBasicAmount: TStringField
      DisplayWidth = 20
      FieldName = 'TotalBasicAmount'
    end
    object QryTransLkpAcName: TStringField
      DisplayLabel = 'Ac Name'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'LkpAcName'
      LookupDataSet = QryAcLkp
      LookupKeyFields = 'AcId'
      LookupResultField = 'AcName'
      KeyFields = 'AcID'
      Size = 50
      Lookup = True
    end
    object QryTransTotalGst: TFloatField
      DisplayWidth = 10
      FieldName = 'TotalGst'
    end
    object QryTransTotalNetAmount: TFloatField
      DisplayWidth = 10
      FieldName = 'TotalNetAmount'
    end
    object QryTransAcID: TIntegerField
      DisplayWidth = 10
      FieldName = 'AcID'
      Visible = False
    end
  end
  object DataSrcTrans: TDataSource
    DataSet = QryTrans
    Left = 64
    Top = 128
  end
  object QryAcLkp: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from AcMaster')
    Left = 192
    Top = 40
    object QryAcLkpAcName: TStringField
      DisplayWidth = 50
      FieldName = 'AcName'
      Size = 50
    end
    object QryAcLkpAcId: TAutoIncField
      FieldName = 'AcId'
      ReadOnly = True
      Visible = False
    end
    object QryAcLkpCityID: TIntegerField
      FieldName = 'CityID'
      Visible = False
    end
    object QryAcLkpPanNo: TStringField
      FieldName = 'PanNo'
      Visible = False
      Size = 10
    end
    object QryAcLkpGstNo: TStringField
      FieldName = 'GstNo'
      Visible = False
      Size = 15
    end
    object QryAcLkpState: TStringField
      FieldName = 'State'
      Visible = False
    end
  end
  object QryTransDtl: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TransMainID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from TransDetails'
      'Where TransMainID = :TransMainID')
    Left = 312
    Top = 40
    object QryTransDtlTransMainID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TransMainID'
    end
    object QryTransDtlLkpItemName: TStringField
      DisplayLabel = 'Item Name'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'LkpItemName'
      LookupDataSet = QryItemLkp
      LookupKeyFields = 'itemID'
      LookupResultField = 'itemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object QryTransDtlQty: TFloatField
      DisplayWidth = 15
      FieldName = 'Qty'
      OnChange = QryTransDtlQtyChange
    end
    object QryTransDtlRate: TFloatField
      DisplayWidth = 20
      FieldName = 'Rate'
    end
    object QryTransDtlGst: TFloatField
      DisplayWidth = 15
      FieldName = 'Gst'
    end
    object QryTransDtlBasicAmount: TFloatField
      DisplayWidth = 25
      FieldName = 'BasicAmount'
    end
    object QryTransDtlGstAmount: TFloatField
      DisplayWidth = 25
      FieldName = 'GstAmount'
    end
    object QryTransDtlGrossAmount: TFloatField
      DisplayWidth = 25
      FieldName = 'GrossAmount'
    end
    object QryTransDtlTransDetailID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TransDetailID'
      ReadOnly = True
      Visible = False
    end
    object QryTransDtlItemID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ItemID'
      Visible = False
      OnChange = QryTransDtlItemIDChange
    end
  end
  object DataSrcTransDtl: TDataSource
    DataSet = QryTransDtl
    Left = 312
    Top = 120
  end
  object QryItemLkp: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ItemMaster')
    Left = 440
    Top = 40
    object QryItemLkpitemName: TStringField
      DisplayWidth = 50
      FieldName = 'itemName'
      Size = 50
    end
    object QryItemLkpitemID: TAutoIncField
      FieldName = 'itemID'
      ReadOnly = True
      Visible = False
    end
    object QryItemLkpitemGroupID: TIntegerField
      FieldName = 'itemGroupID'
      Visible = False
    end
    object QryItemLkpGstper: TBCDField
      FieldName = 'Gstper'
      Visible = False
      Precision = 18
      Size = 0
    end
    object QryItemLkpRate: TFloatField
      FieldName = 'Rate'
    end
  end
end

object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 517
  Width = 880
  object QryTransMain: TADOQuery
    Connection = FormPatternAndUDF.conTransMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From TransMain')
    Left = 760
    Top = 24
    object QryTransMaintransMainID: TAutoIncField
      FieldName = 'transMainID'
      ReadOnly = True
    end
    object QryTransMainBillNo: TIntegerField
      FieldName = 'BillNo'
    end
    object QryTransMainBillDate: TWideStringField
      FieldName = 'BillDate'
      Size = 10
    end
    object QryTransMainChallanNo: TStringField
      FieldName = 'ChallanNo'
      Size = 15
    end
    object QryTransMainCustomer: TStringField
      FieldName = 'Customer'
    end
    object QryTransMainTotalBasicAmount: TStringField
      FieldName = 'TotalBasicAmount'
    end
    object QryTransMainAcID: TIntegerField
      FieldName = 'AcID'
    end
    object QryTransMainTotalGst: TBCDField
      FieldName = 'TotalGst'
      Precision = 18
      Size = 0
    end
    object QryTransMainTotalNetAmount: TBCDField
      FieldName = 'TotalNetAmount'
      Precision = 18
      Size = 0
    end
  end
  object DataSrcTransMain: TDataSource
    DataSet = QryTransMain
    Left = 768
    Top = 88
  end
end

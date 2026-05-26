object DataItem: TDataItem
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 465
  Width = 888
  object QryItemMaster: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ItemMaster')
    Left = 48
    Top = 32
    object QryItemMasteritemName: TStringField
      DisplayWidth = 50
      FieldName = 'itemName'
      Size = 50
    end
    object QryItemMasteritemGroupID: TIntegerField
      DisplayWidth = 10
      FieldName = 'itemGroupID'
    end
    object QryItemMasterRate: TFloatField
      DisplayWidth = 10
      FieldName = 'Rate'
    end
    object QryItemMasterGstper: TBCDField
      DisplayWidth = 19
      FieldName = 'Gstper'
      Precision = 18
      Size = 0
    end
    object QryItemMasteritemID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'itemID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSrcItemMaster: TDataSource
    DataSet = QryItemMaster
    Left = 48
    Top = 96
  end
end

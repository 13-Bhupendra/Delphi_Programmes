object DataAc: TDataAc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 539
  Width = 873
  object QryAcMaster: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    BeforePost = QryAcMasterBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from AcMaster')
    Left = 56
    Top = 32
    object QryAcMasterAcName: TStringField
      DisplayWidth = 50
      FieldName = 'AcName'
      Size = 50
    end
    object QryAcMasterLkpCityName: TStringField
      DisplayLabel = 'City Name'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LkpCityName'
      LookupDataSet = QryCityLkp
      LookupKeyFields = 'CityID'
      LookupResultField = 'CityName'
      KeyFields = 'CityID'
      Lookup = True
    end
    object QryAcMasterPanNo: TStringField
      DisplayWidth = 30
      FieldName = 'PanNo'
      Size = 10
    end
    object QryAcMasterGstNo: TStringField
      DisplayWidth = 30
      FieldName = 'GstNo'
      Size = 15
    end
    object QryAcMasterState: TStringField
      DisplayWidth = 20
      FieldName = 'State'
    end
    object QryAcMasterAcId: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AcId'
      ReadOnly = True
      Visible = False
    end
    object QryAcMasterCityID: TIntegerField
      FieldName = 'CityID'
      Visible = False
      OnChange = QryAcMasterCityIDChange
    end
  end
  object DataSrcAcMaster: TDataSource
    DataSet = QryAcMaster
    Left = 56
    Top = 112
  end
  object QryCityLkp: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from citys')
    Left = 184
    Top = 32
    object QryCityLkpCityName: TStringField
      DisplayWidth = 20
      FieldName = 'CityName'
    end
    object QryCityLkpCityID: TAutoIncField
      FieldName = 'CityID'
      ReadOnly = True
      Visible = False
    end
    object QryCityLkpStateName: TStringField
      FieldName = 'StateName'
    end
  end
end

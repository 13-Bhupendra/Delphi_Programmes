object DataCity: TDataCity
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 495
  Width = 864
  object QryCity: TADOQuery
    Connection = FormMaster.Con
    CursorType = ctStatic
    BeforePost = QryCityBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * From Citys')
    Left = 80
    Top = 40
    object QryCityCityID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'CityID'
      ReadOnly = True
    end
    object QryCityCityName: TStringField
      DisplayWidth = 20
      FieldName = 'CityName'
    end
    object QryCityStateName: TStringField
      DisplayWidth = 20
      FieldName = 'StateName'
    end
  end
  object DataSource1: TDataSource
    DataSet = QryCity
    Left = 80
    Top = 112
  end
end

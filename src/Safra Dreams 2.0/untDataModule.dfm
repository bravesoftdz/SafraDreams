object dataModuleGeral: TdataModuleGeral
  OldCreateOrder = False
  Height = 182
  Width = 268
  object FDMemTableAuth: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMapRules, fvMaxStringSize]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
      end>
    FormatOptions.MaxStringSize = 80000
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 128
    Top = 76
    object FDMemTableAuthaccess_token: TWideStringField
      FieldName = 'access_token'
      Size = 5000
    end
    object FDMemTableAuthtoken_type: TWideStringField
      FieldName = 'token_type'
      Size = 255
    end
    object FDMemTableAuthexpires_in: TWideStringField
      FieldName = 'expires_in'
      Size = 255
    end
  end
end

object dmREST: TdmREST
  OldCreateOrder = False
  Height = 387
  Width = 618
  object rstClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://jsonplaceholder.typicode.com'
    Params = <>
    Left = 32
    Top = 16
  end
  object rstRequest: TRESTRequest
    Client = rstClient
    Params = <>
    Resource = 'posts/1'
    Response = rstResponse
    SynchronizedEvents = False
    Left = 32
    Top = 72
  end
  object rstResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 32
    Top = 128
  end
  object rstResponseDataSetAdapter: TRESTResponseDataSetAdapter
    FieldDefs = <>
    Response = rstResponse
    Left = 136
    Top = 16
  end
  object FDMemTable: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 136
    Top = 72
  end
end

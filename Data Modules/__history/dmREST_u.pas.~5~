unit dmREST_u;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, REST.Response.Adapter, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmREST = class(TDataModule)
    rstClient: TRESTClient;
    rstRequest: TRESTRequest;
    rstResponse: TRESTResponse;
    rstResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    FDMemTable: TFDMemTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmREST: TdmREST;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

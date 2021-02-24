unit fraRequest_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox, FMX.Edit, FMX.ScrollBox, FMX.Memo,
  REST.Types, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  REST.Response.Adapter, REST.Client, Data.Bind.ObjectScope;

type
  TfraRequest = class(TFrame)
    pnlRequest: TPanel;
    pnlResponse: TPanel;
    Splitter2: TSplitter;
    Label1: TLabel;
    cboMethod: TComboBox;
    edtURL: TEdit;
    btnSend: TButton;
    Label2: TLabel;
    mmoReposnse: TMemo;
    Request: TRESTRequest;
    Client: TRESTClient;
    Response: TRESTResponse;
    RepsonseDataSetAdapter: TRESTResponseDataSetAdapter;
    BindingsList: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TfraRequest.btnSendClick(Sender: TObject);
var
  baseURL: String;
  resourceURL: String;
begin
  { Parse the URL from the EditBox to the pieces needed }
  baseURL := Copy(edtURL.Text, 0, edtURL.Text.IndexOf('/', 9));
  resourceURL := Copy(edtURL.Text, edtURL.Text.IndexOf('/', 9) + 2);

  { Set the URLs accordingly }
  Client.BaseURL := baseURL;
  Request.Resource := resourceURL;

  { Update the request method }
  Request.Method := TRESTRequestMethod(cboMethod.Selected.Index);

  { Execute the request }
  Request.Execute;
end;

end.

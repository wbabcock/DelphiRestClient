unit RequestFrame;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox, FMX.Edit, FMX.ScrollBox, FMX.Memo,
  REST.Types, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  REST.Response.Adapter, REST.Client, Data.Bind.ObjectScope, FMX.Grid.Style,
  FMX.Grid, FMX.TabControl, FMX.Memo.Types;

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
    TabControl1: TTabControl;
    tabAuthorization: TTabItem;
    tabHeaders: TTabItem;
    tabBody: TTabItem;
    grdBody: TStringGrid;
    colBodyName: TStringColumn;
    colBodyValue: TStringColumn;
    ToolBar1: TToolBar;
    btnBodyAddRow: TButton;
    Panel1: TPanel;
    lblStatus: TLabel;
    tabParams: TTabItem;
    procedure btnSendClick(Sender: TObject);
    procedure FrameResize(Sender: TObject);
    procedure FramePaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure btnBodyAddRowClick(Sender: TObject);
  private
    procedure SetParameters;
    procedure SetColumnWidths;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TfraRequest.btnBodyAddRowClick(Sender: TObject);
begin
  grdBody.RowCount := grdBody.RowCount + 1;
end;

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

  { Set the Params if POST or PUT }
  if (Request.Method = rmPOST) or (Request.Method = rmPUT) then
    SetParameters;

  { Execute the request }
  Request.Execute;

  { Set the status code lable }
  lblStatus.Text := 'Status: ' + Response.StatusCode.ToString + ' - ' + Response.StatusText;
  if Response.Status.Success = True then
  begin
    lblStatus.StyledSettings := lblStatus.StyledSettings - [TStyledSetting.FontColor];
    lblStatus.FontColor := TAlphaColors.Green;
  end
  else
  begin
    lblStatus.StyledSettings := lblStatus.StyledSettings - [TStyledSetting.FontColor];
    lblStatus.FontColor := TAlphaColors.Crimson;
  end;
end;

procedure TfraRequest.FramePaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  SetColumnWidths;
end;

procedure TfraRequest.FrameResize(Sender: TObject);
begin
  SetColumnWidths;
end;

procedure TfraRequest.SetParameters();
var 
  I: Integer;
begin
  for I := 0 to grdBody.RowCount - 1 do
  begin
    { Make sure the row is good before adding to the post/put }
    if grdBody.Cells[0, I] <> '' then
    begin
      Request.Params.AddItem;
      Request.Params[I].Name := grdBody.Cells[0, I]; // the Name column
      Request.Params[I].Value := grdBody.Cells[1, I]; // the Value column
      Request.Params[I].ContentType := ctAPPLICATION_X_WWW_FORM_URLENCODED;
      Request.Params[I].Kind := pkGETorPOST;
    end;
  end;
end;

procedure TfraRequest.SetColumnWidths();
begin
  colBodyName.Width := (grdBody.Width / 2) - 20;
  colBodyValue.Width := (grdBody.Width / 2) - 20;
end;

end.

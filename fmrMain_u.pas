unit fmrMain_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, dmMainForm_u, FMX.Menus,
  FMX.TabControl, fraRequest_u;

type
  TfrmMain = class(TForm)
    pnlHistory: TPanel;
    pnlMain: TPanel;
    MenuBar1: TMenuBar;
    mnuFile: TMenuItem;
    mnuFileExit: TMenuItem;
    toolBar: TToolBar;
    tabControl: TTabControl;
    tab1: TTabItem;
    tabControlHistory: TTabControl;
    tabHistory: TTabItem;
    tabCollections: TTabItem;
    Splitter1: TSplitter;
    fraRequest1: TfraRequest;
    Button1: TButton;
    procedure fraRequest1btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.fraRequest1btnSendClick(Sender: TObject);
begin
  fraRequest1.btnSendClick(Sender);

end;

end.

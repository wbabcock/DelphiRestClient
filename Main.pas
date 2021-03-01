unit Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, dmMainForm_u, FMX.Menus,
  FMX.TabControl, RequestFrame;

type
  TfrmMain = class(TForm)
    pnlHistory: TPanel;
    pnlMain: TPanel;
    toolBar: TToolBar;
    tabControl: TTabControl;
    Z: TTabItem;
    tabControlHistory: TTabControl;
    tabHistory: TTabItem;
    tabCollections: TTabItem;
    Splitter1: TSplitter;
    fraRequest1: TfraRequest;
    Button1: TButton;
    btnNewTab: TButton;
    procedure fraRequest1btnSendClick(Sender: TObject);
    procedure btnNewTabClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

procedure TfrmMain.btnNewTabClick(Sender: TObject);
var
  newTab: TTabItem;
begin
  newTab := TTabItem.Create(tabControl);
  newTab.Text := 'Untitled Request';

  tabControl.AddObject(newTab);

  newTab := nil;

end;

procedure TfrmMain.fraRequest1btnSendClick(Sender: TObject);
begin
  fraRequest1.btnSendClick(Sender);

end;

end.
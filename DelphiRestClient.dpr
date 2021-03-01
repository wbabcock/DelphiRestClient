program DelphiRestClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main in 'Main.pas' {frmMain},
  dmMainForm_u in 'Data Modules\dmMainForm_u.pas' {dmMainForm: TDataModule},
  RequestFrame in 'RequestFrame.pas' {fraRequest: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMainForm, dmMainForm);
  Application.Run;
end.

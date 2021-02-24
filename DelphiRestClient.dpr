program DelphiRestClient;

uses
  System.StartUpCopy,
  FMX.Forms,
  fmrMain_u in 'fmrMain_u.pas' {frmMain},
  dmMainForm_u in 'Data Modules\dmMainForm_u.pas' {dmMainForm: TDataModule},
  fraRequest_u in 'fraRequest_u.pas' {fraRequest: TFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMainForm, dmMainForm);
  Application.Run;
end.

program DelphiRestClient;

uses
  Vcl.Forms,
  fmrMain_u in 'fmrMain_u.pas' {frmMain},
  dmREST_u in 'Data Modules\dmREST_u.pas' {dmREST: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmREST, dmREST);
  Application.Run;
end.

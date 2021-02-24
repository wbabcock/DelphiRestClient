unit dmMainForm_u;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, FMX.ImgList,
  System.Actions, FMX.ActnList, FMX.Types, FMX.Menus, FMX.StdActns;

type
  TdmMainForm = class(TDataModule)
    actionList: TActionList;
    imageList: TImageList;
    FileExit: TFileExit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMainForm: TdmMainForm;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

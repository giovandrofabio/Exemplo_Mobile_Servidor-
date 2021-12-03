unit UntLayoutBase;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,

  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,

  UntBase, FMX.Objects, FMX.Layouts;

type
  TFrmLayoutBase = class(TFrmBase)
    lyBase: TLayout;
    rctClient: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLayoutBase: TFrmLayoutBase;

implementation

{$R *.fmx}

end.

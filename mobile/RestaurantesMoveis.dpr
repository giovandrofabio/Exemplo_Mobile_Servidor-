program RestaurantesMoveis;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntBase in 'UntBase.pas' {FrmBase},
  UntLayoutBase in 'UntLayoutBase.pas' {FrmLayoutBase},
  UntInfoUsuario in 'UntInfoUsuario.pas' {FrmInfoUsuario},
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntLib in 'utils\UntLib.pas',
  UntCadUsuario in 'UntCadUsuario.pas' {fCadUsuario},
  Proxy in 'Proxy.pas',
  UntCM in 'UntCM.pas' {CM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TfCadUsuario, fCadUsuario);
  Application.CreateForm(TCM, CM);
  Application.Run;
end.

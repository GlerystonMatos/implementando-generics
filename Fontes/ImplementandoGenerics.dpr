program ImplementandoGenerics;

uses
  Vcl.Forms,
  uExemplos in 'uExemplos.pas' {frmExemplos},
  uCachorro in 'uCachorro.pas',
  uTroca in 'uTroca.pas',
  uPilha in 'uPilha.pas',
  uFabrica in 'uFabrica.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplos, frmExemplos);
  Application.Run;
end.

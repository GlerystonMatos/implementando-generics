program ImplementandoGenerics;

uses
  Vcl.Forms,
  uExemplos in 'uExemplos.pas' {frmExemplos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExemplos, frmExemplos);
  Application.Run;
end.

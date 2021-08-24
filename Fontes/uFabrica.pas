unit uFabrica;

interface

uses
  uTroca;

type
  TFabrica<Tipo: constructor, class> = class
  public
    class function CriarTroca: ITroca<Tipo>;
  end;

implementation

{ TFabrica<Tipo> }

class function TFabrica<Tipo>.CriarTroca: ITroca<Tipo>;
begin
  Result := TTroca<Tipo>.Create;
  Result.Valor01 := Tipo.Create;
  Result.Valor02 := Tipo.Create;
end;

end.

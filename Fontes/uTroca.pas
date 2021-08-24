unit uTroca;

interface

type
  TTroca = class
  public
    class procedure Trocar<Tipo>(var AValor01, AValor02: Tipo);
  end;

  ITroca<Tipo> = interface
    ['{7594FCFD-60A9-4543-80A4-3E9D9A0CCE19}']
    function GetValor01: Tipo;
    function GetValor02: Tipo;

    procedure SetValor01(const Value: Tipo);
    procedure SetValor02(const Value: Tipo);

    property Valor01: Tipo read GetValor01 write SetValor01;
    property Valor02: Tipo read GetValor02 write SetValor02;

    procedure Trocar;
  end;

  TTroca<Tipo> = class(TInterfacedObject, ITroca<Tipo>)
  private
    FValor01: Tipo;
    FValor02: Tipo;
    function GetValor01: Tipo;
    function GetValor02: Tipo;
    procedure SetValor01(const Value: Tipo);
    procedure SetValor02(const Value: Tipo);
  public
    procedure Trocar;
  end;

implementation

{ TTroca }

class procedure TTroca.Trocar<Tipo>(var AValor01, AValor02: Tipo);
var
  LTemporario: Tipo;
begin
  LTemporario := AValor01;
  AValor01 := AValor02;
  AValor02 := LTemporario;
end;

{ TTroca<Tipo> }

function TTroca<Tipo>.GetValor01: Tipo;
begin
  Result := FValor01;
end;

function TTroca<Tipo>.GetValor02: Tipo;
begin
  Result := FValor02;
end;

procedure TTroca<Tipo>.SetValor01(const Value: Tipo);
begin
  FValor01 := Value;
end;

procedure TTroca<Tipo>.SetValor02(const Value: Tipo);
begin
  FValor02 := Value;
end;

procedure TTroca<Tipo>.Trocar;
var
  LTemporario: Tipo;
begin
  LTemporario := FValor01;
  FValor01 := FValor02;
  FValor02 := LTemporario;
end;

end.

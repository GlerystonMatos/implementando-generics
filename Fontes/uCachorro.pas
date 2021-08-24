unit uCachorro;

interface

uses
  Vcl.Dialogs;

type
  ICachorro = Interface
    ['{63E76FA8-D384-40E4-9726-4EA88FCB1B2F}']
    function GetNome: string;
    procedure SetNome(const Value: string);

    property Nome: string read GetNome write SetNome;

    procedure Latir;
  end;

  TCachorro = class(TInterfacedObject, ICachorro)
  private
    FNome: string;
    function GetNome: string;
    procedure SetNome(const Value: string);
  public
    constructor Create(ANome: string);
    property Nome: string read GetNome write SetNome;

    procedure Latir;
  end;

implementation

{ TCachorro }

constructor TCachorro.Create(ANome: string);
begin
  FNome := ANome;
end;

procedure TCachorro.Latir;
begin
  ShowMessage(FNome + ': rrrrrr au. au!');
end;

function TCachorro.GetNome: string;
begin
  Result := FNome;
end;

procedure TCachorro.SetNome(const Value: string);
begin
  FNome := Value;
end;

end.

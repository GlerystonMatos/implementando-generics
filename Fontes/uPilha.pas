unit uPilha;

interface

uses
  SysUtils;

type
  IPilha<Tipo> = interface
    ['{9A5F696E-8800-4AE8-A88B-A472D48A0F70}']
    procedure Limpar;
    procedure Empilhar(const AValor: Tipo);

    function Desempilhar: Tipo;
    function EstaVazia: boolean;
    function EstaCheia: boolean;
    function ObterProximoItem: Tipo;

    function GetIndiceProximoItem: Integer;
    procedure SetIndiceProximoItem(const Value: Integer);

    property IndiceProximoItem: Integer read GetIndiceProximoItem write SetIndiceProximoItem;
  end;

  TPilha<Tipo> = class(TInterfacedObject, IPilha<Tipo>)
  private
    FDados: array of Tipo;
    FIndiceProximoItem: Integer;

    function GetIndiceProximoItem: Integer;
    procedure SetIndiceProximoItem(const Value: Integer);
  public
    constructor Create(const ATamanhoMaximo: Integer);
    destructor Destroy; override;

    procedure Limpar;
    procedure Empilhar(const AValor: Tipo);

    function Desempilhar: Tipo;
    function EstaVazia: boolean;
    function EstaCheia: boolean;
    function ObterProximoItem: Tipo;
  end;

implementation

{ TPilha<Tipo> }

constructor TPilha<Tipo>.Create(const ATamanhoMaximo: Integer);
begin
  SetLength(FDados, ATamanhoMaximo);
  FIndiceProximoItem := 0;
end;

destructor TPilha<Tipo>.Destroy;
begin
  Limpar;
end;

procedure TPilha<Tipo>.Limpar;
begin
  while (not EstaVazia) do
    Desempilhar;
end;

procedure TPilha<Tipo>.Empilhar(const AValor: Tipo);
begin
  if (not EstaCheia) then
  begin
    Inc(FIndiceProximoItem);
    FDados[FIndiceProximoItem] := AValor;
  end
  else
    raise Exception.Create('Estouro de pilha');
end;

function TPilha<Tipo>.Desempilhar: Tipo;
begin
  if (not EstaVazia) then
  begin
    Result := FDados[FIndiceProximoItem];
    Dec(FIndiceProximoItem);
  end
  else
    raise Exception.Create('Pilha vazia');
end;

function TPilha<Tipo>.EstaVazia: boolean;
begin
  if (FIndiceProximoItem = 0) then
    Result := True
  else
    Result := False;
end;

function TPilha<Tipo>.EstaCheia: boolean;
begin
  if (FIndiceProximoItem = Length(FDados)) then
    Result := True
  else
    Result := False;
end;

function TPilha<Tipo>.ObterProximoItem: Tipo;
begin
  if (not EstaVazia) then
    Result := FDados[FIndiceProximoItem]
  else
    raise Exception.Create('Pilha vazia');
end;

function TPilha<Tipo>.GetIndiceProximoItem: Integer;
begin
  Result := FIndiceProximoItem;
end;

procedure TPilha<Tipo>.SetIndiceProximoItem(const Value: Integer);
begin
  FIndiceProximoItem := Value;
end;

end.

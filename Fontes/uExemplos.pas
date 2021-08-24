unit uExemplos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections, uCachorro, uTroca, uPilha, uFabrica;

type
  TfrmExemplos = class(TForm)
    gbImplementacao: TGroupBox;
    btnMetodo: TButton;
    btnClasse: TButton;
    gbPilha: TGroupBox;
    btnString: TButton;
    btnInteger: TButton;
    btnTStack: TButton;
    gbFabrica: TGroupBox;
    btnFabrica: TButton;
    procedure btnMetodoClick(Sender: TObject);
    procedure btnClasseClick(Sender: TObject);
    procedure btnStringClick(Sender: TObject);
    procedure btnIntegerClick(Sender: TObject);
    procedure btnTStackClick(Sender: TObject);
    procedure btnFabricaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplos: TfrmExemplos;

implementation

{$R *.dfm}

procedure TfrmExemplos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    Close;
end;

procedure TfrmExemplos.btnMetodoClick(Sender: TObject);
var
  LCachorro01: ICachorro;
  LCachorro02: ICachorro;

  LNumero01: Integer;
  LNumero02: Integer;

  LData01: TDateTime;
  LData02: TDateTime;
begin
  LCachorro01 := TCachorro.Create('Tobias');
  LCachorro02 := TCachorro.Create('Lola');

  LCachorro01.Latir;
  LCachorro02.Latir;

  ShowMessage('Trocando...');
  TTroca.Trocar<ICachorro>(LCachorro01, LCachorro02);

  LCachorro01.Latir;
  LCachorro02.Latir;

  LNumero01 := 10;
  LNumero02 := 20;

  ShowMessage('Número 01: ' + IntToStr(LNumero01));
  ShowMessage('Número 02: ' + IntToStr(LNumero02));

  ShowMessage('Trocando...');
  TTroca.Trocar<Integer>(LNumero01, LNumero02);

  ShowMessage('Número 01: ' + IntToStr(LNumero01));
  ShowMessage('Número 02: ' + IntToStr(LNumero02));

  LData01 := StrToDate('27/08/1994');
  LData02 := StrToDate('06/09/2021');

  ShowMessage('Data 01: ' + FormatDateTime('dd/mm/yyyy', LData01));
  ShowMessage('Data 02: ' + FormatDateTime('dd/mm/yyyy', LData02));

  ShowMessage('Trocando...');
  TTroca.Trocar<TDateTime>(LData01, LData02);

  ShowMessage('Data 01: ' + FormatDateTime('dd/mm/yyyy', LData01));
  ShowMessage('Data 02: ' + FormatDateTime('dd/mm/yyyy', LData02));
end;

procedure TfrmExemplos.btnClasseClick(Sender: TObject);
var
  LCachorro01: ICachorro;
  LCachorro02: ICachorro;

  LNumero01: Integer;
  LNumero02: Integer;

  LData01: TDateTime;
  LData02: TDateTime;

  LTrocaCachorro: ITroca<ICachorro>;
  LTrocaNumero: ITroca<Integer>;
  LTrocaData: ITroca<TDateTime>;
begin
  LCachorro01 := TCachorro.Create('Tobias');
  LCachorro02 := TCachorro.Create('Lola');

  LTrocaCachorro := TTroca<ICachorro>.Create;
  LTrocaCachorro.Valor01 := LCachorro01;
  LTrocaCachorro.Valor02 := LCachorro02;

  LTrocaCachorro.Valor01.Latir;
  LTrocaCachorro.Valor02.Latir;

  ShowMessage('Trocando...');

  LTrocaCachorro.Trocar;
  LTrocaCachorro.Valor01.Latir;
  LTrocaCachorro.Valor02.Latir;

  LNumero01 := 10;
  LNumero02 := 20;

  LTrocaNumero := TTroca<Integer>.Create;
  LTrocaNumero.Valor01 := LNumero01;
  LTrocaNumero.Valor02 := LNumero02;

  ShowMessage('Número 01: ' + IntToStr(LTrocaNumero.Valor01));
  ShowMessage('Número 02: ' + IntToStr(LTrocaNumero.Valor02));

  ShowMessage('Trocando...');

  LTrocaNumero.Trocar;
  ShowMessage('Número 01: ' + IntToStr(LTrocaNumero.Valor01));
  ShowMessage('Número 02: ' + IntToStr(LTrocaNumero.Valor02));

  LData01 := StrToDate('27/08/1994');
  LData02 := StrToDate('06/09/2021');

  LTrocaData := TTroca<TDateTime>.Create;
  LTrocaData.Valor01 := LData01;
  LTrocaData.Valor02 := LData02;

  ShowMessage('Data 01: ' + FormatDateTime('dd/mm/yyyy', LTrocaData.Valor01));
  ShowMessage('Data 02: ' + FormatDateTime('dd/mm/yyyy', LTrocaData.Valor02));

  ShowMessage('Trocando...');

  LTrocaData.Trocar;
  ShowMessage('Data 01: ' + FormatDateTime('dd/mm/yyyy', LTrocaData.Valor01));
  ShowMessage('Data 02: ' + FormatDateTime('dd/mm/yyyy', LTrocaData.Valor02));
end;

procedure TfrmExemplos.btnStringClick(Sender: TObject);
var
  LPilha: IPilha<string>;
begin
  LPilha := TPilha<string>.Create(255);
  LPilha.Empilhar('Tobias');
  LPilha.Empilhar('Lola');
  LPilha.Empilhar('Snoopy');

  ShowMessage('Desempilhar: ' + LPilha.Desempilhar);
  ShowMessage('Desempilhar: ' + LPilha.Desempilhar);
  ShowMessage('Desempilhar: ' + LPilha.Desempilhar);
end;

procedure TfrmExemplos.btnIntegerClick(Sender: TObject);
var
  LPilha: IPilha<Integer>;
begin
  LPilha := TPilha<Integer>.Create(10);
  LPilha.Empilhar(10);
  LPilha.Empilhar(20);
  LPilha.Empilhar(30);

  ShowMessage('Desempilhar: ' + IntToStr(LPilha.Desempilhar));
  ShowMessage('Desempilhar: ' + IntToStr(LPilha.Desempilhar));
  ShowMessage('Desempilhar: ' + IntToStr(LPilha.Desempilhar));
end;

procedure TfrmExemplos.btnTStackClick(Sender: TObject);
var
  LPilha: TStack<string>;
begin
  LPilha := TStack<string>.Create;
  LPilha.Push('Tobias');
  LPilha.Push('Lola');
  LPilha.Push('Snoopy');

  ShowMessage('Desempilhar: ' + LPilha.Pop);
  ShowMessage('Desempilhar: ' + LPilha.Pop);
  ShowMessage('Desempilhar: ' + LPilha.Pop);

  LPilha.Free;
end;

procedure TfrmExemplos.btnFabricaClick(Sender: TObject);
var
  LTroca: ITroca<TCachorro>;
begin
  LTroca := TFabrica<TCachorro>.CriarTroca;
  LTroca.Valor01.Nome := 'Tobias';
  LTroca.Valor02.Nome := 'Lola';

  LTroca.Valor01.Latir;
  LTroca.Valor02.Latir;

  ShowMessage('Trocando...');
  LTroca.Trocar;

  LTroca.Valor01.Latir;
  LTroca.Valor02.Latir;
end;

end.

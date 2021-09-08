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

  // Trocar

  LCachorro01.Latir;
  LCachorro02.Latir;

  LNumero01 := 10;
  LNumero02 := 20;

  ShowMessage('Número 01: ' + IntToStr(LNumero01));
  ShowMessage('Número 02: ' + IntToStr(LNumero02));

  // Trocar

  ShowMessage('Número 01: ' + IntToStr(LNumero01));
  ShowMessage('Número 02: ' + IntToStr(LNumero02));

  LData01 := StrToDate('27/08/1994');
  LData02 := StrToDate('06/09/2021');

  ShowMessage('Data 01: ' + FormatDateTime('dd/mm/yyyy', LData01));
  ShowMessage('Data 02: ' + FormatDateTime('dd/mm/yyyy', LData02));

  // Trocar

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
begin
  LCachorro01 := TCachorro.Create('Tobias');
  LCachorro02 := TCachorro.Create('Lola');

  // Trocar

  LNumero01 := 10;
  LNumero02 := 20;

  // Trocar

  LData01 := StrToDate('27/08/1994');
  LData02 := StrToDate('06/09/2021');

  // Trocar
end;

procedure TfrmExemplos.btnStringClick(Sender: TObject);
begin
//
end;

procedure TfrmExemplos.btnIntegerClick(Sender: TObject);
begin
//
end;

procedure TfrmExemplos.btnTStackClick(Sender: TObject);
begin
//
end;

procedure TfrmExemplos.btnFabricaClick(Sender: TObject);
begin
//
end;

end.

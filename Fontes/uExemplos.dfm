object frmExemplos: TfrmExemplos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Implementando Generics'
  ClientHeight = 129
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object gbImplementacao: TGroupBox
    Left = 8
    Top = 8
    Width = 125
    Height = 82
    Caption = '  Implementa'#231#227'o: '
    TabOrder = 0
    object btnMetodo: TButton
      Left = 12
      Top = 18
      Width = 100
      Height = 25
      Caption = 'M'#233'todo'
      TabOrder = 0
      OnClick = btnMetodoClick
    end
    object btnClasse: TButton
      Left = 12
      Top = 47
      Width = 100
      Height = 25
      Caption = 'Classe'
      TabOrder = 1
      OnClick = btnClasseClick
    end
  end
  object gbPilha: TGroupBox
    Left = 139
    Top = 8
    Width = 125
    Height = 113
    Caption = '  Pilha: '
    TabOrder = 1
    object btnString: TButton
      Left = 12
      Top = 18
      Width = 100
      Height = 25
      Caption = 'String'
      TabOrder = 0
      OnClick = btnStringClick
    end
    object btnInteger: TButton
      Left = 12
      Top = 47
      Width = 100
      Height = 25
      Caption = 'Integer'
      TabOrder = 1
      OnClick = btnIntegerClick
    end
    object btnTStack: TButton
      Left = 12
      Top = 76
      Width = 100
      Height = 25
      Caption = 'TStack'
      TabOrder = 2
      OnClick = btnTStackClick
    end
  end
  object gbFabrica: TGroupBox
    Left = 270
    Top = 8
    Width = 125
    Height = 54
    Caption = '  Constraints: '
    TabOrder = 2
    object btnFabrica: TButton
      Left = 12
      Top = 18
      Width = 100
      Height = 25
      Caption = 'TFabrica'
      TabOrder = 0
      OnClick = btnFabricaClick
    end
  end
end

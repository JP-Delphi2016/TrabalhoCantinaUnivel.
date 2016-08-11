unit usistemacantina;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnMontar: TButton;
    btnRefazer: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    I_Valor: TEdit;
    G_Salada: TGroupBox;
    G_Pao: TGroupBox;
    G_Hamburguer: TGroupBox;
    G_Ingredientes: TGroupBox;
    Label1: TLabel;
    L_NomeLanche: TLabel;
    Label3: TLabel;
    P_R0: TRadioButton;
    P_R1: TRadioButton;
    P_R2: TRadioButton;
    P_R3: TRadioButton;
    H_R0: TRadioButton;
    H_R1: TRadioButton;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.


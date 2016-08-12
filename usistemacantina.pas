unit usistemacantina;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, eventlog, FileUtil, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Variants;

type

  { TFormLanche }

  TFormLanche = class(TForm)
    btnMontar: TButton;
    btnRefazer: TButton;
    C_Bacon: TCheckBox;
    C_Alface: TCheckBox;
    C_Tomate: TCheckBox;
    C_Rucula: TCheckBox;
    C_Calabresa: TCheckBox;
    C_Ovo: TCheckBox;
    C_Picles: TCheckBox;
    C_Maionese: TCheckBox;
    C_Cream: TCheckBox;
    C_Presunto: TCheckBox;
    C_Prato: TCheckBox;
    C_Cheddar: TCheckBox;
    Edit1: TEdit;
    EventLog1: TEventLog;
    G_Salada: TGroupBox;
    G_Pao: TGroupBox;
    G_Hamburguer: TGroupBox;
    G_Ingredientes: TGroupBox;
    I_Valor: TEdit;
    Label1: TLabel;
    L_NomeLanche: TLabel;
    Label3: TLabel;
    P_R0: TRadioButton;
    P_R1: TRadioButton;
    P_R2: TRadioButton;
    P_R3: TRadioButton;
    H_R0: TRadioButton;
    H_R1: TRadioButton;
    StatusBar: TStatusBar;
    procedure btnRefazerClick(Sender: TObject);
    procedure C_AlfaceChange(Sender: TObject);
    procedure C_BaconChange(Sender: TObject);
    procedure C_CalabresaChange(Sender: TObject);
    procedure C_CheddarChange(Sender: TObject);
    procedure C_CreamChange(Sender: TObject);
    procedure C_MaioneseChange(Sender: TObject);
    procedure C_OvoChange(Sender: TObject);
    procedure C_PiclesChange(Sender: TObject);
    procedure C_PratoChange(Sender: TObject);
    procedure C_PresuntoChange(Sender: TObject);
    procedure C_RuculaChange(Sender: TObject);
    procedure C_TomateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure verificaMontar();
    procedure mostraHint(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormLanche: TFormLanche;

implementation

{$R *.lfm}

{ TFormLanche }

procedure TFormLanche.C_MaioneseChange(Sender: TObject);
begin
  if(C_Maionese.Checked) then
     C_Cream.Enabled:=false
  else
     C_Cream.Enabled:=true;
   verificaMontar();
end;

procedure TFormLanche.C_OvoChange(Sender: TObject);
begin
   verificaMontar();
end;

procedure TFormLanche.C_PiclesChange(Sender: TObject);
begin
   verificaMontar();
end;

procedure TFormLanche.C_PratoChange(Sender: TObject);
begin
  if(C_Prato.Checked) then
     C_Cheddar.Enabled:=false
  else
     C_Cheddar.Enabled:=true;
   verificaMontar();
end;

procedure TFormLanche.C_PresuntoChange(Sender: TObject);
begin
   verificaMontar();
end;

procedure TFormLanche.C_RuculaChange(Sender: TObject);
begin
  if(C_Rucula.Checked) then
     C_Alface.Enabled:=false
  else
     C_Alface.Enabled:=true;
   verificaMontar();
end;

procedure TFormLanche.C_TomateChange(Sender: TObject);
begin
   verificaMontar();
end;

procedure TFormLanche.FormCreate(Sender: TObject);
begin
  Application.OnHint := @mostraHint;
end;

procedure TFormLanche.C_CreamChange(Sender: TObject);
begin
  if(C_Cream.Checked) then
     C_Maionese.Enabled:=false
  else
     C_Maionese.Enabled:=true;
   verificaMontar();

end;

procedure TFormLanche.C_CheddarChange(Sender: TObject);
begin
  if(C_Cheddar.Checked) then
     C_Prato.Enabled:=false
  else
     C_Prato.Enabled:=true;
   verificaMontar();

end;

procedure TFormLanche.C_AlfaceChange(Sender: TObject);
begin
  if(C_Alface.Checked) then
     C_Rucula.Enabled:=false
  else
     C_Rucula.Enabled:=true;
   verificaMontar();
end;

procedure TFormLanche.btnRefazerClick(Sender: TObject);
begin
    C_Bacon.Checked := false;
    C_Calabresa.Checked := false;
    C_Ovo.Checked := false;
    C_Picles.Checked := false;
    C_Maionese.Checked := false;
    C_Cream.Checked := false;
    C_Presunto.Checked := false;
    C_Prato.Checked := false;
    C_Cheddar.Checked := false;
    C_Alface.Checked := false;
    C_Tomate.Checked := false;
    C_Rucula.Checked := false;
    P_R0.Checked := true;
    H_R0.Checked := true;
    btnMontar.Enabled:=false;
    L_NomeLanche.Caption:='SELECIONE OS INGREDIENTES...';
    I_Valor.Caption:='';
    I_Valor.Enabled:=false;
end;

procedure TFormLanche.C_BaconChange(Sender: TObject);
begin
   verificaMontar();
end;

procedure TFormLanche.C_CalabresaChange(Sender: TObject);
begin
   verificaMontar();
end;

procedure TFormLanche.verificaMontar();
begin
    if (
       C_Bacon.Checked or
       C_Calabresa.Checked or
       C_Ovo.Checked or
       C_Picles.Checked or
       C_Maionese.Checked or
       C_Cream.Checked or
       C_Presunto.Checked or
       C_Prato.Checked or
       C_Cheddar.Checked
    ) then
       btnMontar.Enabled:=true
    else
       btnMontar.Enabled:=false;

end;

procedure TFormLanche.mostraHint(Sender: TObject);
begin
      StatusBar.Panels[0].Text:=Application.Hint;
end;

end.


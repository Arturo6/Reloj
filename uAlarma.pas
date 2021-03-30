unit uAlarma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, EditBtn,
  Buttons, IniFiles;

type

  { TfAlarma }

  TfAlarma = class(TForm)
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    lblAlarma: TLabel;
    edtHora: TTimeEdit;
    dlgSonidos: TOpenDialog;
    SpeedButton1: TSpeedButton;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate ( Sender: TObject ) ;
    procedure SpeedButton1Click ( Sender: TObject ) ;
  private

  public

  end;

var
  fAlarma: TfAlarma;

implementation
uses uPrincipal;

{$R *.frm}

{ TfAlarma }

procedure TfAlarma.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfAlarma.FormActivate ( Sender: TObject ) ;
var
  Fichero: TIniFile;
begin
  Fichero := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'Reloj.ini' );
  uPrincipal.Sonido := Fichero.ReadString( 'Alarma', 'Ruta', ExtractFilePath( Application.ExeName ) + 'alarma.wav' );
  Fichero.Free;
end;

procedure TfAlarma.SpeedButton1Click ( Sender: TObject ) ;
var
  Fichero: TIniFile;
begin
  if dlgSonidos.Execute then begin
     uPrincipal.Sonido := dlgSonidos.FileName;
     Fichero := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'Reloj.ini' );
     Fichero.WriteString( 'Alarma', 'Ruta', dlgSonidos.FileName );
     Fichero.Free;
  end;
end;

procedure TfAlarma.btnAceptarClick(Sender: TObject);
begin
  uPrincipal.Alarma := edtHora.Text;
  uPrincipal.fReloj.mnuAlarma.Caption := 'Alarma -> ' + edtHora.Text;
  Close;
end;

end.


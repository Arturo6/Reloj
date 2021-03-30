unit uSonido;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Dialogs, Buttons, StdCtrls, MMSystem, IniFiles;

type

  { TfSonido }

  TfSonido = class ( TForm )
    btnProbar: TBitBtn;
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlarma: TSpeedButton;
    dlgSonidos: TOpenDialog;
    edtAlarma: TEdit;
    lblAlarma: TLabel;
    procedure btnAceptarClick ( Sender: TObject ) ;
    procedure btnAlarmaClick ( Sender: TObject ) ;
    procedure btnCancelarClick ( Sender: TObject ) ;
    procedure btnProbarClick ( Sender: TObject ) ;
    procedure FormCreate ( Sender: TObject ) ;
  private

  public

  end;

var
  fSonido: TfSonido;

implementation
uses uPrincipal;

{$R *.frm}

{ TfSonido }

procedure TfSonido.btnProbarClick ( Sender: TObject ) ;
begin
  // Pueba el sonido seleccionado
  SndPlaySound( PChar( edtAlarma.Text ), snd_ASync );
end;

procedure TfSonido.FormCreate ( Sender: TObject ) ;
var
  Fichero: TIniFile;
begin
  Fichero := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'Reloj.ini' );
  edtAlarma.Text := Fichero.ReadString( 'Alarma', 'Ruta', ExtractFilePath( Application.ExeName ) + 'alarma-1.wav' );
  Fichero.Free;
end;

procedure TfSonido.btnAlarmaClick ( Sender: TObject ) ;
begin
  // Abre el buscador de sonidos
  if dlgSonidos.Execute then
    edtAlarma.Text := dlgSonidos.FileName;
end;

procedure TfSonido.btnCancelarClick ( Sender: TObject ) ;
begin
  // Se cancela la busqueda de sonido
  Close;
end;

procedure TfSonido.btnAceptarClick ( Sender: TObject ) ;
var
  Fichero: TIniFile;
begin
  uPrincipal.Sonido := dlgSonidos.FileName;

  Fichero := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'Reloj.ini' );
  Fichero.WriteString( 'Alarma', 'Ruta', PChar( dlgSonidos.FileName ) );
  Fichero.Free;

  Close;
end;

end.


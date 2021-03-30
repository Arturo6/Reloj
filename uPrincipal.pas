{
  Programa Reloj

  Pequeño programa para windows, escrito bajo Lazarus, que muestra un reloj en pantalla,
  incluyendo la fecha y el día de la semana.

  Se puede modificar el color y el tamaño de la fuente, así como la posición. Estos datos
  se guardan en un archivo de configuración para retomarlos al momento de iniciar de nuevo
  el programa.

  Se puede establecer una alarma que sonará una sola vez y se desactivará.

  Copyright (C) 2021, Arturo Molina (amolinaj@gmail.com)

  This source is free software; you can redistribute it and/or modify it under the terms of the GNU General Public
  License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later
  version.

  This code is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied
  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

  A copy of the GNU General Public License is available on the World Wide Web at
  <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing to the Free Software Foundation, Inc., 51
  Franklin Street - Fifth Floor, Boston, MA 02110-1335, USA.
}

unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Menus, windows, IniFiles, Classes, uTamano, uAlarma, MMSystem;

type

  { TfReloj }

  TfReloj = class(TForm)
    Colorear: TColorDialog;
    lblDia: TLabel;
    lblHora: TLabel;
    lblFecha: TLabel;
    MenuItem1: TMenuItem;
    mnuTamano: TMenuItem;
    mnuAlarma: TMenuItem;
    mnuCerrar: TMenuItem;
    mnuColor: TMenuItem;
    pMenu: TPopupMenu;
    PopupMenu1: TPopupMenu;
    Reloj: TTimer;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lblFechaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblFechaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lblFechaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure mnuAlarmaClick(Sender: TObject);
    procedure mnuCerrarClick(Sender: TObject);
    procedure mnuColorClick(Sender: TObject);
    procedure mnuTamanoClick(Sender: TObject);
    procedure RelojTimer(Sender: TObject);
  private
    procedure Fondo;
    procedure GuardaConf;

    var DragPoint: TPoint;
    var Draggings: Boolean;
  public

  end;

var
  fReloj: TfReloj;
  Tamano: integer;
  Alarma, Sonido: String;

implementation

{$R *.frm}

{ TfReloj }

procedure TfReloj.FormCreate(Sender: TObject);
var
   Fichero: TIniFile;
begin
  // Abre (o crea) el archivo ini para posición y color
  Fichero := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'Reloj.ini' );
  fReloj.Left := Fichero.ReadInteger( 'Posicion', 'X', 10 );
  fReloj.Top := Fichero.ReadInteger( 'Posicion', 'Y', 10 );
  lblHora.Font.Color := StringToColor( Fichero.ReadString( 'Colores', 'Color', 'clBlue' ) );
  lblFecha.Font.Color:= StringToColor( Fichero.ReadString( 'Colores', 'Color', 'clBlue' ) );
  lblDia.Font.Color  := StringToColor( Fichero.ReadString( 'Colores', 'Color', 'clBlue' ) );
  Tamano := Fichero.ReadInteger( 'Fuente', 'Tamaño', 40 );
  lblHora.Font.Size  := Tamano;
  lblFecha.Font.Size := Tamano div 2;
  lblDia.Font.Size   := Tamano div 3;
  Sonido := Fichero.ReadString( 'Alarma', 'Ruta', ExtractFilePath( Application.ExeName ) + 'alarma.wav' );
  Fichero.Free;
  Fondo;
  // Muestra hora y fecha
  lblHora.Caption := TimeToStr( Now() );
  lblFecha.Caption := DateToStr( Now );
  lblDia.Caption   := FormatDateTime( 'dddd', Date() );
end;

procedure TfReloj.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  GuardaConf;
end;

{*************************************************************************************************************
*
* Con estos tres procedimientos podemos mover el formulario por la pantalla al pulsar sobre un objeto
* (en este caso, al pulsar sobre las etiquetas)
*
*************************************************************************************************************}
procedure TfReloj.lblFechaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Draggings := true;
  DragPoint := Point(X, Y);
end;

procedure TfReloj.lblFechaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if Draggings then
  begin
    Left := Left + X - DragPoint.X;
    Top := Top + Y - DragPoint.Y;
  end;
end;

procedure TfReloj.lblFechaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Draggings := false;
  GuardaConf;
end;

{*************************************************************************************************************}

procedure TfReloj.mnuAlarmaClick(Sender: TObject);
begin
  // Formulario para establecer la alarma
  with TfAlarma.Create(Application) do
  try
     ShowModal;
  finally
    Free;
  end;
end;

procedure TfReloj.mnuCerrarClick(Sender: TObject);
begin
  // Cierra el programa
  Close;
end;

procedure TfReloj.mnuColorClick(Sender: TObject);
begin
  // Cambia el color de las etiquetas
  if Colorear.Execute then begin
    if ColorToString( Colorear.Color ) = 'clRed' then
      Colorear.Color := StringToColor( 'clFuchsia' );
    lblHora.Font.Color:=Colorear.Color;
    lblFecha.Font.Color:=Colorear.Color;
    lblDia.Font.Color:=Colorear.Color;
    GuardaConf;
  end;
end;

procedure TfReloj.mnuTamanoClick(Sender: TObject);
begin
  // Formulario para cambiar el tamaño de las etiquetas
  with TfTamano.Create(Application) do
  try
     ShowModal;
  finally
    Free;
  end;

  // Cambia el tamaño de las etiquetas
  lblHora.Font.Size := Tamano;
  lblFecha.Font.Size:= Tamano div 2;
  lblDia.Font.Size  := Tamano div 3;

  GuardaConf;
end;

procedure TfReloj.RelojTimer(Sender: TObject);
begin
  // Actualiza la hora
  lblHora.Caption := TimeToStr( Now() );
  if FormatDateTime( 'HH:MM', Now() ) = Alarma then begin
     SndPlaySound( PChar( Sonido ), snd_ASync );
     Alarma := '';
     mnuAlarma.Caption := 'Alarma'
  end;
end;

procedure TfReloj.Fondo;
begin
  // Hace el fondo transparente
  Color:=clRed;
  SetWindowLongPtr( Self.Handle, GWL_EXSTYLE, GetWindowLongPtr( Self.Handle, GWL_EXSTYLE ) or WS_EX_LAYERED );
  SetLayeredWindowAttributes( Self.Handle, clRed, 0, LWA_COLORKEY );
end;

procedure TfReloj.GuardaConf;
var
  Fichero: TIniFile;
begin
  // Guarda en el archivo ini posición y color
  Fichero := TIniFile.Create( ExtractFilePath(Application.ExeName) + 'Reloj.ini' );
  Fichero.WriteInteger( 'Posicion', 'X', fReloj.Left );
  Fichero.WriteInteger( 'Posicion', 'Y', fReloj.Top );
  Fichero.WriteString( 'Colores', 'Color', ColorToString( lblHora.Font.Color ) );
  Fichero.WriteInteger( 'Fuente', 'Tamaño', lblHora.Font.Size );
  Fichero.WriteString( 'Alarma', 'Ruta', Sonido );
  Fichero.Free;
end;

end.


unit uAlarma;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Forms, Controls, Dialogs, StdCtrls, EditBtn,
  Buttons, uSonido, Classes;

type

  { TfAlarma }

  TfAlarma = class(TForm)
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    lblHoraAlarma: TLabel;
    edtHora: TTimeEdit;
    btnAlarma: TSpeedButton;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlarmaClick ( Sender: TObject ) ;
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

procedure TfAlarma.btnAlarmaClick ( Sender: TObject ) ;
begin
  // Formulario para establecer el sonido de la alarma
  with TfSonido.Create(Application) do
  try
     ShowModal;
  finally
    Free;
  end;
end;

procedure TfAlarma.btnAceptarClick(Sender: TObject);
begin
  uPrincipal.Alarma := edtHora.Text;
  uPrincipal.fReloj.mnuAlarma.Caption := 'Alarma -> ' + edtHora.Text;
  Close;
end;

end.


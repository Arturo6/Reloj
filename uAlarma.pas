unit uAlarma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, EditBtn,
  Buttons;

type

  { TfAlarma }

  TfAlarma = class(TForm)
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    lblAlarma: TLabel;
    edtHora: TTimeEdit;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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

procedure TfAlarma.btnAceptarClick(Sender: TObject);
begin
  uPrincipal.Alarma := edtHora.Text;
  Close;
end;

end.


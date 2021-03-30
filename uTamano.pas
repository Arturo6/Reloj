unit uTamano;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Forms, Graphics, StdCtrls, Buttons;

type

  { TfTamano }

  TfTamano = class(TForm)
    btnAceptar: TBitBtn;
    btnCancelar: TBitBtn;
    cbTamano: TComboBox;
    lblTamano: TLabel;
    lblHora: TLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbTamanoChange(Sender: TObject);
  private

  public

  end;

var
  fTamano: TfTamano;

implementation
uses uPrincipal;

{$R *.frm}

{ TfTamano }

procedure TfTamano.cbTamanoChange(Sender: TObject);
begin
  lblHora.Font.Size:= StrToInt( cbTamano.Items[ cbTamano.ItemIndex ] );
end;

procedure TfTamano.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfTamano.btnAceptarClick(Sender: TObject);
begin
  uPrincipal.Tamano := StrToInt( cbTamano.Items[ cbTamano.ItemIndex ] );
  Close;
end;

end.


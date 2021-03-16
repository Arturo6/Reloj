object Form1: TForm1
  Left = 20
  Height = 176
  Top = 67
  Width = 176
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 176
  ClientWidth = 176
  KeyPreview = True
  PopupMenu = PopupMenu1
  LCLVersion = '6.8'
  object DTAnalogClock1: TDTAnalogClock
    Left = 0
    Height = 176
    Top = 0
    Width = 176
    Enabled = True
  end
  object PopupMenu1: TPopupMenu
    Left = 10
    Top = 10
    object MenuItem1: TMenuItem
      Caption = 'Salir'
      OnClick = MenuItem1Click
    end
  end
end

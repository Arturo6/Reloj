object fAlarma: TfAlarma
  Left = 358
  Height = 155
  Top = 28
  Width = 192
  Caption = 'Alarma'
  ClientHeight = 155
  ClientWidth = 192
  OnActivate = FormActivate
  Position = poScreenCenter
  LCLVersion = '7.3'
  object lblAlarma: TLabel
    Left = 8
    Height = 15
    Top = 9
    Width = 95
    Caption = 'Introduzca la hora'
    ParentColor = False
  end
  object btnAceptar: TBitBtn
    Left = 9
    Height = 30
    Top = 115
    Width = 75
    Caption = '&Aceptar'
    Default = True
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000064000000640000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001007B001D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010D9019A3149927DC0A870F33000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000010D9019A12CBA5AF937C771FF18A031DB0A870F330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010D9019A12CBA5AF937C871FF37C871FF37C771FF18A031DB0A87
      0F33000000000000000000000000000000000000000000000000000000000000
      00010D9019A32DBC5DF837C871FF2DBC5DF819A133E337C771FF37C771FF179E
      30DB0A870F330000000000000000000000000000000000000000000000000A8D
      159B2DBC5DF837C871FF2DBC5DF80D9019A30A890F34179E30DB37C771FF37C7
      71FF179E30DB0A870F3300000000000000000000000000000000000000000587
      0A31169D2EDA2EBD5EFA0E901AA6008000020000000005870A31169D2EDA37C7
      70FF37C771FF18A031DB0A870F33000000000000000000000000000000000000
      00000A870F330A8D149B000000010000000000000000000000000A870F33179E
      30DB37C771FF37C771FF179E30DB0A870F330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000587
      0A31169D2EDA37C770FF37C771FF18A031DB0A870F3300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A870F33179E30DB37C771FF2DBC5DF80A8D159B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005870A31139928DB0E901AA60000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B001D000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000
    }
    OnClick = btnAceptarClick
    TabOrder = 0
  end
  object btnCancelar: TBitBtn
    Left = 104
    Height = 30
    Top = 115
    Width = 75
    Cancel = True
    Caption = 'Cancelar'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000064000000640000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000500B6690500B669000000000000000000000000000000000000
      0000000000000500B6690500B669000000000000000000000000000000000000
      00000200B5680C00CFE90D00D0EB0500B66D0000000000000000000000000000
      00000200B56B0C00CFE90D00D0EB0500B86B0000000000000000000000000000
      00000200B5680C00CFE91400E6FF0D00D0EB0500B66D00000000000000000200
      B56B0C00CFE91400E6FF0D00D0EB0500B86B0000000000000000000000000000
      0000000000000300B7660C00CFE91400E6FF0D00D1EB0500B66D0300B6650C00
      CFE91400E6FF0D00D1EB0500B66D000000000000000000000000000000000000
      000000000000000000000500B66C0C00CFEA1400E6FF0C00D0EA0C00D0EA1400
      E6FF0C00CFEA0500B66C00000000000000000000000000000000000000000000
      00000000000000000000000000000200B56B0C00D0E81400E6FF1400E6FF0D00
      D0EB0500B66D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000200B56B0C00D0E81400E6FF1400E6FF0D00
      D0EB0500B66D0000000000000000000000000000000000000000000000000000
      000000000000000000000500B66C0C00CFEA1400E6FF0C00D0EA0C00D0EA1400
      E6FF0C00CFEA0500B66C00000000000000000000000000000000000000000000
      0000000000000300B6650C00CFE91400E6FF0D00D1EB0500B66D0300B7660C00
      CFE91400E6FF0D00D1EB0500B66D000000000000000000000000000000000000
      00000200B5680C00CFE91400E6FF0D00D0EB0500B66D00000000000000000200
      B56B0C00CFE91400E6FF0D00D0EB0500B86B0000000000000000000000000000
      00000200B5680C00CFE90D00D0EB0500B66D0000000000000000000000000000
      00000200B56B0C00CFE90D00D0EB0500B86B0000000000000000000000000000
      0000000000000500B66C0500B66C000000000000000000000000000000000000
      0000000000000500B6690500B669000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000
    }
    OnClick = btnCancelarClick
    TabOrder = 1
  end
  object edtHora: TTimeEdit
    Left = 8
    Height = 23
    Top = 29
    Width = 171
    ButtonWidth = 23
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 2
  end
  object SpeedButton1: TSpeedButton
    Left = 81
    Height = 30
    Hint = 'Elegir sonido de alarma'
    Top = 66
    Width = 30
    Glyph.Data = {
      C2040000424DC204000000000000420000002800000018000000180000000100
      100003000000800400006400000064000000000000000000000000F80000E007
      00001F0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000410861084108000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      2000E3180421E318C31882102000000000000000000000000000000000000000
      000000000000000000000000000000000421452924210421E318C31882100000
      0000000000000000000000000000000000000000000000000000000000002000
      A631C739452924210421E318A210410800000000000000000000000000000000
      00000000000000000000000000008210694A694A084245290421E318C3188210
      0000000000000000000000000000000000000000000000000000000000000000
      EB5A0C63AA52494A65290421E318C31800000000000000000000000000000000
      00000000000000000000000000000000494AAE734D6BEB5A8A5208424529E318
      6108000000002000000000000000000000000000000000000000000000000000
      00008A528E738E730C63084261084529A2100000610882102000000000000000
      0000000000000000000000000000000000000000610824218210000000006529
      E318000020006108821020000000000000000000000000000000000000000000
      0000000000000000000000000000242165294108000000004529610800000000
      0000000000000000000000000000000000000000000000000000000000004108
      C739C31800000000863124210000000000000000000000000000000000000000
      00000000000000000000000000000000C739042100000000A631242100000000
      0000000000000000000000000000000000000000000000000000000000000000
      A631863120000000E739C3180000000000000000000000000000000000000000
      00000000000000000000000000000000A2102842C31841080842A21000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028422421A631652920000000000000000000000000000000000000000000
      0000000000000000000000000000000000002842E7398631C318000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002421CB5A4529000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000002842E3180000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000E3180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000
    }
    OnClick = SpeedButton1Click
    ShowHint = True
    ParentShowHint = False
  end
  object dlgSonidos: TOpenDialog
    Title = 'Abrir un archivo de sonido'
    DefaultExt = '.wav'
    Filter = 'Archivos de sonido wav|*.wav'
    Options = [ofAllowMultiSelect, ofExtensionDifferent, ofFileMustExist, ofNoNetworkButton, ofEnableSizing, ofViewDetail, ofAutoPreview]
    Left = 138
    Top = 69
  end
end

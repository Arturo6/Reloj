object fTamano: TfTamano
  Left = 358
  Height = 118
  Top = 28
  Width = 332
  Caption = 'Tamaño del texto'
  ClientHeight = 118
  ClientWidth = 332
  Position = poScreenCenter
  LCLVersion = '7.2'
  object cbTamano: TComboBox
    Left = 6
    Height = 23
    Top = 33
    Width = 100
    Align = alCustom
    ItemHeight = 15
    ItemIndex = 0
    Items.Strings = (
      '40'
      '38'
      '36'
      '34'
      '32'
      '30'
      '28'
      '26'
      '24'
      '22'
      '20'
      '18'
    )
    OnChange = cbTamanoChange
    TabOrder = 0
    Text = '40'
  end
  object lblHora: TLabel
    Left = 120
    Height = 48
    Top = 16
    Width = 208
    Align = alCustom
    Alignment = taCenter
    AutoSize = False
    Caption = '23:23:23'
    Font.Color = clBlue
    Font.Height = -53
    Font.Style = [fsBold]
    Layout = tlCenter
    ParentColor = False
    ParentFont = False
  end
  object btnAceptar: TBitBtn
    Left = 160
    Height = 30
    Top = 80
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
    TabOrder = 1
  end
  object btnCancelar: TBitBtn
    Left = 253
    Height = 30
    Top = 80
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
    TabOrder = 2
  end
  object lblTamano: TLabel
    Left = 8
    Height = 15
    Top = 16
    Width = 100
    Caption = 'Seleccione tamaño'
    ParentColor = False
  end
end

object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object IMenu: TPanel
    Left = 0
    Top = 41
    Width = 201
    Height = 400
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 399
    object TAbrirItem: TSpeedButton
      Left = 40
      Top = 44
      Width = 121
      Height = 58
      DisabledImageName = 'BtnItem'
      Caption = 'Itens'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Sitka Text'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 620
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 622
      Height = 35
      Align = alTop
      Caption = 'Casdastro de Itens'
      Color = clInfoText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -27
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 234
    end
  end
end

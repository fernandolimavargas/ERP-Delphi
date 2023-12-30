object form3: Tform3
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 628
    Height = 401
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBResultado: TDBGrid
      Left = 1
      Top = 1
      Width = 626
      Height = 399
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 224
    ExplicitWidth = 185
    object btnRelatorio: TButton
      Left = 504
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Relat'#243'rio'
      TabOrder = 0
    end
  end
  object frxReport1: TfrxReport
    Version = '2023.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.054995578710000000
    ReportOptions.LastChange = 45257.054995578710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 224
    Datasets = <>
    Variables = <>
    Style = <>
  end
end

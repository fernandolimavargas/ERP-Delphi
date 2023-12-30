object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
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
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 224
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 240
      Top = 163
      Width = 40
      Height = 15
      Caption = 'Usu'#225'rio'
    end
    object Label2: TLabel
      Left = 240
      Top = 219
      Width = 32
      Height = 15
      Caption = 'Senha'
    end
    object tUsuario: TEdit
      Left = 240
      Top = 176
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object tSenha: TEdit
      Left = 240
      Top = 240
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object btnEntrar: TButton
      Left = 240
      Top = 288
      Width = 75
      Height = 25
      Caption = 'Entrar'
      TabOrder = 2
    end
  end
end

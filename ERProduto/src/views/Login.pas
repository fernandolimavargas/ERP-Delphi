unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, FormPrincipal;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    tUsuario: TEdit;
    tSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnEntrar: TButton;
    procedure usuarioValido (Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.usuarioValido(Sender: TObject);
  var
  usuario : string;
  senha : string;

begin
  usuario := tUsuario.Text;
  senha := tSenha.Text;

  if usuario <> '' then
  begin
    if usuario = 'Fernando.Vargas' then
    begin
        if senha = 'admin' then
        begin
        Form2:= TForm2.Create(self);
        try
          Form2.ShowModal;
        finally
          FreeAndNil(Form2);
        end;
      end
      else
        MessageDlg ('Senha incorreta', mtWarning, [mbOk], 0);
    end
    else
    MessageDlg('Usuario inexistente', mtWarning, [mbOk], 0);
  end
  else
    MessageDlg('Insira o usuário e senha', mtWarning, [mbOk], 0);
end;

end.

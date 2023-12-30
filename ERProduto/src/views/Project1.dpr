program Project1;

uses
  Vcl.Forms,
  FormProduto in 'FormProduto.pas' {Form1},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  FormPrincipal in 'FormPrincipal.pas' {Form2},
  FormRelatorio in 'FormRelatorio.pas' {form3},
  Login in 'Login.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tform3, form3);

  Application.Run;
end.

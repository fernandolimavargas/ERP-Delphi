unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, FormRelatorio,
  Vcl.JumpList;

type
  TForm2 = class(TForm)
    IMenu: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    TAbrirItem: TSpeedButton;
    procedure TAbrirItemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses FormProduto;






procedure TForm2.TAbrirItemClick(Sender: TObject);
begin
  Form1:= TForm1.Create(self);
  try
    Form1.ShowModal;
  finally
    FreeAndNil(Form1);
  end;
end;

end.

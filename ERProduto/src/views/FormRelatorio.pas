unit FormRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Unit1,
  Vcl.DBGrids, Vcl.StdCtrls, frCoreClasses, frxClass;

type
  Tform3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBResultado: TDBGrid;
    btnRelatorio: TButton;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form3: Tform3;

implementation

{$R *.dfm}

end.

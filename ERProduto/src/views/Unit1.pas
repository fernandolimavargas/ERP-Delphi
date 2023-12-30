unit Unit1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, System.IniFiles  ;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1CODIGO: TIntegerField;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1UNIDADE_MEDIDA: TStringField;
    FDQuery1PRECO_CUSTO: TSingleField;
    FDQuery1PRECO_VENDA: TSingleField;
    FDQuery2: TFDQuery;
    FDQuery2DESCRICAO: TStringField;
    QryInserirProduto: TFDQuery;
    QryProximoNumero: TFDQuery;
    QryProximoNumeroPROXIMO_NUMERO: TLargeintField;
    FDQuery2PRECO_CUSTO: TSingleField;
    FDQuery2PRECO_VENDA: TSingleField;
    FDQuery2CODIGO: TIntegerField;
    FDQuery2UNIDADE_MEDIDA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}






end.

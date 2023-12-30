unit FormProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.ComCtrls, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses;

type
  TForm1 = class(TForm)
    pgPrincipal: TPageControl;
    Consulta: TTabSheet;
    Manutenção: TTabSheet;
    DataProduto: TDataSource;
    pgConsulta: TPageControl;
    TabSheet1: TTabSheet;
    btnLimpar: TButton;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtPreco_Venda: TEdit;
    edtPreco_Custo: TEdit;
    edtUni_Medida: TEdit;
    edtDescricao: TEdit;
    edtCodigo: TEdit;
    TabSheet2: TTabSheet;
    DBResultado: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    btnSalvar: TButton;
    btnInserir: TButton;
    btnEditar: TButton;
    btnCancelar: TButton;
    btnExcluir: TButton;
    Relatorio: TfrxReport;
    frxProduto: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    btnRelatorio: TButton;
    procedure BtnPesquisarClick(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure btnLimparClick(Sender: TObject);
    procedure DBResultadoDblClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);




  private
    { Private declarations }
  public
    procedure GET_DESCRICAO (sDescricao : string);
    procedure GET_CODIGO (iCodigo : integer);
    procedure GET_VALOR (iValor : Integer);
    procedure GET_MEDIDA (iMedida : string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


uses Unit1;



procedure TForm1.BtnPesquisarClick(Sender: TObject);
var
  valorInteiroCodigo: Integer;
  valorInteiroValorCusto: Integer;
  valorInteiroValorVenda: Integer;
begin
  valorInteiroCodigo := StrToIntDef(edtCodigo.Text, 0);

  if (edtDescricao.Text <> '') then
  begin
    GET_DESCRICAO(edtDescricao.Text);
    pgConsulta.ActivePageIndex := 1;
  end
  else if (valorInteiroCodigo > 0) then
  begin
    GET_CODIGO(valorInteiroCodigo);
    pgConsulta.ActivePageIndex := 1;
  end
  else
  begin
    valorInteiroValorCusto := StrToIntDef(edtPreco_Custo.Text, 0);
    valorInteiroValorVenda := StrToIntDef(edtPreco_Custo.Text, 0);

    if (valorInteiroValorCusto <> 0) or (valorInteiroValorVenda <> 0) then
    begin
      GET_VALOR(valorInteiroCodigo);
      pgConsulta.ActivePageIndex := 1;
    end
    else if (edtUni_Medida.Text <> '') then
    begin
      GET_MEDIDA(edtUni_Medida.Text);
      pgConsulta.ActivePageIndex := 1;
    end
    else
      DataModule1.FDQuery1.SQL.Text := 'SELECT * FROM Produto';
      DataModule1.FDQuery1.Open;
      pgConsulta.ActivePageIndex := 1;
  end;
end;




procedure TForm1.btnRelatorioClick(Sender: TObject);
begin
  relatorio.ShowReport();
end;

procedure TForm1.btnSalvarClick(Sender: TObject);

begin
  if DataModule1.FDQuery1.State in dsEditModes then
  begin
      //DataModule1.FDQuery1CODIGO.AsInteger := 1;
      DataModule1.FDQuery1.Post;
  end;
end;

procedure TForm1.btnInserirClick(Sender: TObject);
begin

  DBEdit2.SetFocus;
  DataModule1.FDQuery1.Insert;

end;

procedure TForm1.btnCancelarClick(Sender: TObject);
begin
  if DataModule1.FDQuery1.State in dsEditModes then
    DataModule1.FDQuery1.Cancel;
end;

procedure TForm1.btnEditarClick(Sender: TObject);
begin
  DBEdit2.SetFocus;
  DataModule1.FDQuery1.Edit;
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
begin
  if DataModule1.FDQuery1.RecordCount > 0 then
  begin
    if MessageDlg('Tem certeza que deseja excluir este Produto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DataModule1.FDQuery1.Delete;
  end;

end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  EdtDescricao.Text := '';
  edtCodigo.Text := '';
  edtUni_Medida.Text := '';
  edtPreco_Custo.Text := '';
  edtPreco_Venda.Text := '';
end;

procedure TForm1.DBResultadoDblClick(Sender: TObject);
begin
      pgPrincipal.ActivePageIndex := 1;

end;

procedure TForm1.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
   if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

procedure TForm1.GET_CODIGO(iCodigo: integer);
begin
   DataModule1.FDQuery1.Close;
  DataModule1.FDQuery1.SQL.Clear;
  DataModule1.FDQuery1.SQL.Add('select codigo, descricao, unidade_medida, preco_custo, preco_venda from Produto WHERE codigo = :CODIGO');
  DataModule1.FDQuery1.Params[0].AsInteger := iCodigo;
  DataModule1.FDQuery1.Open;
  if DataModule1.FDQuery1.IsEmpty then
    MessageDlg('Valor não encontrado!', mtWarning, [mbOK], 0);
end;

procedure TForm1.GET_DESCRICAO(sDescricao: string);
begin
  DataModule1.FDQuery1.Close;
  DataModule1.FDQuery1.SQL.Clear;
  DataModule1.FDQuery1.SQL.Add('select codigo, descricao, unidade_medida, preco_custo, preco_venda from Produto WHERE descricao = :DESCRICAO');
  DataModule1.FDQuery1.Params[0].AsString := sDescricao;
  DataModule1.FDQuery1.Open;
  if DataModule1.FDQuery1.IsEmpty then
     MessageDlg('Valor não encontrado!', mtWarning, [mbOK], 0);

end;

procedure TForm1.GET_MEDIDA(iMedida: string);
begin
  DataModule1.FDQuery1.Close;
  DataModule1.FDQuery1.SQL.Clear;
  DataModule1.FDQuery1.SQL.Add('select codigo, descricao, unidade_medida, preco_custo, preco_venda from Produto WHERE descricao = :DESCRICAO');
  DataModule1.FDQuery1.Params[0].AsString := iMedida;
  DataModule1.FDQuery1.Open;
  if DataModule1.FDQuery1.IsEmpty then
     MessageDlg('Valor não encontrado!', mtWarning, [mbOK], 0);
end;

procedure TForm1.GET_VALOR(iValor: Integer);
begin
    DataModule1.FDQuery1.Close;
  DataModule1.FDQuery1.SQL.Clear;
  DataModule1.FDQuery1.SQL.Add('select codigo, descricao, unidade_medida, preco_custo, preco_venda from Produto WHERE descricao = :valor');
  DataModule1.FDQuery1.Params[0].AsInteger := iValor;
  DataModule1.FDQuery1.Open;
  if DataModule1.FDQuery1.IsEmpty then
     MessageDlg('Valor não encontrado!', mtWarning, [mbOK], 0);
end;


end.

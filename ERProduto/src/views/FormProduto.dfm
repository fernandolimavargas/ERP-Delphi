object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 685
  ClientWidth = 1164
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pgPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1164
    Height = 685
    ActivePage = Consulta
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1160
    ExplicitHeight = 684
    object Consulta: TTabSheet
      AlignWithMargins = True
      Caption = 'Consulta'
      object pgConsulta: TPageControl
        Left = 0
        Top = 0
        Width = 1150
        Height = 649
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -3
        object TabSheet1: TTabSheet
          AlignWithMargins = True
          Caption = 'Filtro'
          object Label3: TLabel
            Left = 28
            Top = 135
            Width = 104
            Height = 14
            Caption = 'Unidade de Medida'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 28
            Top = 191
            Width = 66
            Height = 14
            Caption = 'Pre'#231'o Custo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 28
            Top = 247
            Width = 70
            Height = 14
            Caption = 'Preco Venda'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 28
            Top = 15
            Width = 37
            Height = 14
            Caption = 'C'#243'digo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 28
            Top = 74
            Width = 51
            Height = 14
            Caption = 'Descri'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object btnLimpar: TButton
            Left = 260
            Top = 203
            Width = 75
            Height = 25
            Caption = 'Limpar'
            DisabledImageName = 'BtnLimpa'
            TabOrder = 0
            OnClick = btnLimparClick
          end
          object Button1: TButton
            Left = 260
            Top = 163
            Width = 75
            Height = 25
            Caption = 'Pesquisar'
            DisabledImageName = 'BtnPesquisar'
            TabOrder = 1
            OnClick = BtnPesquisarClick
          end
          object edtPreco_Venda: TEdit
            Left = 28
            Top = 267
            Width = 121
            Height = 23
            TabOrder = 2
          end
          object edtPreco_Custo: TEdit
            Left = 28
            Top = 211
            Width = 121
            Height = 23
            TabOrder = 3
          end
          object edtUni_Medida: TEdit
            Left = 28
            Top = 155
            Width = 145
            Height = 23
            TabOrder = 4
          end
          object edtDescricao: TEdit
            Left = 28
            Top = 94
            Width = 307
            Height = 23
            ImeName = 'Portuguese (Brazilian ABNT)'
            TabOrder = 5
          end
          object edtCodigo: TEdit
            Left = 28
            Top = 35
            Width = 89
            Height = 23
            ImeName = 'edtCodigo'
            TabOrder = 6
            OnKeyPress = edtCodigoKeyPress
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Resultado'
          ImageIndex = 1
          object DBResultado: TDBGrid
            Left = 0
            Top = 0
            Width = 1142
            Height = 619
            Align = alClient
            DataSource = DataProduto
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDblClick = DBResultadoDblClick
          end
          object btnRelatorio: TButton
            Left = 12
            Top = 579
            Width = 75
            Height = 25
            Caption = 'Relat'#243'rio'
            TabOrder = 1
            OnClick = btnRelatorioClick
          end
        end
      end
    end
    object Manutenção: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      object Label6: TLabel
        Left = 39
        Top = 59
        Width = 52
        Height = 28
        Caption = 'Codigo'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Sitka Banner'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 39
        Top = 137
        Width = 82
        Height = 25
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 219
        Top = 62
        Width = 166
        Height = 25
        Caption = 'Unidade de Medida'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 39
        Top = 206
        Width = 127
        Height = 25
        Caption = 'Pre'#231'o de Custo'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 274
        Top = 206
        Width = 132
        Height = 25
        Caption = 'Pre'#231'o de Venda'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 39
        Top = 93
        Width = 98
        Height = 23
        DataField = 'CODIGO'
        DataSource = DataProduto
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 39
        Top = 168
        Width = 751
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = DataProduto
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 219
        Top = 93
        Width = 49
        Height = 23
        DataField = 'UNIDADE_MEDIDA'
        DataSource = DataProduto
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 39
        Top = 237
        Width = 154
        Height = 23
        DataField = 'PRECO_CUSTO'
        DataSource = DataProduto
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 272
        Top = 237
        Width = 154
        Height = 23
        DataField = 'PRECO_VENDA'
        DataSource = DataProduto
        TabOrder = 4
      end
      object btnSalvar: TButton
        Left = 112
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 5
        OnClick = btnSalvarClick
      end
      object btnInserir: TButton
        Left = 31
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Inserir'
        TabOrder = 6
        OnClick = btnInserirClick
      end
      object btnEditar: TButton
        Left = 193
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 7
        OnClick = btnEditarClick
      end
      object btnCancelar: TButton
        Left = 274
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 8
        OnClick = btnCancelarClick
      end
      object btnExcluir: TButton
        Left = 355
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 9
        OnClick = btnExcluirClick
      end
    end
  end
  object DataProduto: TDataSource
    DataSet = DataModule1.FDQuery1
    Left = 1016
    Top = 592
  end
  object Relatorio: TfrxReport
    Version = '2023.3.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45257.035895092590000000
    ReportOptions.LastChange = 45257.083508310180000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 688
    Top = 616
    Datasets = <
      item
        DataSet = frxProduto
        DataSetName = 'frxProduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874136120000000000
          Top = 11.338589340000000000
          Width = 309.921460730000000000
          Height = 75.590599770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frxProduto
        DataSetName = 'frxProduto'
        RowCount = 0
        object frxProdutoCODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CODIGO'
          DataSet = frxProduto
          DataSetName = 'frxProduto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxProduto."CODIGO"]')
        end
        object frxProdutoDESCRICAO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 15.118120000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DESCRICAO'
          DataSet = frxProduto
          DataSetName = 'frxProduto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxProduto."DESCRICAO"]')
        end
        object frxProdutoUNIDADE_MEDIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'UNIDADE_MEDIDA'
          DataSet = frxProduto
          DataSetName = 'frxProduto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxProduto."UNIDADE_MEDIDA"]')
        end
        object frxProdutoPRECO_CUSTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'PRECO_CUSTO'
          DataSet = frxProduto
          DataSetName = 'frxProduto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxProduto."PRECO_CUSTO"]')
        end
        object frxProdutoPRECO_VENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'PRECO_VENDA'
          DataSet = frxProduto
          DataSetName = 'frxProduto'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxProduto."PRECO_VENDA"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530050000000000
          Top = -0.000003469999999998
          Width = 94.488246440000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149658200000000000
          Top = -0.000003469999999998
          Width = 94.488250730000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490230000000000
          Top = -0.000003469999999998
          Width = 94.488220210000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Uni Medida')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945251460000000000
          Top = -0.000000080000000000
          Width = 94.488281250000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Compra')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 680.315374610000000000
          Top = -0.000003469999999998
          Width = 94.488281250000000000
          Height = 18.897651670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda')
        end
      end
    end
  end
  object frxProduto: TfrxDBDataset
    UserName = 'frxProduto'
    CloseDataSource = False
    DataSet = DataModule1.FDQuery1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 824
    Top = 608
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 920
    Top = 600
  end
end

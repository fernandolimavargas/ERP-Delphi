object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=masterkey'
      'User_Name=sysdba'
      'Database=ERPROD'
      'Protocol=TCPIP'
      'Port=3050'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    Left = 96
    Top = 256
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select codigo, descricao, unidade_medida, preco_custo, preco_ven' +
        'da from Produto WHERE descricao = :DESCRICAO')
    Left = 160
    Top = 120
    ParamData = <
      item
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
    object FDQuery1CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQuery1UNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      FixedChar = True
      Size = 3
    end
    object FDQuery1PRECO_CUSTO: TSingleField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object FDQuery1PRECO_VENDA: TSingleField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = FDQuery1
    Left = 288
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 328
    Top = 248
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM Produto where descricao = :ValorDBEdit')
    Left = 152
    Top = 328
    ParamData = <
      item
        Name = 'VALORDBEDIT'
        DataType = ftString
        ParamType = ptInput
        Size = 100
        Value = Null
      end>
    object FDQuery2DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQuery2PRECO_CUSTO: TSingleField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object FDQuery2PRECO_VENDA: TSingleField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
    end
    object FDQuery2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery2UNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      FixedChar = True
      Size = 3
    end
  end
  object QryInserirProduto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'INSERT INTO PRODUTO (codigo, descricao, unidade_medida, preco_cu' +
        'sto, preco_venda) values (:codigo, :descInserir, :uniMedida, :pr' +
        'ecoCusto, :precoVenda)')
    Left = 312
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DESCINSERIR'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'UNIMEDIDA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 3
      end
      item
        Name = 'PRECOCUSTO'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'PRECOVENDA'
        DataType = ftSingle
        Precision = 8
        ParamType = ptInput
      end>
  end
  object QryProximoNumero: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT MAX(codigo)+1 as PROXIMO_NUMERO from Produto')
    Left = 456
    Top = 376
    object QryProximoNumeroPROXIMO_NUMERO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'PROXIMO_NUMERO'
      Origin = 'PROXIMO_NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end

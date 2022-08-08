object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FDQuery1: TFDQuery
    IndexFieldNames = 'ID;NAME'
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select * from employees'
      'where id=:eid;')
    Left = 272
    Top = 152
    ParamData = <
      item
        Name = 'EID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 50
    end
    object FDQuery1SURNAME: TWideStringField
      FieldName = 'SURNAME'
      Origin = 'SURNAME'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 320
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 320
    Top = 80
  end
  object FDCommand1: TFDCommand
    Connection = UniServerModule.FDConnection1
    CommandText.Strings = (
      'INSERT INTO documents (eid,oid,dt) '
      'VALUES ((select id from employees where id=:eid),:oid,:dt)')
    ParamData = <
      item
        Name = 'EID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'OID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DT'
        ParamType = ptInput
      end>
    Left = 368
    Top = 80
  end
  object FDQuery2: TFDQuery
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select eid'
      '  from account'
      '  where account=:acc and pass = :pass')
    Left = 272
    Top = 80
    ParamData = <
      item
        Name = 'ACC'
        DataType = ftWideString
        ParamType = ptInput
        Size = 50
        Value = Null
      end
      item
        Name = 'PASS'
        DataType = ftWideString
        ParamType = ptInput
        Size = 50
      end>
    object FDQuery2EID: TIntegerField
      FieldName = 'EID'
      Origin = 'EID'
    end
  end
  object FDQuery3: TFDQuery
    Indexes = <
      item
      end>
    IndexFieldNames = 'DT;NAME;NAME_1;UID'
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select d.uid,e.name,o.name,d.dt'
      'from documents d'
      'inner join employees e on e.id=d.eid'
      'inner join operacii_type o on o.id=d.oid'
      'where d.eid=:eid'
      'order by d.uid asc'
      '')
    Left = 272
    Top = 216
    ParamData = <
      item
        Name = 'EID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 320
    Top = 216
  end
  object FDQuery4: TFDQuery
    Indexes = <
      item
      end>
    IndexFieldNames = 'DT;EID'
    Connection = UniServerModule.FDConnection1
    SQL.Strings = (
      'select eid,dt from documents'
      'where eid=:user;')
    Left = 48
    Top = 80
    ParamData = <
      item
        Name = 'USER'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DataSource4: TDataSource
    DataSet = FDQuery4
    Left = 96
    Top = 80
  end
  object FDCommand2: TFDCommand
    Connection = UniServerModule.FDConnection1
    CommandText.Strings = (
      'select eid'
      'from CHECK_PASS(:acc,:pass)')
    ParamData = <
      item
        Name = 'ACC'
        DataType = ftWideString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'PASS'
        DataType = ftWideString
        ParamType = ptInput
        Size = 50
      end>
    Left = 376
    Top = 152
  end
end

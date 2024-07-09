object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 320
  Top = 209
  Height = 166
  Width = 272
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=penju' +
      'alan'
    Provider = 'MSDASQL.1'
    Left = 32
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=penju' +
      'alan'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from satuan')
    Left = 104
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 192
    Top = 24
  end
end

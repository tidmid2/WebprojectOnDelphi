unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Phys;

type
  TForm3 = class(TForm)
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    FDCommand1: TFDCommand;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    DataSource3: TDataSource;
    FDQuery4: TFDQuery;
    DataSource4: TDataSource;
    FDCommand2: TFDCommand;
    FDQuery2EID: TIntegerField;
    FDQuery1ID: TIntegerField;
    FDQuery1NAME: TWideStringField;
    FDQuery1SURNAME: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses
  ServerModule;



end.

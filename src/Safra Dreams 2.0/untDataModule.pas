unit untDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdataModuleGeral = class(TDataModule)
    FDMemTableAuth: TFDMemTable;
    FDMemTableAuthaccess_token: TWideStringField;
    FDMemTableAuthtoken_type: TWideStringField;
    FDMemTableAuthexpires_in: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataModuleGeral: TdataModuleGeral;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

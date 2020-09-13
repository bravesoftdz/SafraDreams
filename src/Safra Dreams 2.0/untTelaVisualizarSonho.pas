unit untTelaVisualizarSonho;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList, System.Math;

type
  TfrmTelaVisualizarSonho = class(TForm)
    ToolBar1: TToolBar;
    lblSonhoNome: TLabel;
    ImageList1: TImageList;
    SpeedButton2: TSpeedButton;
    ProgressBar1: TProgressBar;
    lblPercentualMetaAtingida: TLabel;
    Label2: TLabel;
    lblSonhoSaldoTotal: TLabel;
    lblSonhoMeta: TLabel;
    lblSonhoVencimento: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    function GetLabelNomeSonho: string;
    procedure SetLabelNomeSonho(const Value: string);
    procedure GerarDadosAleatorios;
    { Private declarations }
  public
    property lblNomeSonho: string read GetLabelNomeSonho write SetLabelNomeSonho;
    { Public declarations }
  end;

var
  frmTelaVisualizarSonho: TfrmTelaVisualizarSonho;

implementation

{$R *.fmx}

uses untTelaConvidarDreamer;
{$R *.LgXhdpiPh.fmx ANDROID}

{ TfrmTelaVisualizarSonho }

procedure TfrmTelaVisualizarSonho.FormShow(Sender: TObject);
begin
  GerarDadosAleatorios;
end;

procedure TfrmTelaVisualizarSonho.GerarDadosAleatorios;
var
  lSaldoTotal: Double;
  lMeta: Double;
  lData: Integer;
begin
  Randomize;

  lSaldoTotal := RandomRange(0, 2000);
  lMeta := RandomRange(2000, 10000);
  lData := RandomRange(44100, 46000);

  lblSonhoSaldoTotal.Text := 'Saldo Total: R$ ' + lSaldoTotal.ToString + ',00';
  lblSonhoMeta.Text := 'Meta: R$ ' + lMeta.ToString + ',00';
  lblSonhoVencimento.Text := 'Vencimento: ' + FormatDateTime('dd/mm/yyyy', lData);

  ProgressBar1.Value := Round((lSaldoTotal*100)/lMeta);

  lblPercentualMetaAtingida.Text := ProgressBar1.Value.ToString + '%';
end;

function TfrmTelaVisualizarSonho.GetLabelNomeSonho: string;
begin
  Result := lblSonhoNome.Text.Trim;
end;

procedure TfrmTelaVisualizarSonho.SetLabelNomeSonho(const Value: string);
begin
  lblSonhoNome.Text := Value;
end;

procedure TfrmTelaVisualizarSonho.SpeedButton2Click(Sender: TObject);
var
  lfrmTelaConvidarDreamer: TfrmTelaConvidarDreamer;
begin
  lfrmTelaConvidarDreamer := TfrmTelaConvidarDreamer.Create(nil);
  lfrmTelaConvidarDreamer.lblNomeSonho := Self.lblSonhoNome.Text;
  lfrmTelaConvidarDreamer.Show;
end;

end.

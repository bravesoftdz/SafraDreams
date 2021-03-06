unit untTelaPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.ImageList, FMX.ImgList,
  FMXTee.Engine, FMXTee.Series, FMXTee.Procs, FMXTee.Chart, FMX.Controls3D, FMXTee.Chart3D,
  FMX.StdCtrls, FMX.TabControl, FMX.Controls.Presentation, FMX.Objects, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, System.Rtti, FMX.Grid.Style,
  FMX.Grid, FMX.ScrollBox,
  untIntegracaoAPIClass,
  {$IF Defined(Android)}
  Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.Net,
   Androidapi.JNI.App, Androidapi.helpers;
  {$ELSEIF Defined(MSWINDOWS)}
  Winapi.ShellAPI, Winapi.Windows;
  {$ENDIF}

type
  TfrmTelaPrincipal = class(TForm)
    TopToolBar: TToolBar;
    ToolBarLabel: TLabel;
    tbCtrlPrincipal: TTabControl;
    tbItemDadosConta: TTabItem;
    lblMensagemOla: TLabel;
    Label3: TLabel;
    lblSaldoConta: TLabel;
    btnMostrarOcultarSaldo: TSpeedButton;
    tbItemFundos: TTabItem;
    Chart3D1: TChart3D;
    Chart3DChart1: TChart;
    BottomToolBar: TToolBar;
    btnProximaTab: TSpeedButton;
    btnAnteriorTab: TSpeedButton;
    tbItemServicos: TTabItem;
    Image1: TImage;
    btnAtendimentoSafra: TCornerButton;
    lblAgenciaConta: TLabel;
    imgFundoDadosConta: TImage;
    Image2: TImage;
    StringGrid1: TStringGrid;
    StringColumn1: TStringColumn;
    SpeedButton1: TSpeedButton;
    ImageList2: TImageList;
    procedure btnProximaTabClick(Sender: TObject);
    procedure btnAnteriorTabClick(Sender: TObject);
    procedure btnMostrarOcultarSaldoClick(Sender: TObject);
    procedure btnAtendimentoSafraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringGrid1SelectCell(Sender: TObject; const ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure ExibirDadosDaContaLogada;
    procedure SetarSaldoDaConta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses untTelaVisualizarSonho, untTelaCriarSonho;

procedure TfrmTelaPrincipal.btnAtendimentoSafraClick(Sender: TObject);
const
  URL = 'https://www.safra.com.br/atendimento/atendimento-ao-cliente.htm';
  {$IF Defined(Android)}
var
  Intent: JIntent;
  {$ENDIF}
begin
  {$IF Defined(Android)}
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setData(StrToJURI(URL));
  tandroidhelper.Activity.startActivity(Intent);
  {$ENDIF}
end;

procedure TfrmTelaPrincipal.btnMostrarOcultarSaldoClick(Sender: TObject);
CONST
  EXIBINDO_SALDO = 0;
  OCULTANDO_SALDO = 1;
begin
  if btnMostrarOcultarSaldo.ImageIndex = EXIBINDO_SALDO then
  begin
    btnMostrarOcultarSaldo.ImageIndex := OCULTANDO_SALDO;
    lblSaldoConta.Text := 'BRL  ------';
  end
  else
  begin
    btnMostrarOcultarSaldo.ImageIndex := EXIBINDO_SALDO;
    SetarSaldoDaConta;
  end;
end;

procedure TfrmTelaPrincipal.btnProximaTabClick(Sender: TObject);
begin
  if tbCtrlPrincipal.ActiveTab = tbItemDadosConta then
    tbCtrlPrincipal.ActiveTab := tbItemFundos
  else if tbCtrlPrincipal.ActiveTab = tbItemFundos then
    tbCtrlPrincipal.ActiveTab := tbItemServicos;
end;

procedure TfrmTelaPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmTelaPrincipal.FormShow(Sender: TObject);
begin
  ExibirDadosDaContaLogada;

  StringGrid1.Columns[0].Width := StringGrid1.Width;

  StringGrid1.Cells[0, 0] := 'Casamento';
  StringGrid1.Cells[0, 1] := 'Apartamento';
  StringGrid1.Cells[0, 2] := 'Formatura';
  StringGrid1.Cells[0, 3] := 'Carro Novo';
  StringGrid1.Cells[0, 4] := 'Viagem para Ushuaia';
  StringGrid1.Cells[0, 5] := 'Reserva de Emerg?ncia';
  StringGrid1.Cells[0, 6] := 'Viagem para Tail?ndia';
  StringGrid1.Cells[0, 7] := 'Bol?o Mega Sena';
  StringGrid1.Cells[0, 8] := 'Pagamento Paintball';
  StringGrid1.Cells[0, 9] := 'Comprar Jetski';
  StringGrid1.Cells[0, 10] := 'Mudan?a para SP';
  StringGrid1.Cells[0, 11] := 'Playstation 5';
  StringGrid1.Cells[0, 12] := 'Casamento';
  StringGrid1.Cells[0, 13] := 'Apartamento';
  StringGrid1.Cells[0, 14] := 'Formatura';
  StringGrid1.Cells[0, 15] := 'Carro Novo';
  StringGrid1.Cells[0, 16] := 'Viagem para Ushuaia';
  StringGrid1.Cells[0, 17] := 'Reserva de Emerg?ncia';
  StringGrid1.Cells[0, 18] := 'Viagem para Tail?ndia';
  StringGrid1.Cells[0, 19] := 'Bol?o Mega Sena';
  StringGrid1.Cells[0, 20] := 'Pagamento Paintball';
  StringGrid1.Cells[0, 21] := 'Comprar Jetski';
  StringGrid1.Cells[0, 22] := 'Mudan?a para SP';
  StringGrid1.Cells[0, 23] := 'Playstation 5';
end;

procedure TfrmTelaPrincipal.ExibirDadosDaContaLogada;
var
  lDadosDaConta: TDadosDaConta;
begin
  lDadosDaConta := TIntegracaoAPIClass.RetornarDadosDaConta;

  lblMensagemOla.Text := 'Ol?, ' + lDadosDaConta.Apelido + '!';
  lblAgenciaConta.Text := 'Ag.  ' + Copy(lDadosDaConta.NumeroDaConta, 1, 4) +
                          '  Cc  ' + Copy(lDadosDaConta.NumeroDaConta, 5, 10);

  SetarSaldoDaConta;
end;

procedure TfrmTelaPrincipal.SetarSaldoDaConta;
var
  lSaldosDaConta: TSaldosDaConta;
begin
  lSaldosDaConta := TIntegracaoAPIClass.RetornarSaldosDaConta;

  lblSaldoConta.Text := lSaldosDaConta.MoedaContaCorrente + '  ' + lSaldosDaConta.SaldoContaCorrente;
end;

procedure TfrmTelaPrincipal.SpeedButton1Click(Sender: TObject);
var
  lfrmTelaCriarSonho: TfrmTelaCriarSonho;
begin
  lfrmTelaCriarSonho := TfrmTelaCriarSonho.Create(nil);
  lfrmTelaCriarSonho.Show;
end;

procedure TfrmTelaPrincipal.StringGrid1SelectCell(Sender: TObject; const ACol, ARow: Integer;
  var CanSelect: Boolean);
var
  lfrmTelaVisualizarSonho: TfrmTelaVisualizarSonho;
begin
  lfrmTelaVisualizarSonho := TfrmTelaVisualizarSonho.Create(nil);
  lfrmTelaVisualizarSonho.lblNomeSonho := StringGrid1.Cells[ACol, ARow];
  lfrmTelaVisualizarSonho.Show;
end;

procedure TfrmTelaPrincipal.btnAnteriorTabClick(Sender: TObject);
begin
  if tbCtrlPrincipal.ActiveTab = tbItemFundos then
    tbCtrlPrincipal.ActiveTab := tbItemDadosConta
  else if tbCtrlPrincipal.ActiveTab = tbItemServicos then
    tbCtrlPrincipal.ActiveTab := tbItemFundos;
end;

end.


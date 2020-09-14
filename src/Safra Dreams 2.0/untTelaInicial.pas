unit untTelaInicial;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, IpPeerClient;

type
  TfrmTelaInicial = class(TForm)
    imgFundo: TImage;
    btnAbrirConta: TCornerButton;
    btnAcessarConta: TCornerButton;
    layoutFundo: TLayout;
    lblAPIInacessivel: TLabel;
    procedure btnAcessarContaClick(Sender: TObject);
    procedure btnAbrirContaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

{$R *.fmx}

uses untTelaLogin, untTelaCadastroChatBot, untIntegracaoAPIClass;
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TfrmTelaInicial.btnAbrirContaClick(Sender: TObject);
var
  lfrmTelaCadastroChatBot: TfrmTelaCadastroChatBot;
begin
  lfrmTelaCadastroChatBot := TfrmTelaCadastroChatBot.Create(nil);
  lfrmTelaCadastroChatBot.Show;
end;

procedure TfrmTelaInicial.btnAcessarContaClick(Sender: TObject);
var
  lfrmTelaLogin: TfrmTelaLogin;
begin
  lfrmTelaLogin := TfrmTelaLogin.Create(nil);
  lfrmTelaLogin.Show;
end;

procedure TfrmTelaInicial.FormCreate(Sender: TObject);
begin
  if not TIntegracaoAPIClass.AmbienteEstaAcessivel then
  begin
    lblAPIInacessivel.Text := 'Atenção! A API do Safra está indisponível.';
    lblAPIInacessivel.Visible := True;
    btnAbrirConta.Enabled := False;
    btnAcessarConta.Enabled := False;
  end;
end;

end.

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
    procedure btnAcessarContaClick(Sender: TObject);
    procedure btnAbrirContaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaInicial: TfrmTelaInicial;

implementation

{$R *.fmx}

uses untTelaLogin, untTelaCadastroChatBot;
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

end.

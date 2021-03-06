unit untTelaCadastroChatBot;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, FMX.Layouts, FMX.Objects;

type
  TfrmTelaCadastroChatBot = class(TForm)
    memoChat: TMemo;
    btnEnviar: TSpeedButton;
    edtMensagem: TEdit;
    Layout1: TLayout;
    Image1: TImage;
    procedure btnEnviarClick(Sender: TObject);
    procedure edtMensagemKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    function ObterTextoInicialChatBot: string;
    procedure InserirLinhaEmBrancoNoChatBot;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaCadastroChatBot: TfrmTelaCadastroChatBot;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TfrmTelaCadastroChatBot.btnEnviarClick(Sender: TObject);
begin
  if trim(edtMensagem.Text) <> EmptyStr then
  begin
    memoChat.Lines.Add('Cliente:   ' + edtMensagem.Text);
    edtMensagem.Text := '';
    InserirLinhaEmBrancoNoChatBot;
  end;
end;

procedure TfrmTelaCadastroChatBot.edtMensagemKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if keyChar = #0 then
  begin
    btnEnviarClick(Sender);
  end;
end;

procedure TfrmTelaCadastroChatBot.FormShow(Sender: TObject);
begin
  memoChat.Lines.Clear;
  memoChat.Lines.Add(ObterTextoInicialChatBot);
  InserirLinhaEmBrancoNoChatBot;
  memoChat.Lines.Add('Vamos come?ar nossa jornada?');
end;

function TfrmTelaCadastroChatBot.ObterTextoInicialChatBot: string;
begin
  result := 'Ol?! Prazer, eu sou Dreamy Bot. Estou aqui para te ajudar a realizar o seu cadastro, ' +
            ' que ? o primeiro passo para a realiza??o dos seus sonhos.';
end;

procedure TfrmTelaCadastroChatBot.InserirLinhaEmBrancoNoChatBot;
begin
  memoChat.Lines.Add(#13#10);
end;


end.

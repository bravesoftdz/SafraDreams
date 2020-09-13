unit untTelaCriarSonho;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation,
  FMX.StdCtrls, System.ImageList, FMX.ImgList, FMX.DateTimeCtrls, FMX.Edit;

type
  TfrmTelaCriarSonho = class(TForm)
    btnSalvar: TSpeedButton;
    ImageList1: TImageList;
    btnCancelar: TSpeedButton;
    ToolBar1: TToolBar;
    lblCriarSonho: TLabel;
    edtNomeSonho: TEdit;
    lblNomeSonho: TLabel;
    edtMetaSonho: TEdit;
    lblMetaSonho: TLabel;
    edtVencimento: TDateEdit;
    lblVencimento: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaCriarSonho: TfrmTelaCriarSonho;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TfrmTelaCriarSonho.btnCancelarClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmTelaCriarSonho.btnSalvarClick(Sender: TObject);
begin
  ShowMessage('Sonho Salvo!');
end;

end.

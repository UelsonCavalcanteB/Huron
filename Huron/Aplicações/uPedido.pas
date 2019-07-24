unit uPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,uDM, Vcl.Buttons, uniGUIBaseClasses, uniGUIClasses,
  uniEdit, uniDBEdit, Vcl.Mask, Vcl.DBCtrls;

type
  TfmPedido = class(TForm)
    Panel1: TPanel;
    pnBut: TPanel;
    DBGrid1: TDBGrid;
    btNovo: TButton;
    btAlterar: TButton;
    btCancelar: TButton;
    btExcluir: TButton;
    btImprimir: TButton;
    btGravar: TButton;
    DBComboBox1: TDBComboBox;
    lbCli: TLabel;
    lbProduto: TLabel;
    DBComboBox2: TDBComboBox;
    lbPedido: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    UniDBEdit1: TUniDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPedido: TfmPedido;

implementation

{$R *.dfm}

procedure TfmPedido.btCancelarClick(Sender: TObject);
begin
  close;
end;

end.

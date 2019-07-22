unit uProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfmProduto = class(TForm)
    pnTop: TPanel;
    pnButon: TPanel;
    pnCentro: TPanel;
    pgProduto: TPageControl;
    tbProduto: TTabSheet;
    tbDadosProdutos: TTabSheet;
    dbgProduto: TDBGrid;
    btNovo: TButton;
    btAlterar: TButton;
    btCancelar: TButton;
    btExcluir: TButton;
    btImprimir: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProduto: TfmProduto;

implementation

{$R *.dfm}

end.

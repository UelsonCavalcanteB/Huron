unit uPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,uDM, Vcl.Buttons, uniGUIBaseClasses, uniGUIClasses,
  uniEdit, uniDBEdit, Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient;

type
  TfmPedido = class(TForm)
    Panel1: TPanel;
    pnBut: TPanel;
    btNovo: TButton;
    btAlterar: TButton;
    btCancelar: TButton;
    btExcluir: TButton;
    btImprimir: TButton;
    btGravar: TButton;
    lbCli: TLabel;
    lbProduto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    dsPedido: TDataSource;
    dsProdutoPedido: TDataSource;
    dsClientePedido: TDataSource;
    cbCli: TComboBox;
    cbPedidoPro: TComboBox;
    gdPedido: TStringGrid;
    edCodPro: TEdit;
    edAjuste: TEdit;
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure popularcombobox;
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

procedure TfmPedido.FormCreate(Sender: TObject);
begin
  popularcombobox;
  with gdPedido do begin
    ColCount := 4;
    RowCount := 3;

    Colwidths[0] := 10;
    ColWidths[1] := 80;
    ColWidths[2] := 400;
    ColWidths[3] := 100;

    Cells[1,0] := 'Código';
    Cells[2,0] := 'Descricao';
    Cells[3,0] := 'Valor';

  end;
end;

procedure TfmPedido.FormShow(Sender: TObject);
begin
  gdPedido.RowCount := 2;
  gdPedido.ColCount := 4;
end;

procedure TfmPedido.popularcombobox;
begin
  fmConexao.FDQCliPedido.Open('select IDCLIENTE,RAZAOSOCIAL from huron.cliente');
  dsClientePedido.DataSet := fmConexao.FDQCliPedido;
  dsClientePedido.DataSet.First;
  while not dsClientePedido.DataSet.Eof do
  begin
    cbCli.Items.AddObject(dsClientePedido.DataSet.FieldByName('RAZAOSOCIAL').AsString,
    TObject(dsClientePedido.DataSet.FieldByName('IDCLIENTE').AsInteger));
    dsClientePedido.DataSet.Next;
  end;
  cbCli.ItemIndex := 0;

  fmConexao.FDQProPedido.Open('select IDPRODUTO,DESCRICAO,PRECOVENDA from huron.produto');
  dsProdutoPedido.DataSet := fmConexao.FDQProPedido;
  dsProdutoPedido.DataSet.First;
  while not dsProdutoPedido.DataSet.Eof do
  begin
    cbPedidoPro.Items.AddObject(dsProdutoPedido.DataSet.FieldByName('DESCRICAO').AsString,
    TObject(dsProdutoPedido.DataSet.FieldByName('IDPRODUTO').AsInteger));
    edCodPro.Text := dsProdutoPedido.DataSet.FieldByName('IDPRODUTO').AsString;
    edAjuste.Text := dsProdutoPedido.DataSet.FieldByName('PRECOVENDA').AsString;
    dsProdutoPedido.DataSet.Next;
  end;
  cbPedidoPro.ItemIndex := 0;

end;

procedure TfmPedido.SpeedButton1Click(Sender: TObject);
begin
  if gdPedido.Cells[1,gdPedido.RowCount - 1] <> '' then
  gdPedido.RowCount := gdPedido.RowCount + 1;
  gdPedido.Cells[1,gdPedido.RowCount - 1] := edCodPro.Text;
  gdPedido.Cells[2,gdPedido.RowCount - 1] := cbPedidoPro.Text;
  gdPedido.Cells[3,gdPedido.RowCount - 1] := edAjuste.Text;
  cbPedidoPro.SetFocus;
  gdPedido.RowCount := gdPedido.RowCount + 1;

end;

end.

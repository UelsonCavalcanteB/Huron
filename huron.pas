unit huron;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Menus, System.Actions, Vcl.ActnList, uCadastroCliente, Vcl.StdCtrls,uDM, uProduto;

type
  TfmHuron = class(TForm)
    Panel1: TPanel;
    pnButon: TPanel;
    imlogo: TImage;
    Action: TActionList;
    MainMenu: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Pedidos1: TMenuItem;
    btSair: TButton;
    actCliente: TAction;
    actProduto: TAction;
    actPedido: TAction;
    procedure btSairClick(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure actProdutoExecute(Sender: TObject);
    procedure actPedidoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmHuron: TfmHuron;

implementation

{$R *.dfm}

procedure TfmHuron.actClienteExecute(Sender: TObject);
begin
  fmCliente.ShowModal;
  fmconexao.FDQCLI.Active := true;
end;

procedure TfmHuron.actPedidoExecute(Sender: TObject);
begin
  //
end;

procedure TfmHuron.actProdutoExecute(Sender: TObject);
begin
  fmProduto.ShowModal;
end;

procedure TfmHuron.btSairClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfmHuron.FormShow(Sender: TObject);
begin
  fmConexao.Connection.Connected := true;
end;

end.

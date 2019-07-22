unit uProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,uDM, Vcl.Mask, Vcl.DBCtrls,
  Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Buttons;

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
    btGravar: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edValor: TDBEdit;
    dsProduto: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edPrec: TDBEdit;
    edPorc: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ActionList: TActionList;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure edPrecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProduto: TfmProduto;

implementation

{$R *.dfm}

procedure TfmProduto.btAlterarClick(Sender: TObject);
begin
  fmconexao.FDQPROD.Edit;
end;

procedure TfmProduto.btCancelarClick(Sender: TObject);
begin
  fmconexao.FDQPROD.Cancel;
  Close;
end;

procedure TfmProduto.btExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza que deseja excluir o produto selecionado?',
   'Confirmação', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
 begin
  fmconexao.FDQPROD.Delete;
 end;
end;

procedure TfmProduto.btNovoClick(Sender: TObject);
begin
  fmConexao.FDQPROD.Insert;
end;

procedure TfmProduto.edPrecClick(Sender: TObject);
begin
  edPrec.Text := FloatToStr((StrToInt(edValor.Text) * StrToInt(edPorc.Text))/100);
end;

end.

unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Datasnap.Provider, Data.DB, Datasnap.DBClient, uDM, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfmCliente = class(TForm)
    pnTop: TPanel;
    pnCli: TPanel;
    pnButon: TPanel;
    pgDadosCadastrais: TPageControl;
    Clientes: TTabSheet;
    DadosCadastrais: TTabSheet;
    btNovo: TButton;
    btAlterar: TButton;
    btCancelar: TButton;
    btExcluir: TButton;
    btImprimir: TButton;
    btSair: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dsCli: TDataSource;
    DBGrid: TDBGrid;
    btGravar: TButton;
    edtRazao: TDBEdit;
    edtFantasia: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    ActionList: TActionList;
    DatasetInsert: TDataSetInsert;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
    procedure btSairClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FDTCliAfterOpen(DataSet: TDataSet);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCliente: TfmCliente;

implementation

{$R *.dfm}

procedure TfmCliente.btAlterarClick(Sender: TObject);
begin
  fmConexao.FDQCLI.Edit;
end;

procedure TfmCliente.btGravarClick(Sender: TObject);
begin
 fmconexao.FDQCLI.Append;
end;

procedure TfmCliente.btNovoClick(Sender: TObject);
begin
  fmconexao.FDQCLI.Insert;
end;

procedure TfmCliente.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCliente.FDTCliAfterOpen(DataSet: TDataSet);
begin
  Dataset.Open;
end;

end.

unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Datasnap.Provider, Data.DB, Datasnap.DBClient, uDM, Vcl.DBGrids,
  Vcl.Mask, Vcl.DBCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  frxClass, frxDBSet;

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
    edCNPJ: TDBEdit;
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
    frCliente: TfrxReport;
    frxDBDCli: TfrxDBDataset;
    procedure btSairClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure FDTCliAfterOpen(DataSet: TDataSet);
    procedure btAlterarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
    function validaCNPJ(CNPJ: string): boolean;
    function imprimeCNPJ(CNPJ: string): string;
    procedure carregarelatorio(const pReport: TFrxReport);
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

procedure TfmCliente.btCancelarClick(Sender: TObject);
begin
  fmConexao.FDQCLI.Cancel;
  close;
end;

procedure TfmCliente.btExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza que deseja excluir o registro selecionado?',
   'Confirma��o', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
 begin
   fmConexao.FDQCLI.Delete;
end;
end;

procedure TfmCliente.btGravarClick(Sender: TObject);
begin
 fmconexao.FDQCLI.Append;
end;

procedure TfmCliente.btImprimirClick(Sender: TObject);
begin
  carregarelatorio(frCliente);
end;

procedure TfmCliente.btNovoClick(Sender: TObject);
begin
  fmconexao.FDQCLI.Insert;
end;

procedure TfmCliente.btSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfmCliente.carregarelatorio(const pReport: TFrxReport);
begin
  pReport.PrepareReport;
  pReport.ShowPreparedReport;
end;

procedure TfmCliente.FDTCliAfterOpen(DataSet: TDataSet);
begin
  Dataset.Open;
end;

function TfmCliente.imprimeCNPJ(CNPJ: string): string;
begin
  { m�scara do CNPJ: 99.999.999.9999-99 }
  imprimeCNPJ := copy(CNPJ, 1, 2) + '.' + copy(CNPJ, 3, 3) + '.' +
    copy(CNPJ, 6, 3) + '.' + copy(CNPJ, 9, 4) + '-' + copy(CNPJ, 13, 2);
end;

function TfmCliente.validaCNPJ(CNPJ: string): boolean;
var   dig13, dig14: string;
    sm, i, r, peso: integer;
begin
// length - retorna o tamanho da string do CNPJ (CNPJ � um n�mero formado por 14 d�gitos)
  if ((CNPJ = '00000000000000') or (CNPJ = '11111111111111') or
      (CNPJ = '22222222222222') or (CNPJ = '33333333333333') or
      (CNPJ = '44444444444444') or (CNPJ = '55555555555555') or
      (CNPJ = '66666666666666') or (CNPJ = '77777777777777') or
      (CNPJ = '88888888888888') or (CNPJ = '99999999999999') or
      (length(CNPJ) <> 14))
     then begin
            validaCNPJ := false;
            exit;
          end;

// "try" - protege o c�digo para eventuais erros de convers�o de tipo atrav�s da fun��o "StrToInt"
  try
{ *-- C�lculo do 1o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 12 downto 1 do
    begin
// StrToInt converte o i-�simo caractere do CNPJ em um n�mero
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig13 := '0'
    else str((11-r):1, dig13); // converte um n�mero no respectivo caractere num�rico

{ *-- C�lculo do 2o. Digito Verificador --* }
    sm := 0;
    peso := 2;
    for i := 13 downto 1 do
    begin
      sm := sm + (StrToInt(CNPJ[i]) * peso);
      peso := peso + 1;
      if (peso = 10)
         then peso := 2;
    end;
    r := sm mod 11;
    if ((r = 0) or (r = 1))
       then dig14 := '0'
    else str((11-r):1, dig14);

{ Verifica se os digitos calculados conferem com os digitos informados. }
    if ((dig13 = CNPJ[13]) and (dig14 = CNPJ[14]))
       then validaCNPJ := true
    else validaCNPJ := false;
  except
    validaCNPJ := false
  end;
end;

end.

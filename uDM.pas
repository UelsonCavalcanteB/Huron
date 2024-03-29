unit uDM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.DBActns, System.Actions, Vcl.ActnList;

type
  TfmConexao = class(TForm)
    Connection: TFDConnection;
    FDQCLI: TFDQuery;
    procedure FDTCLIAfterOpen(DataSet: TDataSet);
    procedure FDTCLIAfterPost(DataSet: TDataSet);
    procedure DatasetInsertExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmConexao: TfmConexao;

implementation

{$R *.dfm}

procedure TfmConexao.DatasetInsertExecute(Sender: TObject);
begin
  //FDTCLI.Post;
end;

procedure TfmConexao.FDTCLIAfterOpen(DataSet: TDataSet);
begin
  Dataset.Open;

end;

procedure TfmConexao.FDTCLIAfterPost(DataSet: TDataSet);
begin
  Dataset.Post;
end;

end.

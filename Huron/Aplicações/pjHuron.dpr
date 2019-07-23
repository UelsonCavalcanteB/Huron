program pjHuron;

uses
  Vcl.Forms,
  huron in 'huron.pas' {fmHuron},
  uCadastroCliente in 'uCadastroCliente.pas' {fmCliente},
  uDM in 'uDM.pas' {fmConexao},
  uProduto in 'uProduto.pas' {fmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Huron';
  Application.CreateForm(TfmHuron, fmHuron);
  Application.CreateForm(TfmCliente, fmCliente);
  Application.CreateForm(TfmConexao, fmConexao);
  Application.CreateForm(TfmProduto, fmProduto);
  Application.Run;
end.

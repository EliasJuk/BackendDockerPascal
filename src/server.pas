program simplehttpserver;

uses
  sysutils, fphttpserver;

type
  TSimpleHTTPServer = class(TFPHttpServer)
  protected
    procedure HandleRequest(Var ARequest: TFPHttpConnectionRequest; Var AResponse: TFPHttpConnectionResponse); override;
  end;

procedure TSimpleHTTPServer.HandleRequest(Var ARequest: TFPHttpConnectionRequest; Var AResponse: TFPHttpConnectionResponse);
begin
  AResponse.ContentType := 'text/plain';
  AResponse.Content := 'Hello, World!';
end;

var
  HTTPServer: TSimpleHTTPServer;

begin
  HTTPServer := TSimpleHTTPServer.Create(nil);
  try
    HTTPServer.Port := 8081;  // Porta do servidor
    writeln('Servidor rodando na porta 8081...');
    HTTPServer.Active := True;  // Ativa o servidor
    readln;  // Mantém o servidor ativo até que o usuário pressione Enter
  finally
    HTTPServer.Free;
  end;
end.
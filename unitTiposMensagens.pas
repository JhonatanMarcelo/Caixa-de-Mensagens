unit unitTiposMensagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
   ShowMessage('Teste de Menssagem');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Application.MessageBox('Teste de Mensagem','Aten�ao',MB_ICONEXCLAMATION+MB_OK);
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Teste de Mensagem','Informa�ao', MB_ICONINFORMATION+MB_OK);
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  Application.MessageBox('Teste Mensagem','Erro', MB_ICONERROR+MB_OK);
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
  Application.MessageBox('Teste de Mensagem', 'Pergunta', MB_ICONQUESTION+MB_OK);
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
  Application.MessageBox('Texto de Mansagem','Titulo', MB_ICONQUESTION+MB_OK);
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
  Application.MessageBox('Teste de Menssagem','Titulo', MB_ICONQUESTION+MB_OKCANCEL);
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
  // 'MB_ICON' que icone vai aparecer na caixa de alerta + 'MB_YESNO(ou outro que seja)' opcoes clicaveis de botoes, ex desse; sim ou nao.
  // comando CTRL + espa�o depois de digitar 'Mr', seleciona um comando do 'MB_YESNO' para selecionar no IF.
  IF Application.MessageBox('Teste de Menssagem','Titulo',MB_ICONQUESTION+MB_YESNO) = MrYes THEN
    begin
     ShowMessage('Voce escolheu o botao SIM');
    end
  // ELSE passa para a escolha nao, caso o usuario a escolha, mostrando a menssagem digitada no 'begin' abaixo.
  ELSE
    begin
      ShowMessage('Voce escolheu o botao NAO');
    end;


end;

procedure TForm4.Button9Click(Sender: TObject);
begin

  //Codigo criado para se o usuario clicar em sim 'MrYES ele feche o app 'Application.terminate'
  IF Application.MessageBox('Deseja realmente sair do Sistema?','Confirma�ao', MB_ICONQUESTION+MB_YESNO) = MrYes THEN
    begin
     Application.Terminate;
    end;

end;

end.

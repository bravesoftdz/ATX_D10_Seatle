program KeyGen;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Activate ATX';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

unit Slash_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, IniFiles, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TSlash = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    ProductName: TLabel;
    Bevel2: TBevel;
    Version: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    IdFTP: TIdFTP;
  private
    { Private declarations }
  public
    procedure chekUpdate;
  end;

var
  Slash: TSlash;

implementation
        uses dm_u,main_u;
{$R *.dfm}

procedure TSlash.chekUpdate();
var
isFileUpdate:boolean;
pathName,pathNameAll,fileNameUpdate:String;
i:integer;
DMIni:TIniFile;
begin

with dm do
begin
  ADO.Close;
  ADO.ConnectionString := 'FILE NAME=.\atxuvd.udl';
  try
    ADO.Connected:=true;
    isFileUpdate:=false;
    if not dm.getVersion then
      begin
      pathName:=dm.pathUpdate;
      fileNameUpdate:=dm.fileNameUpdate;

  pathNameAll:=  'c:/setup'+IntToStr(dm.verDB)+'.exe';
  idFTP.Username:= dm.ftpuser;
  idFTP.Password:= dm.ftppass;
  idFTP.Host:= pathName;
  idFTP.Passive:= false;
  idFTP.AutoLogin:=True;

  if idFTP.Connected then
      idFTP.Disconnect;
try
    idFTP.Connect;
  except
    on E : Exception do
      //ShowMessage('������ �����������: '+E.Message);
  end;
  if idFTP.Connected then
    try
    if fileNameUpdate='' then fileNameUpdate:='setup.exe';
      idFTP.Get(fileNameUpdate, pathNameAll, True);
      if FileExists(pathNameAll) then
      Main.ATXMessageDlgLink('���������� �������� ��������� �� ����� ������! ������� �� � �������� ���������. ���� ��������� �� ��������, ���������� � ��������������.'+#13+pathNameAll+#13+#13,pathNameAll,1,mtError);
        Application.Terminate;
    except
      on E : Exception do
        //ShowMessage('������ ���������� �����: '+E.Message);
    end;





  end

  except
    Main.ATXMessageDlg('��� ���������� � �������� ! ���������� � �������������� !',1, mtError);
    Application.Terminate;
  end;
end;
end;
end.

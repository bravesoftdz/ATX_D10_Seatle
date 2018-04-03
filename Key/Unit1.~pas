unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    function  Pass(const S:AnsiString):String;
    function  Repass(const S:AnsiString):String;
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var i: integer;
begin
 Edit2.Text:='';
 for i := 1 to Length(Edit1.Text) do
 begin
    Edit2.Text := Edit2.Text+Pass(copy(Edit1.Text,i,1));
   end;

end;

function  TForm1.Pass(const S:AnsiString):String;
var
  I:Integer;
begin
  Result:='';
  for I := 1 to Length(S) do
  begin
    case S[I] of
'0':Result:=Result+'z';
'1':Result:=Result+'x';
'2':Result:=Result+'c';
'3':Result:=Result+'v';
'4':Result:=Result+'b';
'5':Result:=Result+'n';
'6':Result:=Result+'m';
'7':Result:=Result+'a';
'8':Result:=Result+'s';
'9':Result:=Result+'d';
'A':Result:=Result+'f';
'B':Result:=Result+'g';
'C':Result:=Result+'h';
'D':Result:=Result+'j';
'E':Result:=Result+'k';
'F':Result:=Result+'l';
'G':Result:=Result+'q';
'H':Result:=Result+'w';
'I':Result:=Result+'e';
'J':Result:=Result+'r';
'K':Result:=Result+'t';
'L':Result:=Result+'y';
'M':Result:=Result+'u';
'N':Result:=Result+'i';
'O':Result:=Result+'o';
'P':Result:=Result+'p';
'Q':Result:=Result+'1';
'R':Result:=Result+'2';
'S':Result:=Result+'3';
'T':Result:=Result+'4';
'U':Result:=Result+'5';
'V':Result:=Result+'6';
'W':Result:=Result+'7';
'X':Result:=Result+'8';
'Y':Result:=Result+'9';
'Z':Result:=Result+'0';
'a':Result:=Result+'Z';
'b':Result:=Result+'X';
'c':Result:=Result+'C';
'd':Result:=Result+'V';
'e':Result:=Result+'B';
'f':Result:=Result+'N';
'g':Result:=Result+'M';
'h':Result:=Result+'A';
'i':Result:=Result+'S';
'j':Result:=Result+'D';
'k':Result:=Result+'F';
'l':Result:=Result+'G';
'm':Result:=Result+'H';
'n':Result:=Result+'J';
'o':Result:=Result+'K';
'p':Result:=Result+'L';
'q':Result:=Result+'Q';
'r':Result:=Result+'W';
's':Result:=Result+'E';
't':Result:=Result+'R';
'u':Result:=Result+'T';
'v':Result:=Result+'Y';
'w':Result:=Result+'U';
'x':Result:=Result+'I';
'y':Result:=Result+'O';
'z':Result:=Result+'P';
    else ;
      Result:=Result+'';
    end;
  end;
end;

function  TForm1.Repass(const S:AnsiString):String;
var
  y:Integer;
begin
  Result:='';
  for y := 1 to Length(S) do
  begin
    case S[y] of
'z':Result:=Result+'0';
'x':Result:=Result+'1';
'c':Result:=Result+'2';
'v':Result:=Result+'3';
'b':Result:=Result+'4';
'n':Result:=Result+'5';
'm':Result:=Result+'6';
'a':Result:=Result+'7';
's':Result:=Result+'8';
'd':Result:=Result+'9';
'f':Result:=Result+'A';
'g':Result:=Result+'B';
'h':Result:=Result+'C';
'j':Result:=Result+'D';
'k':Result:=Result+'E';
'l':Result:=Result+'F';
'q':Result:=Result+'G';
'w':Result:=Result+'H';
'e':Result:=Result+'I';
'r':Result:=Result+'J';
't':Result:=Result+'K';
'y':Result:=Result+'L';
'u':Result:=Result+'M';
'i':Result:=Result+'N';
'o':Result:=Result+'O';
'p':Result:=Result+'P';
'1':Result:=Result+'Q';
'2':Result:=Result+'R';
'3':Result:=Result+'S';
'4':Result:=Result+'T';
'5':Result:=Result+'U';
'6':Result:=Result+'V';
'7':Result:=Result+'W';
'8':Result:=Result+'X';
'9':Result:=Result+'Y';
'0':Result:=Result+'Z';
'Z':Result:=Result+'a';
'X':Result:=Result+'b';
'C':Result:=Result+'c';
'V':Result:=Result+'d';
'B':Result:=Result+'e';
'N':Result:=Result+'f';
'M':Result:=Result+'g';
'A':Result:=Result+'h';
'S':Result:=Result+'i';
'D':Result:=Result+'j';
'F':Result:=Result+'k';
'G':Result:=Result+'l';
'H':Result:=Result+'m';
'J':Result:=Result+'n';
'K':Result:=Result+'o';
'L':Result:=Result+'p';
'Q':Result:=Result+'q';
'W':Result:=Result+'r';
'E':Result:=Result+'s';
'R':Result:=Result+'t';
'T':Result:=Result+'u';
'Y':Result:=Result+'v';
'U':Result:=Result+'w';
'I':Result:=Result+'x';
'O':Result:=Result+'y';
'P':Result:=Result+'z';
     else ;
      Result:=Result+'';
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

end.

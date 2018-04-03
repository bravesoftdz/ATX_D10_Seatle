unit libr_lim_probeg_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RXCtrls, StdCtrls, LbButton, ExtCtrls, Mask, rxToolEdit, rxCurrEdit,DB,ADODB,
  Grids, RXGrids;

type
  TfrmLimProbeg = class(TForm)
    GroupBox1: TGroupBox;
    RxCheckListBoxKuzov: TRxCheckListBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    RxCheckListBoxService: TRxCheckListBox;
    RxCheckListBoxDepart: TRxCheckListBox;
    LbB_Open: TLbButton;
    value_edit: TEdit;
    LbB_add: TLbButton;
    ReplaceCheckBox: TCheckBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure LbB_OpenClick(Sender: TObject);
    procedure LbB_addClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    ProcLibr:integer;
    procedure OpenLibr(what:integer);
    function getKuzov():String;
        function getServ():String;
            function getDepart():String;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmLimProbeg: TfrmLimProbeg;

implementation

uses main_u, dm_u;
{$R *.dfm}
procedure TfrmLimProbeg.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
//    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;
procedure TfrmLimProbeg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLimProbeg:=nil;
end;

procedure TfrmLimProbeg.FormCreate(Sender: TObject);
begin
if Main.UserRole=ADMIN_USER then
LbB_add.Enabled:=true else
LbB_add.Enabled:=false;
if Main.UserRole=GSM_USER then
begin
    LbB_add.Enabled:=true;
end;

end;
procedure TfrmLimProbeg.LbB_addClick(Sender: TObject);
var
val:Integer;
begin
  val:=0;
try
val:=StrToInt(value_edit.Text);
except
  Main.ATXMessageDlg('�������� ������ ����� ������!!!',1,mtError);
end;
if val>0 then begin
with dm do
begin
    ADOCom1.Parameters.Clear;
    ADOCom1.CommandType:=cmdStoredProc;
    ADOCom1.CommandText:='SetLimProbeg';
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[0].Name:='@s1';
    ADOCom1.Parameters[0].DataType:=ftString;
    ADOCom1.Parameters[0].Value:=getKuzov();
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[1].Name:='@s2';
    ADOCom1.Parameters[1].DataType:=ftString;
    ADOCom1.Parameters[1].Value:=getServ();
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[2].Name:='@s3';
    ADOCom1.Parameters[2].DataType:=ftString;
    ADOCom1.Parameters[2].Value:=getDepart();

    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[3].Name:='@val';
    ADOCom1.Parameters[3].DataType:=ftInteger;
    ADOCom1.Parameters[3].Value:=val;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[4].Name:='@replace';
    ADOCom1.Parameters[4].DataType:=ftInteger;
    if ReplaceCheckBox.Checked then
      ADOCom1.Parameters[4].Value:=0
      else
      ADOCom1.Parameters[4].Value:=1;


       try
        ADOCom1.Execute;
        CommitTR;
        Main.ATXMessageDlg('��������� �������.',1,mtInformation);
        LbB_OpenClick(Sender);
      except
        RollBTR;
        Main.ATXMessageDlg('������ ��� ���������� ���������!!!',1,mtError);
      end;

end;
end;
end;

function TfrmLimProbeg.getKuzov():String;
var
i:integer;
s:String;
begin
for i := 0 to RxCheckListBoxKuzov.Items.Count - 1 do
begin
if RxCheckListBoxKuzov.Checked[i] then
  s:=s+RxCheckListBoxKuzov.Items[i]+'|';
end;
s:=Copy(s,1,length(s)-1);
Result := s;
end;

function TfrmLimProbeg.getServ():String;
var
i:integer;
s:String;
begin
for i := 0 to RxCheckListBoxService.Items.Count - 1 do
begin
if RxCheckListBoxService.Checked[i] then
  s:=s+RxCheckListBoxService.Items[i]+'|';
end;
s:=Copy(s,1,length(s)-1);
Result := s;
end;

function TfrmLimProbeg.getDepart():String;
var
i:integer;
s:String;
begin
for i := 0 to RxCheckListBoxDepart.Items.Count - 1 do
begin
if RxCheckListBoxDepart.Checked[i] then
  s:=s+RxCheckListBoxDepart.Items[i]+'|';
end;
s:=Copy(s,1,length(s)-1);
Result := s;
end;

procedure TfrmLimProbeg.LbB_OpenClick(Sender: TObject);
var
i:integer;
s1,s2,s3:String;
begin

s1:=getKuzov();;
s2:=getServ();
s3:=getDepart();
with dm do
begin
if StoredProc2.Active then StoredProc2.Active:=false;
StoredProc2.Parameters.Clear;
StoredProc2.ProcedureName:='GetListLimProbeg;1';
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[0].Name:='@RETURN_VALUE';
StoredProc2.Parameters[0].DataType:=ftInteger;
StoredProc2.Parameters[0].Direction:=pdReturnValue;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[1].Name:='@s1';
StoredProc2.Parameters[1].DataType:=ftString;
StoredProc2.Parameters[1].Value:=s1;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[2].Name:='@s2';
StoredProc2.Parameters[2].DataType:=ftString;
StoredProc2.Parameters[2].Value:=s2;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[3].Name:='@s3';
StoredProc2.Parameters[3].DataType:=ftString;
StoredProc2.Parameters[3].Value:=s3;
StoredProc2.Active:=true;
i:=0;
StringGrid1.ColWidths[0] := 250;
StringGrid1.ColWidths[1] := 250;
StringGrid1.ColWidths[2] := 100;
StringGrid1.ColWidths[3] := 50;
StringGrid1.RowCount:=1;
StringGrid1.Cells[0,i]:='';
StringGrid1.Cells[1,i]:='';
StringGrid1.Cells[2,i]:='';
StringGrid1.Cells[3,i]:='';
while not StoredProc2.Eof do
begin
if i>=StringGrid1.RowCount then
           StringGrid1.RowCount:=StringGrid1.RowCount+1;
StringGrid1.Cells[0,i]:=StoredProc2.Fields[2].AsString;
StringGrid1.Cells[1,i]:=StoredProc2.Fields[3].AsString;
StringGrid1.Cells[2,i]:=StoredProc2.Fields[4].AsString;
StringGrid1.Cells[3,i]:=StoredProc2.Fields[5].AsString;
inc(i);

StoredProc2.Next;
end;
StoredProc2.Active:=false;

end;


end;

procedure TfrmLimProbeg.OpenLibr(what:integer);
begin

//8:begin Caption:='��� ������';
//5:begin Caption:='������';
//3:begin Caption:='������';
what:=8;
ProcLibr:=what;
with dm do
begin
if ADO.Connected then begin
if ADOLidr.Active then ADOLidr.Active:=false;

try
ado_type.Open;
ado_type.Sort:='name';
RxCheckListBoxKuzov.Items.Clear;
while not ado_type.Eof do
begin
RxCheckListBoxKuzov.Items.Add(ado_type.Fields[1].AsString);
ado_type.Next;
end;
ado_type.Close;
ado_serv.Open;
ado_serv.Sort:='name';
RxCheckListBoxService.Items.Clear;
while not ado_serv.Eof do
begin
RxCheckListBoxService.Items.Add(ado_serv.Fields[1].AsString);
ado_serv.Next;
end;
ado_serv.Close;

ado_depart.Open;
ado_depart.Sort:='name';
RxCheckListBoxDepart.Items.Clear;
while not ado_depart.Eof do
begin
RxCheckListBoxDepart.Items.Add(ado_depart.Fields[1].AsString);
ado_depart.Next;
end;
ado_depart.Close;
except
//
end;
end;
end;
end;
end.

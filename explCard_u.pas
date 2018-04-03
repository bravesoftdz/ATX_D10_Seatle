unit explCard_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, LbStaticText, LbSpeedButton,
  ExtCtrls, ADODB, LbButton, rxToolEdit, rxCurrEdit;

type
  TfrmExplCard = class(TForm)
    EditPanel: TPanel;
    Label16: TLabel;
    GroupBox6: TGroupBox;
    LbB_Cancel: TLbButton;
    LbB_Post: TLbButton;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    ds_card: TDataSource;
    AddPanel: TPanel;
    GroupBox4: TGroupBox;
    LbB_Cancel2: TLbButton;
    LbB_Save2: TLbButton;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox7: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox8: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    d_outEdit: TRxCalcEdit;
    d_goodEdit: TRxCalcEdit;
    d_operationalEdit: TRxCalcEdit;
    d_remontEdit: TRxCalcEdit;
    h_orderEdit: TRxCalcEdit;
    norma_runEdit: TRxCalcEdit;
    fact_runEdit: TRxCalcEdit;
    gsm_begin_mEdit: TRxCalcEdit;
    gsm_givenEdit: TRxCalcEdit;
    gsm_end_mEdit: TRxCalcEdit;
    gsm_normaEdit: TRxCalcEdit;
    gsm_outEdit: TRxCalcEdit;
    to1Edit: TRxCalcEdit;
    to2Edit: TRxCalcEdit;
    kpEdit: TRxCalcEdit;
    Memo_comm: TMemo;
    Label33: TLabel;
    mmBox: TComboBox;
    m_RB: TRadioButton;
    k_RB: TRadioButton;
    DBMemo1: TDBMemo;
    Label17: TLabel;
    LbButton2: TLbButton;
    GroupBox9: TGroupBox;
    Label34: TLabel;
    speed_end: TRxCalcEdit;
    Label35: TLabel;
    speed_begin: TRxCalcEdit;
    GroupBox10: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    YearBox1: TComboBox;
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure bclClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LbB_PostClick(Sender: TObject);
    procedure LbB_CancelClick(Sender: TObject);
    procedure k_RBClick(Sender: TObject);
    procedure m_RBClick(Sender: TObject);
    procedure d_outEditChange(Sender: TObject);
  private
    id_avt,what:integer;
    procedure ds_mainBeforeEdit(DataSet: TDataSet);
    function Add_Expl(mm,kv:integer;dat:TdateTime):byte;
    function Add_Expl2(kv:integer;dat:TdateTime):byte;
    procedure CheckUser;
  public
  ds_main:TDataSet;
    procedure OpenCard(ds:TDataSet;id:integer;mark:String);
    procedure NewCard(id:integer;mark:String);
    procedure NewCard2(id:integer;mark:String);
    procedure SetTitleCard(title:String);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmExplCard: TfrmExplCard;

implementation

uses main_u, dm_u,expl_u;

{$R *.dfm}
procedure TfrmExplCard.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    //Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;
procedure TfrmExplCard.CheckUser;
begin
if (Main.UserRole=2) or (Main.UserRole=1) then
LbB_Post.Enabled:=true;
end;

procedure TfrmExplCard.NewCard(id:integer;mark:String);
begin
what:=0;
id_avt:=id;
AddPanel.Visible:=true;
frmExplCard.Height:=425;
end;
procedure TfrmExplCard.NewCard2(id:integer;mark:String);
begin
what:=2;
id_avt:=id;
AddPanel.Visible:=true;
frmExplCard.Height:=425;
end;
procedure TfrmExplCard.OpenCard(ds:TDataSet;id:integer;mark:String);
var
dat:TDateTime;
M,D,Y:Word;
begin
what:=1;
EditPanel.Visible:=true;
frmExplCard.Height:=400;
id_avt:=id;
SetTitleCard(mark);
ds_card.DataSet:=ds;
ds_main:=ds;
ds_main.BeforeEdit:=ds_mainBeforeEdit;
dat:=ds_main.Fields[21].AsDateTime;
DecodeDate(dat, Y, M, D);
Label16.Caption:=ds_main.Fields[0].AsString+' '+IntToStr(Y)+' �.';
end;
procedure TfrmExplCard.SetTitleCard(title:String);
begin
Caption:='��������������� �������� �������������� "'+title+'"';
end;
procedure TfrmExplCard.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TfrmExplCard.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
i:byte;
Year, Month, Day: Word;
begin
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
YearBox1.Items.Clear;
for i:=0 to 100 do
YearBox1.Items.Add(IntToStr(2000+i));
DecodeDate(Date(), Year, Month, Day);
YearBox1.Text:=IntToStr(Year);
end;

procedure TfrmExplCard.bclClick(Sender: TObject);
begin
case what of
1:begin
if ds_main.Modified then
ds_main.Post else
ds_main.Cancel;
end;
end;
Close;
end;

procedure TfrmExplCard.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
   begin
     Key := #0;
     if GetKeyState(VK_Shift) and $8000 <> 0 then
       PostMessage(Handle, WM_NEXTDLGCTL, 1, 0)
     else
       PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
   end;

end;

procedure TfrmExplCard.LbB_PostClick(Sender: TObject);
var
mm,kv,error:integer;
dat:TDateTime;
begin
case what of
0,2:begin
mm:=0;
if (mmBox.Text='������') then begin mm:=1; kv:=1; dat := EncodeDate(StrToInt(YearBox1.Text), 01,31); end;
if (mmBox.Text='�������') then begin mm:=2; kv:=1; dat := EncodeDate(StrToInt(YearBox1.Text), 02,28); end;
if (mmBox.Text='����') then begin mm:=3; kv:=1; dat := EncodeDate(StrToInt(YearBox1.Text), 03,31); end;
if (mmBox.Text='������') then begin mm:=4; kv:=2; dat := EncodeDate(StrToInt(YearBox1.Text), 04,30); end;
if (mmBox.Text='���') then begin mm:=5; kv:=2; dat := EncodeDate(StrToInt(YearBox1.Text), 05,31); end;
if (mmBox.Text='����') then begin mm:=6; kv:=2; dat := EncodeDate(StrToInt(YearBox1.Text), 06,30); end;
if (mmBox.Text='����') then begin mm:=7; kv:=3; dat := EncodeDate(StrToInt(YearBox1.Text), 07,31); end;
if (mmBox.Text='������') then begin mm:=8; kv:=3; dat := EncodeDate(StrToInt(YearBox1.Text), 08,31); end;
if (mmBox.Text='��������') then begin mm:=9; kv:=3; dat := EncodeDate(StrToInt(YearBox1.Text), 09,30); end;
if (mmBox.Text='�������') then begin mm:=10; kv:=4; dat := EncodeDate(StrToInt(YearBox1.Text), 10,31); end;
if (mmBox.Text='������') then begin mm:=11; kv:=4; dat := EncodeDate(StrToInt(YearBox1.Text), 11,30); end;
if (mmBox.Text='�������') then begin mm:=12; kv:=4; dat := EncodeDate(StrToInt(YearBox1.Text), 12,31); end;
if (mmBox.Text='I   �������') then begin mm:=111; kv:=1; dat := EncodeDate(StrToInt(YearBox1.Text), 03,31); end;
if (mmBox.Text='II  �������') then begin mm:=222; kv:=2; dat := EncodeDate(StrToInt(YearBox1.Text), 06,30); end;
if (mmBox.Text='III �������') then begin mm:=333; kv:=3; dat := EncodeDate(StrToInt(YearBox1.Text), 09,30); end;
if (mmBox.Text='IV  �������') then begin mm:=444; kv:=4; dat := EncodeDate(StrToInt(YearBox1.Text), 12,31); end;
if mm<>0 then
begin
error:=Add_Expl(mm,kv,dat);
        if error=0 then
        begin
                if what=0 then
                        Main.ExplRefresh;
                Close
        end
        else
        if error=1 then
                Main.ATXMessageDlg('������ ��� ���������� ������!',1,mtError)
        else
        if error=2 then
                Main.ATXMessageDlg('������ ��� ���������� � ������!',1,mtError)//�� ������ ������ ������ ��� ����������
end else Main.ATXShowMessage('�� ������ ������!');
end;
1:begin
try
if ds_main.Modified then
ds_main.Post;
Add_Expl2(kv,dat);
LbB_Cancel.Enabled:=false;
LbB_Post.Enabled:=false;
except
Main.ATXShowMessage('��������� ������ �� ����� ���� ��������, �������� ������ ������������ �� ��������!');
end;
end;
end;
end;

procedure TfrmExplCard.LbB_CancelClick(Sender: TObject);
var
i:integer;
begin
case what of
0,2:begin
for i:=0 to frmExplCard.ComponentCount-1 do
 if frmExplCard.Components[i].ClassType=TRxCalcEdit then
 (frmExplCard.Components[i] as TRxCalcEdit).Value:=0;
mmBox.Text:='';
Memo_comm.Clear;
LbB_Cancel2.Enabled:=false;
LbB_Save2.Enabled:=false;
end;
1:begin
ds_main.Cancel;
LbB_Cancel.Enabled:=false;
LbB_Post.Enabled:=false;
end;
end;
end;

procedure TfrmExplCard.ds_mainBeforeEdit(DataSet: TDataSet);
begin
LbB_Cancel.Enabled:=true;
CheckUser;
end;

procedure TfrmExplCard.k_RBClick(Sender: TObject);
begin
with mmBox do
begin
        Text:='';
        Clear;
        Items.Add('I   �������');
        Items.Add('II  �������');
        Items.Add('III �������');
        Items.Add('IV  �������');
end;
end;

procedure TfrmExplCard.m_RBClick(Sender: TObject);
begin
with mmBox do
begin
        Text:='';
        Clear;
        Items.Add('������');
        Items.Add('�������');
        Items.Add('����');
        Items.Add('������');
        Items.Add('���');
        Items.Add('����');
        Items.Add('����');
        Items.Add('������');
        Items.Add('��������');
        Items.Add('�������');
        Items.Add('������');
        Items.Add('�������');
end;
end;

procedure TfrmExplCard.d_outEditChange(Sender: TObject);
begin
LbB_Cancel2.Enabled:=true;
LbB_Save2.Enabled:=true;
end;

function TfrmExplCard.Add_Expl(mm,kv:integer;dat:TdateTime):byte;
var
d_out,d_good,d_operational,d_remont,h_order,norma_run,fact_run,to1,to2,kp,gsm_begin_m,gsm_given,
gsm_end_m,gsm_norma,gsm_out:real;

begin
Add_Expl:=1;
    with dm do
    begin
       if ADO.Connected then begin
        if StoredProc1.Active then StoredProc1.Active:=false;
        StoredProc1.Parameters.Clear;
        StoredProc1.ProcedureName:='CheckExpl;1';
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
        StoredProc1.Parameters[0].DataType:=ftInteger;
        StoredProc1.Parameters[0].Direction:=pdReturnValue;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[1].Name:='@id';
        StoredProc1.Parameters[1].DataType:=ftInteger;
        StoredProc1.Parameters[1].Value:=id_avt;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[2].Name:='@mm';
        StoredProc1.Parameters[2].DataType:=ftInteger;
        StoredProc1.Parameters[2].Value:=mm;
        StoredProc1.Parameters.AddParameter;
        StoredProc1.Parameters[3].Name:='@dat';
        StoredProc1.Parameters[3].DataType:=ftDateTime;
        StoredProc1.Parameters[3].Value:=dat;
        StoredProc1.Open;
        if StoredProc1.Eof then
        begin
                if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='SetExpl;1';
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@id';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=id_avt;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[1].Name:='@mm';
                StoredProc1.Parameters[1].DataType:=ftInteger;
                StoredProc1.Parameters[1].Value:=mm;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[2].Name:='@d_out';
                StoredProc1.Parameters[2].DataType:=ftFloat;
                StoredProc1.Parameters[2].Value:=d_outEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[3].Name:='@d_good';
                StoredProc1.Parameters[3].DataType:=ftFloat;
                StoredProc1.Parameters[3].Value:=d_goodEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[4].Name:='@d_operational';
                StoredProc1.Parameters[4].DataType:=ftFloat;
                StoredProc1.Parameters[4].Value:=d_operationalEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[5].Name:='@d_remont';
                StoredProc1.Parameters[5].DataType:=ftFloat;
                StoredProc1.Parameters[5].Value:=d_remontEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[6].Name:='@h_order';
                StoredProc1.Parameters[6].DataType:=ftFloat;
                StoredProc1.Parameters[6].Value:=h_orderEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[7].Name:='@norma_run';
                StoredProc1.Parameters[7].DataType:=ftFloat;
                StoredProc1.Parameters[7].Value:=norma_runEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[8].Name:='@fact_run';
                StoredProc1.Parameters[8].DataType:=ftFloat;
                StoredProc1.Parameters[8].Value:=fact_runEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[9].Name:='@to1';
                StoredProc1.Parameters[9].DataType:=ftFloat;
                StoredProc1.Parameters[9].Value:=to1Edit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[10].Name:='@to2';
                StoredProc1.Parameters[10].DataType:=ftFloat;
                StoredProc1.Parameters[10].Value:=to2Edit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[11].Name:='@kp';
                StoredProc1.Parameters[11].DataType:=ftFloat;
                StoredProc1.Parameters[11].Value:=kpEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[12].Name:='@gsm_begin_m';
                StoredProc1.Parameters[12].DataType:=ftFloat;
                StoredProc1.Parameters[12].Value:=gsm_begin_mEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[13].Name:='@gsm_given';
                StoredProc1.Parameters[13].DataType:=ftFloat;
                StoredProc1.Parameters[13].Value:=gsm_givenEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[14].Name:='@gsm_end_m';
                StoredProc1.Parameters[14].DataType:=ftFloat;
                StoredProc1.Parameters[14].Value:=gsm_end_mEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[15].Name:='@gsm_norma';
                StoredProc1.Parameters[15].DataType:=ftFloat;
                StoredProc1.Parameters[15].Value:=gsm_normaEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[16].Name:='@gsm_out';
                StoredProc1.Parameters[16].DataType:=ftFloat;
                StoredProc1.Parameters[16].Value:=gsm_outEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[17].Name:='@comm';
                StoredProc1.Parameters[17].DataType:=ftString;
                StoredProc1.Parameters[17].Value:=Memo_comm.Text;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[18].Name:='@dat';
                StoredProc1.Parameters[18].DataType:=ftDateTime;
                StoredProc1.Parameters[18].Value:=dat;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[19].Name:='@kv';
                StoredProc1.Parameters[19].DataType:=ftInteger;
                StoredProc1.Parameters[19].Value:=kv;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[20].Name:='@what';
                StoredProc1.Parameters[20].DataType:=ftInteger;
                StoredProc1.Parameters[20].Value:=0;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[21].Name:='@speed_b';
                StoredProc1.Parameters[21].DataType:=ftFloat;
                StoredProc1.Parameters[21].Value:=speed_begin.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[22].Name:='@speed_end';
                StoredProc1.Parameters[22].DataType:=ftFloat;
                StoredProc1.Parameters[22].Value:=speed_end.Value;

                try
                        StoredProc1.ExecProc;
                        CommitTR;
                        Add_Expl:=0
                except
                        RollBTR;
                        Add_Expl:=1;
                end;
        end//if eof
        else
        begin
             Add_Expl:=0;
d_out:=StoredProc1.Fields[2].AsFloat;
d_good:=StoredProc1.Fields[3].AsFloat;
d_operational:=StoredProc1.Fields[4].AsFloat;
d_remont:=StoredProc1.Fields[5].AsFloat;
h_order:=StoredProc1.Fields[6].AsFloat;
norma_run:=StoredProc1.Fields[7].AsFloat;
fact_run:=StoredProc1.Fields[8].AsFloat;
to1:=StoredProc1.Fields[9].AsFloat;
to2:=StoredProc1.Fields[10].AsFloat;
kp:=StoredProc1.Fields[11].AsFloat;
gsm_begin_m:=StoredProc1.Fields[12].AsFloat;
gsm_given:=StoredProc1.Fields[13].AsFloat;
gsm_end_m:=StoredProc1.Fields[14].AsFloat;
gsm_norma:=StoredProc1.Fields[15].AsFloat;
gsm_out:=StoredProc1.Fields[16].AsFloat;
                if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='SetExpl;1';
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@id';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=id_avt;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[1].Name:='@mm';
                StoredProc1.Parameters[1].DataType:=ftInteger;
                StoredProc1.Parameters[1].Value:=mm;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[2].Name:='@d_out';
                StoredProc1.Parameters[2].DataType:=ftFloat;
                StoredProc1.Parameters[2].Value:=d_out+d_outEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[3].Name:='@d_good';
                StoredProc1.Parameters[3].DataType:=ftFloat;
                StoredProc1.Parameters[3].Value:=d_good+d_goodEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[4].Name:='@d_operational';
                StoredProc1.Parameters[4].DataType:=ftFloat;
                StoredProc1.Parameters[4].Value:=d_operational+d_operationalEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[5].Name:='@d_remont';
                StoredProc1.Parameters[5].DataType:=ftFloat;
                StoredProc1.Parameters[5].Value:=d_remont+d_remontEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[6].Name:='@h_order';
                StoredProc1.Parameters[6].DataType:=ftFloat;
                StoredProc1.Parameters[6].Value:=h_order+h_orderEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[7].Name:='@norma_run';
                StoredProc1.Parameters[7].DataType:=ftFloat;
                StoredProc1.Parameters[7].Value:=norma_run+norma_runEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[8].Name:='@fact_run';
                StoredProc1.Parameters[8].DataType:=ftFloat;
                StoredProc1.Parameters[8].Value:=fact_run+fact_runEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[9].Name:='@to1';
                StoredProc1.Parameters[9].DataType:=ftFloat;
                StoredProc1.Parameters[9].Value:=to1+to1Edit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[10].Name:='@to2';
                StoredProc1.Parameters[10].DataType:=ftFloat;
                StoredProc1.Parameters[10].Value:=to2+to2Edit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[11].Name:='@kp';
                StoredProc1.Parameters[11].DataType:=ftFloat;
                StoredProc1.Parameters[11].Value:=kp+kpEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[12].Name:='@gsm_begin_m';
                StoredProc1.Parameters[12].DataType:=ftFloat;
                StoredProc1.Parameters[12].Value:=gsm_begin_m+gsm_begin_mEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[13].Name:='@gsm_given';
                StoredProc1.Parameters[13].DataType:=ftFloat;
                StoredProc1.Parameters[13].Value:=gsm_given+gsm_givenEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[14].Name:='@gsm_end_m';
                StoredProc1.Parameters[14].DataType:=ftFloat;
                StoredProc1.Parameters[14].Value:=gsm_end_m+gsm_end_mEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[15].Name:='@gsm_norma';
                StoredProc1.Parameters[15].DataType:=ftFloat;
                StoredProc1.Parameters[15].Value:=gsm_norma+gsm_normaEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[16].Name:='@gsm_out';
                StoredProc1.Parameters[16].DataType:=ftFloat;
                StoredProc1.Parameters[16].Value:=gsm_out+gsm_outEdit.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[17].Name:='@comm';
                StoredProc1.Parameters[17].DataType:=ftString;
                StoredProc1.Parameters[17].Value:=Memo_comm.Text;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[18].Name:='@dat';
                StoredProc1.Parameters[18].DataType:=ftDateTime;
                StoredProc1.Parameters[18].Value:=dat;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[19].Name:='@kv';
                StoredProc1.Parameters[19].DataType:=ftInteger;
                StoredProc1.Parameters[19].Value:=kv;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[20].Name:='@what';
                StoredProc1.Parameters[20].DataType:=ftInteger;
                StoredProc1.Parameters[20].Value:=1;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[21].Name:='@speed_b';
                StoredProc1.Parameters[21].DataType:=ftFloat;
                StoredProc1.Parameters[21].Value:=speed_begin.Value;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[22].Name:='@speed_end';
                StoredProc1.Parameters[22].DataType:=ftFloat;
                StoredProc1.Parameters[22].Value:=speed_end.Value;
                try
                        StoredProc1.ExecProc;
                        CommitTR;
                        Add_Expl:=0
                except
                        RollBTR;
                        Add_Expl:=2;
                end;

        end;//else
       end;
     end;

end;
function TfrmExplCard.Add_Expl2(kv:integer;dat:TdateTime):byte;
begin
id_avt:=ds_main.Fields[20].AsInteger;
dat:=ds_main.Fields[21].AsDateTime;
kv:=ds_main.Fields[22].AsInteger;
    with dm do
    begin
       if ADO.Connected then begin
                if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='SetShinProbegUpdate;1';
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@id';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=id_avt;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[1].Name:='@dat';
                StoredProc1.Parameters[1].DataType:=ftDateTime;
                StoredProc1.Parameters[1].Value:=dat;
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[2].Name:='@kv';
                StoredProc1.Parameters[2].DataType:=ftInteger;
                StoredProc1.Parameters[2].Value:=kv;

                try
                        StoredProc1.ExecProc;
                        CommitTR;
                except
                        RollBTR;
                end;
     end;
    end;

end;
end.

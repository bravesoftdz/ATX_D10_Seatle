unit shtat_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText, LbSpeedButton, ExtCtrls, LbButton, Grids, DBGrids,DB,ADODB,
  RxLookup, StdCtrls, Menus, Mask, ComCtrls, rxToolEdit, rxCurrEdit;

type
  TfrmShtatSetting = class(TForm)
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel3: TPanel;
    LbB_Save: TLbButton;
    LbB_Del: TLbButton;
    db_reg: TRxDBLookupCombo;
    db_div: TRxDBLookupCombo;
    db_depart: TRxDBLookupCombo;
    db_pre: TRxDBLookupCombo;
    db_serv: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LbButton1: TLbButton;
    LbSpeedButton3: TLbSpeedButton;
    LbSpeedButton1: TLbSpeedButton;
    LbSpeedButton2: TLbSpeedButton;
    LbSpeedButton4: TLbSpeedButton;
    LbSpeedButton5: TLbSpeedButton;
    ScrollBox2: TScrollBox;
    GroupBox2: TGroupBox;
    sg2_m: TStringGrid;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    Edit_p_m: TRxCalcEdit;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    rb_m1: TRadioButton;
    rb_m2: TRadioButton;
    constr_01_m: TRxCalcEdit;
    constr_03_m: TRxCalcEdit;
    ScrollBox3: TScrollBox;
    GroupBox8: TGroupBox;
    sg2_f: TStringGrid;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Edit_p_f: TRxCalcEdit;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    constr_01_f: TRxCalcEdit;
    constr_03_f: TRxCalcEdit;
    rb_f1: TRadioButton;
    rb_f2: TRadioButton;
    Panel2: TPanel;
    LbSpeedButton6: TLbSpeedButton;
    LbSpeedButton7: TLbSpeedButton;
    Panel4: TPanel;
    LbSpeedButton8: TLbSpeedButton;
    LbSpeedButton9: TLbSpeedButton;
    LbButton2: TLbButton;
    Label12: TLabel;
    db_preserv: TRxDBLookupCombo;
    LbSpeedButton10: TLbSpeedButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet1: TTabSheet;
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure bclClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb_m1Click(Sender: TObject);
    procedure rb_m2Click(Sender: TObject);
    procedure rb_f1Click(Sender: TObject);
    procedure rb_f2Click(Sender: TObject);
    procedure constr_01_mKeyPress(Sender: TObject; var Key: Char);
    procedure LbB_DelClick(Sender: TObject);
    procedure LbButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LbB_SaveClick(Sender: TObject);
    procedure LbSpeedButton3Click(Sender: TObject);
    procedure LbSpeedButton1Click(Sender: TObject);
    procedure LbSpeedButton2Click(Sender: TObject);
    procedure LbSpeedButton4Click(Sender: TObject);
    procedure LbSpeedButton5Click(Sender: TObject);
    procedure sg2_fDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LbSpeedButton6Click(Sender: TObject);
    procedure LbSpeedButton7Click(Sender: TObject);
    procedure LbSpeedButton8Click(Sender: TObject);
    procedure LbSpeedButton9Click(Sender: TObject);
    procedure db_regClick(Sender: TObject);
    procedure LbSpeedButton10Click(Sender: TObject);
  private
    changeValue,EditShtate:boolean;
    id_setting:integer;
    function Save_Satting:boolean;
  public
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmShtatSetting: TfrmShtatSetting;

implementation

uses main_u, dm_u;

{$R *.dfm}
procedure TfrmShtatSetting.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    //Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

procedure TfrmShtatSetting.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);

end;

procedure TfrmShtatSetting.FormCreate(Sender: TObject);
begin
EditShtate:=false;
PageControl1.ActivePage:=TabSheet2;
SG2_m.Cells[0,0]:='���-�� ���. �';
SG2_m.Cells[1,0]:='���-�� ���. ��';
SG2_m.Cells[2,0]:='���-�� �����';
SG2_f.Cells[0,0]:='���-�� ���. �';
SG2_f.Cells[1,0]:='���-�� ���. ��';
SG2_f.Cells[2,0]:='���-�� �����';
with dm do
begin
    ado_reg.Open;ado_reg.Sort:='name';
    ado_div.Open;ado_div.Sort:='name';
    ado_depart.Open;ado_depart.Sort:='name';
    ado_pre.Open;ado_pre.Sort:='name';
    ado_serv.Open;ado_serv.Sort:='name';
    ado_preserv.Open;ado_preserv.Sort:='name';
end;
end;

procedure TfrmShtatSetting.bclClick(Sender: TObject);
begin
if changeValue then
begin
  case Main.ATXMessageDlg('��������� ���������?',
    3,mtConfirmation) of
  mrYes:begin
  LbB_SaveClick(Self);
  Close;
  end;
  mrNo:Close;
  end;
end else Close;
end;


procedure TfrmShtatSetting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
with dm do
begin
    ado_reg.Close;
    ado_div.Close;
    ado_depart.Close;
    ado_pre.Close;
    ado_serv.Close;
    ado_preserv.Close;
end;
frmShtatSetting:=nil;
end;

procedure TfrmShtatSetting.rb_m1Click(Sender: TObject);
begin
if rb_m1.Checked then
begin
constr_01_m.Enabled:=true;
constr_03_m.Enabled:=true;
GroupBox2.Visible:=false;
sg2_m.Enabled:=false;
end
end;

procedure TfrmShtatSetting.rb_m2Click(Sender: TObject);
begin
if rb_m2.Checked then
begin
constr_01_m.Enabled:=false;
constr_03_m.Enabled:=false;
GroupBox2.Visible:=true;
sg2_m.Enabled:=true;
end
end;

procedure TfrmShtatSetting.rb_f1Click(Sender: TObject);
begin
if rb_f1.Checked then
begin
constr_01_f.Enabled:=true;
constr_03_f.Enabled:=true;
GroupBox8.Visible:=false;
sg2_f.Enabled:=false;
end
end;

procedure TfrmShtatSetting.rb_f2Click(Sender: TObject);
begin
if rb_f2.Checked then
begin
constr_01_f.Enabled:=false;
constr_03_f.Enabled:=false;
GroupBox8.Visible:=true;
sg2_f.Enabled:=true;
end

end;

procedure TfrmShtatSetting.constr_01_mKeyPress(Sender: TObject; var Key: Char);
begin
if Key in ['0'..'9'] then
begin
changeValue:=true;
EditShtate:=true
end
else Key:=#0;
end;

procedure TfrmShtatSetting.LbB_DelClick(Sender: TObject);
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ����������� �� ������ ������?',
    2,mtConfirmation) = mrYes then
begin
with dm do
begin
        if ADO.Connected then
        begin
            if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='DeleteSetting;1';
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@id';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=id_setting;
                try
                        StoredProc1.ExecProc;
                        CommitTR;
                except
                        RollBTR;
                        Main.ATXShowMessage('����������� �� ����� ���� �������!');
                end;
        end;
end;
LbButton1Click(self);
end;
end;

procedure TfrmShtatSetting.LbButton1Click(Sender: TObject);
var
i:integer;
begin
if changeValue then
begin
if Main.ATXMessageDlg('��������� ���������?', 2, mtConfirmation) = mrYes then
begin
     LbB_SaveClick(Self);
end;
end;
EditShtate:=true;
changeValue:=false;
PageControl1.ActivePage:=TabSheet2;
LbB_Save.Enabled:=true;
LbB_Del.Enabled:=LbB_Save.Enabled;
Panel2.Enabled:=LbB_Save.Enabled;
Panel4.Enabled:=LbB_Save.Enabled;
id_setting:=0;
constr_01_m.Value:=0;
constr_03_m.Value:=0;
constr_01_f.Value:=0;
constr_03_f.Value:=0;
Edit_p_m.Value:=0;
Edit_p_f.Value:=0;
for i:=1 to sg2_m.RowCount-1 do
begin
    sg2_m.Cells[0,i]:='';
    sg2_m.Cells[1,i]:='';
    sg2_m.Cells[2,i]:='';
end;
for i:=1 to sg2_f.RowCount-1 do
begin
    sg2_f.Cells[0,i]:='';
    sg2_f.Cells[1,i]:='';
    sg2_f.Cells[2,i]:='';
end;
with dm do
begin
if ADO.Connected then begin
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetSettingShtat;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[1].Name:='@id_r';
StoredProc1.Parameters[1].DataType:=ftInteger;
StoredProc1.Parameters[1].Value:=db_reg.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[2].Name:='@id_div';
StoredProc1.Parameters[2].DataType:=ftInteger;
StoredProc1.Parameters[2].Value:=db_div.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[3].Name:='@id_dep';
StoredProc1.Parameters[3].DataType:=ftInteger;
StoredProc1.Parameters[3].Value:=db_depart.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[4].Name:='@id_pred';
StoredProc1.Parameters[4].DataType:=ftInteger;
StoredProc1.Parameters[4].Value:=db_pre.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[5].Name:='@id_s';
StoredProc1.Parameters[5].DataType:=ftInteger;
StoredProc1.Parameters[5].Value:=db_serv.KeyValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[6].Name:='@id_preserv';
StoredProc1.Parameters[6].DataType:=ftInteger;
StoredProc1.Parameters[6].Value:=db_preserv.KeyValue;
StoredProc1.Open;
if StoredProc1.RecordCount>0 then
begin
Caption:='����������� �������� ���������� - ��������������';
id_setting:=StoredProc1.Fields[0].AsInteger;
Edit_p_m.Value:=StoredProc1.Fields[6].AsInteger;
Edit_p_f.Value:=StoredProc1.Fields[7].AsInteger;
rb_m1.Checked:=not StoredProc1.Fields[9].AsBoolean;
rb_f1.Checked:=not StoredProc1.Fields[12].AsBoolean;
rb_m2.Checked:=not rb_m1.Checked;
rb_f2.Checked:=not rb_f1.Checked;
if rb_m1.Checked then
begin
constr_01_m.Value:=StoredProc1.Fields[8].AsInteger;
constr_03_m.Value:=StoredProc1.Fields[10].AsInteger;
end;
if rb_f1.Checked then
begin
constr_01_f.Value:=StoredProc1.Fields[11].AsInteger;
constr_03_f.Value:=StoredProc1.Fields[13].AsInteger;
end;
if not rb_m1.Checked then
begin
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetSettingShtat02;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[1].Name:='@id';
StoredProc1.Parameters[1].DataType:=ftInteger;
StoredProc1.Parameters[1].Value:=id_setting;
StoredProc1.Open;
i:=1;
while not StoredProc1.Eof do
begin
if i>=sg2_m.RowCount then
sg2_m.RowCount:=sg2_m.RowCount+1;
    sg2_m.Cells[0,i]:=StoredProc1.Fields[1].AsString;
    if StoredProc1.Fields[2].AsInteger<>1000000 then    
    sg2_m.Cells[1,i]:=StoredProc1.Fields[2].AsString;
    sg2_m.Cells[2,i]:=StoredProc1.Fields[3].AsString;
inc(i);
StoredProc1.Next;
end;
end;
if not rb_f1.Checked then
begin
if StoredProc1.Active then StoredProc1.Active:=false;
StoredProc1.Parameters.Clear;
StoredProc1.ProcedureName:='GetSettingShtat02;1';
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[0].Name:='@RETURN_VALUE';
StoredProc1.Parameters[0].DataType:=ftInteger;
StoredProc1.Parameters[0].Direction:=pdReturnValue;
StoredProc1.Parameters.AddParameter;
StoredProc1.Parameters[1].Name:='@id';
StoredProc1.Parameters[1].DataType:=ftInteger;
StoredProc1.Parameters[1].Value:=id_setting;
StoredProc1.Open;
i:=1;
while not StoredProc1.Eof do
begin
if i>=sg2_f.RowCount then
sg2_f.RowCount:=sg2_f.RowCount+1;
    sg2_f.Cells[0,i]:=StoredProc1.Fields[4].AsString;
    if StoredProc1.Fields[5].AsInteger<>1000000 then
    sg2_f.Cells[1,i]:=StoredProc1.Fields[5].AsString;
    sg2_f.Cells[2,i]:=StoredProc1.Fields[6].AsString;
inc(i);
StoredProc1.Next;
end;

end;

end else
begin
Caption:='����������� �������� ���������� - �����';
rb_m1.Checked:=true;
rb_f1.Checked:=true;
Main.ATXShowMessage('��� �����������!');

end;
end;
if StoredProc1.Active then StoredProc1.Active:=false;
end;
end;

procedure TfrmShtatSetting.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmShtatSetting.LbB_SaveClick(Sender: TObject);
var
i:integer;
str:String;
begin
str:='';
if Edit_p_f.Value=0 then
str:=str+'����� ���-�� ������� (�����������)=0'+#13;
if (constr_01_f.Value=0) and (constr_01_f.Enabled) then
str:=str+'���-�� ���. �� 1 ���. (�����������)=0'+#13;
if (constr_03_f.Value=0) and (constr_03_f.Enabled) then
str:=str+'�� ����� (���.) (�����������)=0'+#13;
if Edit_p_m.Value=0 then
str:=str+'����� ���-�� ������� (�������)=0'+#13;
if (constr_01_m.Value=0) and (constr_01_m.Enabled) then
str:=str+'���-�� ���. �� 1 ���. (�������)=0'+#13;
if (constr_03_m.Value=0) and (constr_03_m.Enabled) then
str:=str+'�� ����� (���.) (�������)=0'+#13;

if rb_f2.Checked then
begin
for i:=1 to sg2_f.RowCount-1 do
begin
    if sg2_f.Cells[0,i]='' then
    str:=str+'� ������ "'+IntToStr(i)+'" ���-�� ���. � (�����������)=0 '+#13;
    if (sg2_f.Cells[1,i]='') and (i<>sg2_f.RowCount-1) then
    str:=str+'� ������ "'+IntToStr(i)+'" ���-�� ���. �� (�����������)=0 '+#13;
    if sg2_f.Cells[2,i]='' then
    str:=str+'� ������ "'+IntToStr(i)+'" ���-�� ����� (�����������)=0 '+#13;
end;
end;
if rb_m2.Checked then
begin
for i:=1 to sg2_m.RowCount-1 do
begin
    if sg2_m.Cells[0,i]='' then
    str:=str+'� ������ "'+IntToStr(i)+'" ���-�� ���. � (�������)=0 '+#13;
    if (sg2_m.Cells[1,i]='') and (i<>sg2_m.RowCount-1) then
    str:=str+'� ������ "'+IntToStr(i)+'" ���-�� ���. �� (�������)=0 '+#13;
    if sg2_m.Cells[2,i]='' then
    str:=str+'� ������ "'+IntToStr(i)+'" ���-�� ����� (�������)=0 '+#13;
end;
end;

if str<>'' then
begin
        if Main.ATXMessageDlg(str+'��������� ������?',
            2,mtInformation) = mrYes then
        begin
                if Save_Satting then begin
                Caption:='����������� �������� ���������� - ��������������';
                changeValue:=false;
                EditShtate:=false;
                end
        end;
end else
                if Save_Satting then begin
                Caption:='����������� �������� ���������� - ��������������';
                changeValue:=false;
                EditShtate:=false;
                end

end;
function TfrmShtatSetting.Save_Satting:boolean;
var
id:integer;
p_m,p_f:integer;
c_01_m,c_03_m,c_01_f,c_03_f:integer;
c_02_m,c_02_f:boolean;
RC,i:integer;
id_r,id_div,id_dep,id_pred,id_s,id_ps:integer;
begin
Save_Satting:=false;
if db_reg.Text='' then
id_r:=-1 else id_r:=db_reg.KeyValue;
if db_div.Text='' then
id_div:=-1 else id_div:=db_div.KeyValue;
if db_depart.Text='' then
id_dep:=-1 else id_dep:=db_depart.KeyValue;
if db_pre.Text='' then
id_pred:=-1 else id_pred:=db_pre.KeyValue;
if db_serv.Text='' then
id_s:=-1 else id_s:=db_serv.KeyValue;
if db_preserv.Text='' then
id_ps:=-1 else id_ps:=db_preserv.KeyValue;
p_m:=Trunc(Edit_p_m.Value);
p_f:=Trunc(Edit_p_f.Value);
if rb_m1.Checked then
begin
c_01_m:=Trunc(constr_01_m.Value);
c_03_m:=Trunc(constr_03_m.Value);
end else
begin
c_01_m:=-1;
c_03_m:=-1;
end;
if rb_f1.Checked then
begin
c_01_f:=Trunc(constr_01_f.Value);
c_03_f:=Trunc(constr_03_f.Value);
end else
begin
c_01_f:=-1;
c_03_f:=-1;
end;
with dm do
begin
if ADO.Connected then begin
    ADOCom1.Parameters.Clear;
    ADOCom1.CommandType:=cmdStoredProc;
    ADOCom1.CommandText:='SetContstrShtat';
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[0].Name:='@what';
    ADOCom1.Parameters[0].DataType:=ftInteger;
    if id_setting=0 then
    ADOCom1.Parameters[0].Value:=1
    else ADOCom1.Parameters[0].Value:=2;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[1].Name:='@id_s';
    ADOCom1.Parameters[1].DataType:=ftInteger;
    ADOCom1.Parameters[1].Value:=id_setting;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[2].Name:='@id_r';
    ADOCom1.Parameters[2].DataType:=ftInteger;
    ADOCom1.Parameters[2].Value:=id_r;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[3].Name:='@id_div';
    ADOCom1.Parameters[3].DataType:=ftInteger;
    ADOCom1.Parameters[3].Value:=id_div;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[4].Name:='@id_dep';
    ADOCom1.Parameters[4].DataType:=ftInteger;
    ADOCom1.Parameters[4].Value:=id_dep;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[5].Name:='@id_pre';
    ADOCom1.Parameters[5].DataType:=ftInteger;
    ADOCom1.Parameters[5].Value:=id_pred;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[6].Name:='@id_serv';
    ADOCom1.Parameters[6].DataType:=ftInteger;
    ADOCom1.Parameters[6].Value:=id_s;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[7].Name:='@id_preserv';
    ADOCom1.Parameters[7].DataType:=ftInteger;
    ADOCom1.Parameters[7].Value:=id_ps;

    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[8].Name:='@p_m';
    ADOCom1.Parameters[8].DataType:=ftInteger;
    ADOCom1.Parameters[8].Value:=p_m;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[9].Name:='@p_f';
    ADOCom1.Parameters[9].DataType:=ftInteger;
    ADOCom1.Parameters[9].Value:=p_f;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[10].Name:='@c_01_m';
    ADOCom1.Parameters[10].DataType:=ftInteger;
    ADOCom1.Parameters[10].Value:=c_01_m;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[11].Name:='@c_02_m';
    ADOCom1.Parameters[11].DataType:=ftBoolean;
    ADOCom1.Parameters[11].Value:=not rb_m1.Checked;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[12].Name:='@c_03_m';
    ADOCom1.Parameters[12].DataType:=ftInteger;
    ADOCom1.Parameters[12].Value:=c_03_m;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[13].Name:='@c_01_f';
    ADOCom1.Parameters[13].DataType:=ftInteger;
    ADOCom1.Parameters[13].Value:=c_01_f;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[14].Name:='@c_02_f';
    ADOCom1.Parameters[14].DataType:=ftBoolean;
    ADOCom1.Parameters[14].Value:=not rb_f1.Checked;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[15].Name:='@c_03_f';
    ADOCom1.Parameters[15].DataType:=ftInteger;
    ADOCom1.Parameters[15].Value:=c_03_f;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[16].Name:='@id';
    ADOCom1.Parameters[16].DataType:=ftInteger;
    ADOCom1.Parameters[16].Direction:=pdReturnValue;
    try
        ADOCom1.Execute;
        id:=ADOCom1.Parameters[15].Value;
        CommitTR;
        Save_Satting:=true;
        if rb_m2.Checked or rb_f2.Checked then
        begin
            //��������� �� ������ ������� �����������
            if sg2_m.RowCount>sg2_f.RowCount then RC:=sg2_m.RowCount-1 else RC:=sg2_f.RowCount-1;
            if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='ClearSetting_02;1';
                StoredProc1.Parameters.AddParameter;
                StoredProc1.Parameters[0].Name:='@id_s';
                StoredProc1.Parameters[0].DataType:=ftInteger;
                StoredProc1.Parameters[0].Value:=id;
                try
                        StoredProc1.ExecProc;
                        CommitTR;
                        Save_Satting:=true;
                    for i:=1 to RC do
                    begin
                    if StoredProc1.Active then StoredProc1.Active:=false;
                        StoredProc1.Parameters.Clear;
                        StoredProc1.ProcedureName:='SetContstrShtat_02;1';
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[0].Name:='@id_set';
                        StoredProc1.Parameters[0].DataType:=ftInteger;
                        StoredProc1.Parameters[0].Value:=id;
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[1].Name:='@p_b_m';
                        StoredProc1.Parameters[1].DataType:=ftInteger;
                        if (sg2_m.RowCount>i) and (GroupBox2.Visible) and (sg2_m.Cells[0,i]<>'') then
                        StoredProc1.Parameters[1].Value:=StrToInt(sg2_m.Cells[0,i])
                        else StoredProc1.Parameters[1].Value:=-1;
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[2].Name:='@p_e_m';
                        StoredProc1.Parameters[2].DataType:=ftInteger;
                        if (sg2_m.RowCount>i) and (GroupBox2.Visible) then
                        if sg2_m.Cells[1,i]<>'' then
                        StoredProc1.Parameters[2].Value:=StrToInt(sg2_m.Cells[1,i])
                        else StoredProc1.Parameters[2].Value:=1000000
                        else StoredProc1.Parameters[2].Value:=-1;
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[3].Name:='@val_avt_m';
                        StoredProc1.Parameters[3].DataType:=ftInteger;
                        if (sg2_m.RowCount>i) and (GroupBox2.Visible) and (sg2_m.Cells[2,i]<>'') then
                        StoredProc1.Parameters[3].Value:=StrToInt(sg2_m.Cells[2,i])
                        else StoredProc1.Parameters[3].Value:=-1;
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[4].Name:='@p_b_f';
                        StoredProc1.Parameters[4].DataType:=ftInteger;
                        if (sg2_f.RowCount>i) and (GroupBox8.Visible) and (sg2_f.Cells[0,i]<>'') then
                        StoredProc1.Parameters[4].Value:=StrToInt(sg2_f.Cells[0,i])
                        else StoredProc1.Parameters[4].Value:=-1;
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[5].Name:='@p_e_f';
                        StoredProc1.Parameters[5].DataType:=ftInteger;
                        if (sg2_f.RowCount>i) and (GroupBox8.Visible) then
                        if sg2_f.Cells[1,i]<>'' then
                        StoredProc1.Parameters[5].Value:=StrToInt(sg2_f.Cells[1,i])
                        else StoredProc1.Parameters[5].Value:=1000000
                        else StoredProc1.Parameters[5].Value:=-1;
                        StoredProc1.Parameters.AddParameter;
                        StoredProc1.Parameters[6].Name:='@val_avt_f';
                        StoredProc1.Parameters[6].DataType:=ftInteger;
                        if (sg2_f.RowCount>i) and (GroupBox8.Visible) and (sg2_f.Cells[2,i]<>'') then
                        StoredProc1.Parameters[6].Value:=StrToInt(sg2_f.Cells[2,i])
                        else StoredProc1.Parameters[6].Value:=-1;

                        try
                                StoredProc1.ExecProc;
                                CommitTR;
                                Save_Satting:=true;
                        except
                                RollBTR;
                                Save_Satting:=false;
                        end;
                    end;

                except
                        RollBTR;
                        Save_Satting:=false;
                end;
        end; //if rb_m2.Checked
    except
        RollBTR;
        Save_Satting:=false;
        Main.ATXShowMessage('������ ! ��������� ������������ ��������� ������.');
    end;
end;
end;//with

end;

procedure TfrmShtatSetting.LbSpeedButton3Click(Sender: TObject);
begin
db_reg.KeyValue:=-1;
db_regClick(Sender);
end;

procedure TfrmShtatSetting.LbSpeedButton1Click(Sender: TObject);
begin
db_div.KeyValue:=-1;
db_regClick(Sender);
end;

procedure TfrmShtatSetting.LbSpeedButton2Click(Sender: TObject);
begin
db_depart.KeyValue:=-1;
db_regClick(Sender);
end;

procedure TfrmShtatSetting.LbSpeedButton4Click(Sender: TObject);
begin
db_pre.KeyValue:=-1;
db_regClick(Sender);
end;

procedure TfrmShtatSetting.LbSpeedButton5Click(Sender: TObject);
begin
db_serv.KeyValue:=-1;
db_regClick(Sender);
end;

procedure TfrmShtatSetting.sg2_fDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (state = [gdSelected]) then
    with TStringGrid(Sender), Canvas do
    begin
      Brush.Color := $EFE3DF;
      Font.Color:=clBlack;
      FillRect(Rect);
      TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
    end;

end;

procedure TfrmShtatSetting.LbSpeedButton6Click(Sender: TObject);
begin
changeValue:=true;
sg2_m.RowCount:=sg2_m.RowCount+1;
end;

procedure TfrmShtatSetting.LbSpeedButton7Click(Sender: TObject);
var
i,j:integer;
begin
changeValue:=true;
j:=sg2_m.Row;
  sg2_m.Rows[j].Clear;
  if sg2_m.RowCount>sg2_m.FixedRows+1 then begin
  for i:=j to sg2_m.RowCount-1 do
    sg2_m.Rows[i].Assign(sg2_m.Rows[i+1]);
  sg2_m.RowCount:=sg2_m.RowCount-1;
  end;
end;

procedure TfrmShtatSetting.LbSpeedButton8Click(Sender: TObject);
begin
sg2_f.RowCount:=sg2_f.RowCount+1;
changeValue:=true;
end;

procedure TfrmShtatSetting.LbSpeedButton9Click(Sender: TObject);
var
i,j:integer;
begin
changeValue:=true;
j:=sg2_f.Row;
  sg2_f.Rows[j].Clear;
  if sg2_f.RowCount>sg2_f.FixedRows+1 then begin
  for i:=j to sg2_f.RowCount-1 do
    sg2_f.Rows[i].Assign(sg2_f.Rows[i+1]);
  sg2_f.RowCount:=sg2_f.RowCount-1;
  end;
end;

procedure TfrmShtatSetting.db_regClick(Sender: TObject);
begin
if EditShtate then
begin
//LbB_SaveClick(Sender);
LbButton1Click(Sender);
end;
end;

procedure TfrmShtatSetting.LbSpeedButton10Click(Sender: TObject);
begin
db_preserv.KeyValue:=-1;
db_regClick(Sender);
end;

end.

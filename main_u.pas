unit main_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText,  ComCtrls, ToolWin,
  ExtCtrls, ImgList, ActnList,Registry,
  ComObj, ActiveX,LbSpeedButton, Menus,DB,
  StdActns,ShellAPI,ADOdb,StdCtrls,
  IniFiles, frxExportRTF, frxClass,
   frxDBSet, frxExportPDF, frxCross, Winsock, System.Actions,
  System.ImageList, frxExportCSV;



type
  TMain = class(TForm)
    ImageList2: TImageList;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrangeAll1: TWindowArrange;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDatasetLibr: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    frxUserDataSet2: TfrxUserDataSet;
    frxRTFExport1: TfrxRTFExport;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ItemShtat: TMenuItem;
    ItemAdmin: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N110: TMenuItem;
    N210: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    frxPDFExport1: TfrxPDFExport;
    N5: TMenuItem;
    Cascade1: TMenuItem;
    MinimizeAll1: TMenuItem;
    ileHorizontally1: TMenuItem;
    ileVertically1: TMenuItem;
    N6: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    frxDBDataset6: TfrxDBDataset;
    N57: TMenuItem;
    N310: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    frxCSVExport1: TfrxCSVExport;
    procedure ExitExecute(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxfbclClick(Sender: TObject);
    procedure bmaxClick(Sender: TObject);
    procedure bminClick(Sender: TObject);
    procedure AboutExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CoolItemMain20001Click(Sender: TObject);
    procedure CoolItem955Click(Sender: TObject);
    procedure CoolItem954Click(Sender: TObject);
    procedure CoolItem956Click(Sender: TObject);
    procedure CoolItem9515Click(Sender: TObject);
    procedure CoolItem9522Click(Sender: TObject);
    procedure WindowTileHorizontal1Execute(Sender: TObject);
    procedure WindowTileVertical1Execute(Sender: TObject);
    procedure CoolItem9523Click(Sender: TObject);
    procedure CoolItem9524Click(Sender: TObject);
    procedure CoolItem9525Click(Sender: TObject);
    procedure CoolItem9528Click(Sender: TObject);
    procedure CoolItem9529Click(Sender: TObject);
    procedure CoolItem9526Click(Sender: TObject);
    procedure CoolItem9527Click(Sender: TObject);
    procedure CoolItem952Click(Sender: TObject);
    procedure CoolItem9513Click(Sender: TObject);
    procedure CoolItem951Click(Sender: TObject);
    procedure CoolItem9530Click(Sender: TObject);
    procedure CoolItem9531Click(Sender: TObject);
    procedure CoolItem9535Click(Sender: TObject);
    procedure CoolItem9533Click(Sender: TObject);
    procedure CoolItem9532Click(Sender: TObject);
    procedure CoolItem9537Click(Sender: TObject);
    procedure CoolItem9539Click(Sender: TObject);
    procedure CoolItem9541Click(Sender: TObject);
    procedure CoolItem9542Click(Sender: TObject);
    procedure CoolItem9543Click(Sender: TObject);
    procedure CoolItem9544Click(Sender: TObject);
    procedure CoolItem9545Click(Sender: TObject);
    procedure CoolItem9546Click(Sender: TObject);
    procedure CoolItem9547Click(Sender: TObject);
    procedure CoolItem9548Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure N6Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N310Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
  private
    whatReport:integer;
    dateR1,dateR2:String;
    WriteIdx:byte;
  SG_AGR_list_1,SG_AGR_list_2,SG_AGR_list_3:TStringList;
  SG_REM_list_1,SG_REM_list_2:TStringList;
  SG_ZAP_list_1,SG_ZAP_list_2:TStringList;
  SG_TMC_list_1,SG_TMC_list_2:TStringList;
  SG_TMC_SKLAD_list_1,SG_TMC_SKLAD_list_2:TStringList;
   date1_list,date2_list,vid_list,place_rem_list,s_b_list,s_e_list,ddd_list,place_list,oil_l_list:TStringList;
   max_list:integer;
//    procedure PreviewShtat;
  public
  searchForm:array[1..2,1..27] of integer;
    UserRole:Integer;
    LastUser:String;
    UserClose:boolean;
    str_old_m, str_old_f:String;
    listAvt_From:integer;
    procedure CreateAvtoCard(id,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p:integer; model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1,OutD2:String; State_p,UotAc_p,life_p:integer;N_insur,D_insur:String;preserv_p,notATX_p:integer);
    procedure CreateAvtoList(reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer; numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p:String;State_p,UotAc_p,life_p:integer;N_insur,D_insur:String);
    procedure CreateReport(what,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer;
    model_p,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,OutD1,OutD2:String;
    State_p,UotAc_p,life_p:integer;N_insur,D_insur1,D_insur2:String;id_dislok:integer;type_tc_p:integer; arenda:integer; spisat:integer;
    fuel_p,preserv_p,notATX,id_gsm,State_priz:integer; modelDVC, volumDVC:String;
    typeDVC, manufactureTC,guilty, injured, id_rem_place,spisat_Next:integer);
    procedure CreateExplAvtoCard(what:integer;id:integer;mark:String);
    procedure CreateRemontAvtoCard(what:integer;id:integer;mark:String);
    procedure CreateZayvkaAvtoCard(what:integer;id:integer;mark:String);
    procedure OpenExplCard(what:integer;id:integer;mark:String);
    procedure OpenRemontCard(what:integer;id:integer;mark:String);
    procedure ExplRefresh;
    procedure MinAvtoCard;
    procedure MaxAvtoCard;
    procedure RefreshLibr;
    procedure ATXShowMessage(str:String);
    function ATXMessageDlg(str:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
    function ATXMessageDlgLink(str,link:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
    procedure PreviewShtat2(id_reg,id_div,id_depart,id_pred,id_serv,id_preserv,typ:integer);
    procedure CreateReportRemont();
    procedure CreateReportShine();
    procedure CreateReportAKB();
    procedure CreateReportAvtoCard();
    procedure CreateReportAvtoCard_Akt();
    procedure CreateReportLibr(what:integer);
    procedure OpenZayvkaCard(what:integer;id:integer;mark:String);
    procedure CreateReportZayvka(id_avt:integer);
    function GetIPAddress():String;
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;
const
ADMIN_USER=1;
TECH_USER=2;
SHTAT_USER=3;
USER_USER=4;
DISPETCHER_USER=5;
GSM_USER=6;
REMONT_USER=7;
INSURE_USER=8;
EXPORT_TC=9;
var
  Main: TMain;

implementation
    uses AboutUnit, dm_u, auth_u,
    users_u, avtocard_u, libr_u,
    search_u, expl_u, explCard_u, report_u, report2_u, shtat_u, shtat_e_u,
  listavto_u, activate_u,SetActive, loaddata_u, messDlg_u, print_shtate_u,
  libModel_u, libBaseGsm_u, yearExpl_u, finGsm_u, remont_u, libr_lim_probeg_u,
  libShinaLimit_u, zayvka_u;
{$R *.dfm}

procedure TMain.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
 { with Params do
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME); }
end;

procedure TMain.ATXShowMessage(str:String);
begin
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXShowMessage(str);
frmMessDlg.ShowModal;
frmMessDlg.Free;
end;

function TMain.ATXMessageDlg(str:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
begin
ATXMessageDlg:=mrNone;
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXMessageDlg(str,tBtn,tMessType);
ATXMessageDlg:=frmMessDlg.ShowModal;
frmMessDlg.Free;
end;
function TMain.ATXMessageDlgLink(str,link:String;tBtn:byte;tMessType:TMsgDlgType):TModalResult;
begin
ATXMessageDlgLink:=mrNone;
Application.CreateForm(TfrmMessDlg, frmMessDlg);
frmMessDlg.ATXMessageDlg(str,tBtn,tMessType);
ATXMessageDlgLink:=frmMessDlg.ShowModal;
ShellExecute(Handle, 'open', PChar(link), nil, nil, SW_SHOWNORMAL);
frmMessDlg.Free;
end;
procedure TMain.CreateAvtoCard(id,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p:integer; model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1,OutD2:String; State_p,UotAc_p,life_p:integer;N_insur,D_insur:String;preserv_p,notATX_p:integer);
var
Child:Tfrmavtocard;
begin
if MDIChildCount=0 then
begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if dm.openProc(id,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p,dislok_p,model,numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,OutD1,OutD2, State_p,UotAc_p,life_p,N_insur,D_insur,preserv_p,notATX_p) then
begin
Child:=Tfrmavtocard.Create(Application);
Child.Panel2.Visible:=true;
Child.RxDBLookupCombo1Change(Self);
Application.ProcessMessages;
frmLoadData.Close;

Application.ProcessMessages;
end else
begin
frmLoadData.Close;
Application.ProcessMessages;
end;
end;
end;

procedure TMain.CreateAvtoList(reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer; numb1_p,numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p:String; State_p,UotAc_p,life_p:integer;N_insur,D_insur:String);
begin
with dm do
begin
if ADO.Connected then begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if Proc_ListAvt.Active then Proc_ListAvt.Active:=false;
Application.ProcessMessages;
Proc_ListAvt.Parameters.Clear;
Proc_ListAvt.ProcedureName:='GetListAvto_02;1';
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[0].Name:='@RETURN_VALUE';
Proc_ListAvt.Parameters[0].DataType:=ftInteger;
Proc_ListAvt.Parameters[0].Direction:=pdReturnValue;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[1].Name:='@reg_p';
Proc_ListAvt.Parameters[1].DataType:=ftInteger;
Proc_ListAvt.Parameters[1].Value:=reg_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[2].Name:='@div_p';
Proc_ListAvt.Parameters[2].DataType:=ftInteger;
Proc_ListAvt.Parameters[2].Value:=div_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[3].Name:='@depart_p';
Proc_ListAvt.Parameters[3].DataType:=ftInteger;
Proc_ListAvt.Parameters[3].Value:=depart_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[4].Name:='@pre_p';
Proc_ListAvt.Parameters[4].DataType:=ftInteger;
Proc_ListAvt.Parameters[4].Value:=pre_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[5].Name:='@serv_p';
Proc_ListAvt.Parameters[5].DataType:=ftInteger;
Proc_ListAvt.Parameters[5].Value:=serv_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[6].Name:='@mark_p';
Proc_ListAvt.Parameters[6].DataType:=ftInteger;
Proc_ListAvt.Parameters[6].Value:=mark_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[7].Name:='@source1_p';
Proc_ListAvt.Parameters[7].DataType:=ftInteger;
Proc_ListAvt.Parameters[7].Value:=source1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[8].Name:='@source2_p';
Proc_ListAvt.Parameters[8].DataType:=ftInteger;
Proc_ListAvt.Parameters[8].Value:=source2_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[9].Name:='@group_p';
Proc_ListAvt.Parameters[9].DataType:=ftInteger;
Proc_ListAvt.Parameters[9].Value:=group_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[10].Name:='@numb1_p';
Proc_ListAvt.Parameters[10].DataType:=ftString;
Proc_ListAvt.Parameters[10].Value:=numb1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[11].Name:='@numb2_p';
Proc_ListAvt.Parameters[11].DataType:=ftString;
Proc_ListAvt.Parameters[11].Value:=numb2_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[12].Name:='@oldnumb_p';
Proc_ListAvt.Parameters[12].DataType:=ftString;
Proc_ListAvt.Parameters[12].Value:=oldnumb_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[13].Name:='@year1_p';
Proc_ListAvt.Parameters[13].DataType:=ftString;
Proc_ListAvt.Parameters[13].Value:=year1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[14].Name:='@year2_p';
Proc_ListAvt.Parameters[14].DataType:=ftString;
Proc_ListAvt.Parameters[14].Value:=year2_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[15].Name:='@vin_p';
Proc_ListAvt.Parameters[15].DataType:=ftString;
Proc_ListAvt.Parameters[15].Value:=vin_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[16].Name:='@Neng_p';
Proc_ListAvt.Parameters[16].DataType:=ftString;
Proc_ListAvt.Parameters[16].Value:=Neng_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[17].Name:='@Nbody_p';
Proc_ListAvt.Parameters[17].DataType:=ftString;
Proc_ListAvt.Parameters[17].Value:=Nbody_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[18].Name:='@Nshas_p';
Proc_ListAvt.Parameters[18].DataType:=ftString;
Proc_ListAvt.Parameters[18].Value:=Nshas_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[19].Name:='@Npts_p';
Proc_ListAvt.Parameters[19].DataType:=ftString;
Proc_ListAvt.Parameters[19].Value:=Npts_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[20].Name:='@InAc1_p';
Proc_ListAvt.Parameters[20].DataType:=ftString;
Proc_ListAvt.Parameters[20].Value:=InAc1_p;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[21].Name:='@InAc2_p';
Proc_ListAvt.Parameters[21].DataType:=ftString;
Proc_ListAvt.Parameters[21].Value:=InAc2_p;

Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[22].Name:='@N_insur';
Proc_ListAvt.Parameters[22].DataType:=ftString;
Proc_ListAvt.Parameters[22].Value:=N_insur;
Proc_ListAvt.Parameters.AddParameter;
Proc_ListAvt.Parameters[23].Name:='@D_insur';
Proc_ListAvt.Parameters[23].DataType:=ftString;
Proc_ListAvt.Parameters[23].Value:=D_insur;

Application.ProcessMessages;
    Proc_ListAvt.Open;
    if Proc_ListAvt.RecordCount=0 then
    ATXShowMessage('� ������ ������������� ��� �������!');
Application.ProcessMessages;
Application.ProcessMessages;
frmLoadData.Close;
end;

end;

  Application.CreateForm(TfrmListAvto, frmListAvto);
  frmListAvto.showModal;
end;

procedure TMain.CreateExplAvtoCard(what:integer;id:integer;mark:String);
var
Child:TfrmExpl;
begin
Child:=TfrmExpl.Create(Application);
Child.openExplCard(id,mark);
end;

procedure TMain.CreateRemontAvtoCard(what:integer;id:integer;mark:String);
var
Child:TfrmExpl;
begin
Child:=TfrmExpl.Create(Application);
Child.openRemontCard(id,mark);
end;
procedure TMain.CreateZayvkaAvtoCard(what:integer;id:integer;mark:String);
var
Child:TfrmExpl;
begin
Child:=TfrmExpl.Create(Application);
Child.openZayvkaCard(id,mark);
end;

procedure TMain.ExitExecute(Sender: TObject);
begin
Close;
end;

procedure TMain.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
reg:TRegistry;
begin
dm.SessionControl(1,GetIPAddress,'');
if frmsearch<>nil then frmsearch.SearchStorage.EraseSections;
Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\LebAlex\atx', True) then
   begin
if Main.WindowState<>wsMaximized then
begin
      Reg.WriteInteger('WV',Main.Width);
      Reg.WriteInteger('HV',Main.Height);
      Reg.WriteInteger('LV',Main.Left);
      Reg.WriteInteger('TV',Main.Top);
end;//if
      Reg.WriteString('LastUser',LastUser);
      Reg.CloseKey;
    end;
    except
//
    end;
    Reg.Free;

end;

procedure TMain.dxfbclClick(Sender: TObject);
begin
Close;
end;

procedure TMain.bmaxClick(Sender: TObject);
begin
if WindowState=wsMaximized then
   WindowState:=wsNormal else
   WindowState:=wsMaximized;
end;

procedure TMain.bminClick(Sender: TObject);
begin
Application.Minimize;
end;

procedure TMain.AboutExecute(Sender: TObject);
begin
Application.CreateForm(TAboutBox, AboutBox);
AboutBox.ShowModal;
end;


function TMain.GetIPAddress():String;
type
  pu_long = ^u_long;
var
  varTWSAData : TWSAData;
  varPHostEnt : PHostEnt;
  varTInAddr : TInAddr;
  namebuf : Array[0..255] of ansichar;
begin
try
  If WSAStartup($101,varTWSAData) <> 0 Then
  Result := ''
  Else Begin
    gethostname(namebuf,sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := inet_ntoa(varTInAddr);
  End;
  WSACleanup;
except
     Result := '';
end;
end;

procedure TMain.FormShow(Sender: TObject);
var
reg:TRegistry;
Layout: array[0.. KL_NAMELENGTH] of char;
SActivate:TSActivate;
VolumeSerialNumber : DWORD;
MaximumComponentLength : DWORD;
FileSystemFlags : DWORD;
DMIni:TIniFile;
FUpdate :File;
isFileUpdate:boolean;
begin
DMIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'cfg.ini');
  with DMIni do
  begin
     WriteIdx:=ReadInteger('Report_libr','writeidx',0);
  end;
DMIni.Free;

LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\LebAlex\atx', True) then
   begin
      Main.Width:=Reg.ReadInteger('WV');
      Main.Height:=Reg.ReadInteger('HV');
      Main.Left:=Reg.ReadInteger('LV');
      Main.Top:=Reg.ReadInteger('TV');
      LastUser:=Reg.ReadString('LastUser');
      Reg.RootKey := HKEY_CLASSES_ROOT;
      Reg.CloseKey;
    end;
  except
    Reg.CloseKey;
      Main.Width:=Screen.Width;
      Main.Height:=screen.Height-28;
      Main.Left:=0;
      Main.Top:=0;
  end;
    Reg.Free;
      Application.CreateForm(Tfrmauth, frmauth);
      frmauth.LastUs(LastUser);
if frmauth.ShowModal=mrOk then begin
LastUser:=frmauth.edit_user.Text;
if frmauth.edit_pwd.Text<>'' then
begin
if not dm.CheckingUser(frmauth.edit_user.Text,frmauth.edit_pwd.Text) then
  begin
    ATXMessageDlg('� ��� ��� ���� ������� � ���� ������ ! ���������� � �������������� !'+#13+#13+#13,1,mtError);
    Application.Terminate;
  end
  else begin
      //������ �������
      {������� � ������}
      dm.SessionControl(0,GetIPAddress,LastUser);



//UserRole:=1;//admin
//UserRole:=2;//��� �����
//UserRole:=3;//������
//UserRole:=4;//User

case UserRole of
ADMIN_USER:begin
      ItemAdmin.Visible:=true;
      ItemShtat.Visible:=true;
      ItemAdmin.Enabled:=true;
      ItemShtat.Enabled:=true;
end;
TECH_USER:begin
      ItemAdmin.Enabled:=false;
      ItemShtat.Enabled:=false;
      ItemAdmin.Visible:=false;
      ItemShtat.Visible:=false;
end;
SHTAT_USER:begin
      ItemAdmin.Enabled:=false;
      ItemShtat.Enabled:=true;
      ItemAdmin.Visible:=false;
      ItemShtat.Visible:=true;
end;
else begin
      ItemAdmin.Enabled:=false;
      ItemShtat.Enabled:=false;
      ItemAdmin.Visible:=false;
      ItemShtat.Visible:=false;

end;
end;
  end;
  end else
  begin
   UserRole:=USER_USER;//user
   ItemAdmin.Enabled:=false;
   ItemShtat.Enabled:=false;
      ItemAdmin.Visible:=false;
      ItemShtat.Visible:=false;
   
  end;
end else begin
dm.ADO.Connected:=false;
Application.Terminate;
end;


end;



procedure TMain.FormCreate(Sender: TObject);
begin
UserClose:=false;
frxDBDataset1.DataSource:=dm.DS_Report;
{with dm do
begin
  ADO.Close;
  ADO.ConnectionString := 'FILE NAME=.\atxuvd.udl';
  frxDBDataset1.DataSource:=dm.DS_Report;
  try
    ADO.Connected:=true;
  except
    ATXMessageDlg('��� ���������� � �������� ! ���������� � �������������� !',1, mtError);
    Application.Terminate;
  end;
end;  }
end;


procedure TMain.CoolItemMain20001Click(Sender: TObject);
begin
Close;
end;

procedure TMain.CoolItem955Click(Sender: TObject);
begin
Application.CreateForm(Tfrmusers, frmusers);
frmusers.Show;
end;

procedure TMain.CoolItem954Click(Sender: TObject);
begin
CreateAvtoCard(0,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,'-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1','-1',-1,-1,-1,'-1','-1',-1,-1);
end;

procedure TMain.CreateReportRemont();
var
  i: Integer;


begin
Application.ProcessMessages;
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\6.fr3');
//frxReport1.Title:='������';
whatReport:=6;
//frxReport1.OnObjectClick := nil;

  SG_AGR_list_1 := TStringList.Create;SG_AGR_list_2 := TStringList.Create;SG_AGR_list_3 := TStringList.Create;
  SG_REM_list_1 := TStringList.Create;SG_REM_list_2 := TStringList.Create;
  SG_ZAP_list_1 := TStringList.Create;SG_ZAP_list_2 := TStringList.Create;
  SG_TMC_list_1 := TStringList.Create;SG_TMC_list_2 := TStringList.Create;
  SG_TMC_SKLAD_list_1 := TStringList.Create;SG_TMC_SKLAD_list_2 := TStringList.Create;



for i:= 0 to frmRemont.SG_AGR.RowCount-1 do
begin
     SG_AGR_list_1.Add(frmRemont.SG_AGR.Cells[0,i]);
     SG_AGR_list_2.Add(frmRemont.SG_AGR.Cells[1,i]);
     SG_AGR_list_3.Add(frmRemont.SG_AGR.Cells[2,i]);
end;
for i:= 0 to frmRemont.SG_REM.RowCount-1 do
begin
     SG_REM_list_1.Add(frmRemont.SG_REM.Cells[0,i]);
     SG_REM_list_2.Add(frmRemont.SG_REM.Cells[1,i]);
end;
for i:= 0 to frmRemont.SG_ZAP.RowCount-1 do
begin
     SG_ZAP_list_1.Add(frmRemont.SG_ZAP.Cells[0,i]);
     SG_ZAP_list_2.Add(frmRemont.SG_ZAP.Cells[1,i]);
end;
for i:= 0 to frmRemont.SG_TMC.RowCount-1 do
begin
     SG_TMC_list_1.Add(frmRemont.SG_TMC.Cells[0,i]);
     SG_TMC_list_2.Add(frmRemont.SG_TMC.Cells[1,i]);
end;
for i:= 0 to frmRemont.SG_TMC_SKLAD.RowCount-1 do
begin
     SG_TMC_SKLAD_list_1.Add(frmRemont.SG_TMC_SKLAD.Cells[0,i]);
     SG_TMC_SKLAD_list_2.Add(frmRemont.SG_TMC_SKLAD.Cells[1,i]);
end;
max_list:=SG_AGR_list_1.Count;
if max_list< SG_REM_list_1.Count then  max_list:=SG_REM_list_1.Count;
if max_list< SG_ZAP_list_1.Count then  max_list:=SG_ZAP_list_1.Count;
if max_list< SG_TMC_list_1.Count then  max_list:=SG_TMC_list_1.Count;
if max_list< SG_TMC_SKLAD_list_1.Count then  max_list:=SG_TMC_SKLAD_list_1.Count;

for i := 0 to max_list-SG_AGR_list_1.Count do
begin
     SG_AGR_list_1.Add('');
     SG_AGR_list_2.Add('');
     SG_AGR_list_3.Add('');
end;
for i := 0 to max_list-SG_REM_list_1.Count do
begin
     SG_REM_list_1.Add('');
     SG_REM_list_2.Add('');
end;
for i := 0 to max_list-SG_ZAP_list_1.Count do
begin
     SG_ZAP_list_1.Add('');
     SG_ZAP_list_2.Add('');
end;
for i := 0 to max_list-SG_TMC_list_1.Count do
begin
     SG_TMC_list_1.Add('');
     SG_TMC_list_2.Add('');
end;
for i := 0 to max_list-SG_TMC_SKLAD_list_1.Count do
begin
     SG_TMC_SKLAD_list_1.Add('');
     SG_TMC_SKLAD_list_2.Add('');
end;

date1_list:= TStringList.Create;
date2_list:= TStringList.Create;
vid_list:= TStringList.Create;place_rem_list:= TStringList.Create;s_b_list:= TStringList.Create;s_e_list:= TStringList.Create;ddd_list:= TStringList.Create;place_list:= TStringList.Create;oil_l_list:= TStringList.Create;



date1_list.Add(frmRemont.DateEdit1.Text);
date2_list.Add(frmRemont.DateEdit2.Text);
vid_list.Add(frmRemont.VidCombo1.Text);
place_rem_list.Add(frmRemont.PlaceCombo2.Text);
s_b_list.Add(frmRemont.RxCalcEdit1.Text);
s_e_list.Add(frmRemont.RxCalcEdit2.Text);
ddd_list.Add(FloatToStr((frmRemont.DateEdit2.Date-frmRemont.DateEdit1.Date)+1));
place_list.Add(frmRemont.PlaceCombo2.Text);
oil_l_list.Add(frmRemont.RxCalcOil.Text);

for i := 0 to max_list-1 do
begin
     date1_list.Add('');
     date2_list.Add('');
     vid_list.Add('');
     place_rem_list.Add('');
     s_b_list.Add('');
     s_e_list.Add('');
     ddd_list.Add('');
     place_list.Add('');
     oil_l_list.Add('');
end;


frxUserDataSet1.RangeEnd := reCount;
  frxUserDataSet1.RangeEndCount := max_list;

frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;

procedure TMain.CreateReportZayvka(id_avt:integer);
begin
Application.ProcessMessages;
        //showmessage(inttostr(id_avt));
with dm do
begin
if ADO.Connected then begin
if SP_Report.Active then SP_Report.Active:=false;

  SP_Report.Parameters.Clear;
SP_Report.ProcedureName:='GetAvtoZayvka;1';
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[0].Name:='@id_avt';
SP_Report.Parameters[0].DataType:=ftInteger;
SP_Report.Parameters[0].Value:=id_avt;
SP_Report.Open;

end;

end;



frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\15.fr3');
whatReport:=15;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;

procedure TMain.CreateReportLibr(what:integer);
begin
Application.ProcessMessages;
if WriteIdx=1 then
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\libr01.fr3')
else
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\libr02.fr3');
frxDBDataSetLibr.DataSource:=dm.ds_libr;
case what of
1: begin frxReport1.ReportOptions.Name := '��������/�������';
end;
2: begin frxReport1.ReportOptions.Name:='����������';
end;
3:begin frxReport1.ReportOptions.Name:='������';
end;
4:begin frxReport1.ReportOptions.Name:='���-������';
end;
5:begin frxReport1.ReportOptions.Name:='������';
end;
6:begin frxReport1.ReportOptions.Name:='����� ��������������';
end;
7:begin frxReport1.ReportOptions.Name:='�������� ��������������';
end;
8:begin frxReport1.ReportOptions.Name:='��� ������';
end;
9:begin frxReport1.ReportOptions.Name:='���. ���������';
end;
10:begin frxReport1.ReportOptions.Name:='������ ������������';
end;
11:begin frxReport1.ReportOptions.Name:='����� ����������';
end;
12:begin frxReport1.ReportOptions.Name:='����� ���';
end;
13:begin frxReport1.ReportOptions.Name:='��� �������';
end;
14:begin frxReport1.ReportOptions.Name:='����� �������';
end;
15:begin frxReport1.ReportOptions.Name:='��������� ��������';
end;
16:begin frxReport1.ReportOptions.Name:='������';
frxDBDataSetLibr.DataSource:=dm.ds_libr2;
end;

17:begin frxReport1.ReportOptions.Name:='��������� ��';
end;
18:begin frxReport1.ReportOptions.Name:='��� ������';
end;
end;


whatReport:=what+100;

frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;
procedure TMain.CreateReportShine();
begin
Application.ProcessMessages;
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\7.fr3');
frxReport1.ReportOptions.Name:='����';
whatReport:=7;
//frxReport1.OnObjectClick := nil;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;
procedure TMain.CreateReportAKB();
begin
Application.ProcessMessages;
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\8.fr3');
frxReport1.ReportOptions.Name:='���';
whatReport:=8;
//frxReport1.OnObjectClick := nil;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;
procedure TMain.CreateReportAvtoCard();
begin
Application.ProcessMessages;
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\9.fr3');
frxReport1.ReportOptions.Name:='���.��������������';
whatReport:=9;
//frxReport1.OnObjectClick := nil;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;
procedure TMain.CreateReportAvtoCard_Akt();
begin
Application.ProcessMessages;
frxReport1.LoadFromFile(ExtractFilePath(ParamStr(0))+'report\fr3\91.fr3');
frxReport1.ReportOptions.Name:='��� �����������';
whatReport:=91;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;

end;

procedure TMain.CreateReport(what,reg_p,div_p,depart_p,pre_p,serv_p,mark_p,source1_p,source2_p,group_p:integer;model_p, numb1_p,
numb2_p,oldnumb_p,year1_p,year2_p,vin_p,Neng_p,Nbody_p,Nshas_p,Npts_p,InAc1_p,InAc2_p,d1Rr,d2Rr,OutD1,OutD2:String;
State_p,UotAc_p,life_p:integer;N_insur,D_insur1,D_insur2:String;id_dislok:integer;type_tc_p:integer; arenda:integer; spisat:integer;
fuel_p,preserv_p,notATX,id_gsm,State_priz:integer; modelDVC, volumDVC:String;typeDVC, manufactureTC,guilty, injured, id_rem_place,spisat_Next:integer) ;
var
WPath:String;
//t: TfrMemoView;
Ch:TCheckBox;
n_i:byte;
aaa:String;
begin
chdir(ExtractFilePath(paramstr(0)));
whatReport:=what;
if d1Rr<>'-1' then
dateR1:=d1Rr else dateR1:='-';
if d2Rr<>'-1' then
dateR2:=d2Rr else dateR2:='-';
with dm do
begin
if ADO.Connected then begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if SP_Report.Active then SP_Report.Active:=false;
SP_Report.Parameters.Clear;
case what of
0:SP_Report.ProcedureName:='GetReportInventar;1';
1:SP_Report.ProcedureName:='GetReportExpl_pokaz;1';
2:SP_Report.ProcedureName:='GetReportExpl_Avto_1';
3:SP_Report.ProcedureName:='GetReportExpl_Avto_2';
11:SP_Report.ProcedureName:='GetReportExpl_pokaz2;1';
12:SP_Report.ProcedureName:='GetReportPlanExpl;1';
5:SP_Report.ProcedureName:='GetReportLineNormGSM';
51:SP_Report.ProcedureName:='GetReportLineNormGSM';
10:SP_Report.ProcedureName:='GetReportRemont';
41:SP_Report.ProcedureName:='GetReportFinGsm';
13:SP_Report.ProcedureName:='GetReportShina;1';
61:SP_Report.ProcedureName:='GetReportTO;1';
62:SP_Report.ProcedureName:='GetReportNotTO;1';
71:SP_Report.ProcedureName:='GetReportOil;1';
72:SP_Report.ProcedureName:='GetReportDtp;1';
73:SP_Report.ProcedureName:='GetReportShinaRazmer;1';
63:SP_Report.ProcedureName:='GetReportInventar;1';
end;
if what<>41 then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[0].Name:='@RETURN_VALUE';
SP_Report.Parameters[0].DataType:=ftInteger;
SP_Report.Parameters[0].Direction:=pdReturnValue;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[1].Name:='@reg_p';
SP_Report.Parameters[1].DataType:=ftInteger;
SP_Report.Parameters[1].Value:=reg_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[2].Name:='@div_p';
SP_Report.Parameters[2].DataType:=ftInteger;
SP_Report.Parameters[2].Value:=div_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[3].Name:='@depart_p';
SP_Report.Parameters[3].DataType:=ftInteger;
SP_Report.Parameters[3].Value:=depart_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[4].Name:='@pre_p';
SP_Report.Parameters[4].DataType:=ftInteger;
SP_Report.Parameters[4].Value:=pre_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[5].Name:='@serv_p';
SP_Report.Parameters[5].DataType:=ftInteger;
SP_Report.Parameters[5].Value:=serv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[6].Name:='@mark_p';
SP_Report.Parameters[6].DataType:=ftInteger;
SP_Report.Parameters[6].Value:=mark_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[7].Name:='@model_p';
SP_Report.Parameters[7].DataType:=ftString;
SP_Report.Parameters[7].Value:=model_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[8].Name:='@source1_p';
SP_Report.Parameters[8].DataType:=ftInteger;
SP_Report.Parameters[8].Value:=source1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[9].Name:='@source2_p';
SP_Report.Parameters[9].DataType:=ftInteger;
SP_Report.Parameters[9].Value:=source2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[10].Name:='@group_p';
SP_Report.Parameters[10].DataType:=ftInteger;
SP_Report.Parameters[10].Value:=group_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[11].Name:='@numb1_p';
SP_Report.Parameters[11].DataType:=ftString;
SP_Report.Parameters[11].Value:=numb1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[12].Name:='@numb2_p';
SP_Report.Parameters[12].DataType:=ftString;
SP_Report.Parameters[12].Value:=numb2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[13].Name:='@oldnumb_p';
SP_Report.Parameters[13].DataType:=ftString;
SP_Report.Parameters[13].Value:=oldnumb_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[14].Name:='@year1_p';
SP_Report.Parameters[14].DataType:=ftString;
SP_Report.Parameters[14].Value:=year1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[15].Name:='@year2_p';
SP_Report.Parameters[15].DataType:=ftString;
SP_Report.Parameters[15].Value:=year2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[16].Name:='@vin_p';
SP_Report.Parameters[16].DataType:=ftString;
SP_Report.Parameters[16].Value:=vin_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[17].Name:='@Neng_p';
SP_Report.Parameters[17].DataType:=ftString;
SP_Report.Parameters[17].Value:=Neng_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[18].Name:='@Nbody_p';
SP_Report.Parameters[18].DataType:=ftString;
SP_Report.Parameters[18].Value:=Nbody_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[19].Name:='@Nshas_p';
SP_Report.Parameters[19].DataType:=ftString;
SP_Report.Parameters[19].Value:=Nshas_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[20].Name:='@Npts_p';
SP_Report.Parameters[20].DataType:=ftString;
SP_Report.Parameters[20].Value:=Npts_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[21].Name:='@InAc1_p';
SP_Report.Parameters[21].DataType:=ftString;
SP_Report.Parameters[21].Value:=InAc1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[22].Name:='@InAc2_p';
SP_Report.Parameters[22].DataType:=ftString;
SP_Report.Parameters[22].Value:=InAc2_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[23].Name:='@State_p';
SP_Report.Parameters[23].DataType:=ftInteger;
SP_Report.Parameters[23].Value:=State_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[24].Name:='@UotAc_p';
SP_Report.Parameters[24].DataType:=ftInteger;
SP_Report.Parameters[24].Value:=UotAc_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[25].Name:='@life_p';
SP_Report.Parameters[25].DataType:=ftInteger;
SP_Report.Parameters[25].Value:=life_p;

if (what=0) or (what=13)or (what=73) or (what=61) or (what=62) or (what=63) then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[26].Name:='@OutD1';
SP_Report.Parameters[26].DataType:=ftString;
SP_Report.Parameters[26].Value:=OutD1;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[27].Name:='@OutD2';
SP_Report.Parameters[27].DataType:=ftString;
SP_Report.Parameters[27].Value:=OutD2;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[28].Name:='@N_insur';
SP_Report.Parameters[28].DataType:=ftString;
SP_Report.Parameters[28].Value:=N_insur;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[29].Name:='@D_insur1';
SP_Report.Parameters[29].DataType:=ftString;
SP_Report.Parameters[29].Value:=D_insur1;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[30].Name:='@D_insur2';
SP_Report.Parameters[30].DataType:=ftString;
SP_Report.Parameters[30].Value:=D_insur2;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[31].Name:='@id_dislok';
SP_Report.Parameters[31].DataType:=ftInteger;
SP_Report.Parameters[31].Value:=id_dislok;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[32].Name:='@id_typetc';
SP_Report.Parameters[32].DataType:=ftInteger;
SP_Report.Parameters[32].Value:=type_tc_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[33].Name:='@arenda';
SP_Report.Parameters[33].DataType:=ftInteger;
SP_Report.Parameters[33].Value:=arenda;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[34].Name:='@spisat';
SP_Report.Parameters[34].DataType:=ftInteger;
SP_Report.Parameters[34].Value:=spisat;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[35].Name:='@fuel_p';
SP_Report.Parameters[35].DataType:=ftInteger;
SP_Report.Parameters[35].Value:=fuel_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[36].Name:='@preserv_p';
SP_Report.Parameters[36].DataType:=ftInteger;
SP_Report.Parameters[36].Value:=preserv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[37].Name:='@notATX_p';
SP_Report.Parameters[37].DataType:=ftInteger;
SP_Report.Parameters[37].Value:=notATX;

end;

if (what=62) then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[38].Name:='@datt1';
SP_Report.Parameters[38].DataType:=ftString;
SP_Report.Parameters[38].Value:=d1Rr;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[39].Name:='@datt2';
SP_Report.Parameters[39].DataType:=ftString;
SP_Report.Parameters[39].Value:=d2Rr;

end;

if (what=1) or (what=2) or (what=3) or (what=11) or (what=12) or (what=5) or (what=51) or (what=71) or (what=72)then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[26].Name:='@datt1';
SP_Report.Parameters[26].DataType:=ftString;
SP_Report.Parameters[26].Value:=d1Rr;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[27].Name:='@datt2';
SP_Report.Parameters[27].DataType:=ftString;
SP_Report.Parameters[27].Value:=d2Rr;
end;
if (what=5) or (what=51) then
begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[28].Name:='@fuel';
SP_Report.Parameters[28].DataType:=ftInteger;
SP_Report.Parameters[28].Value:=fuel_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[29].Name:='@id_dislok';
SP_Report.Parameters[29].DataType:=ftInteger;
SP_Report.Parameters[29].Value:=id_dislok;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[30].Name:='@preserv_p';
SP_Report.Parameters[30].DataType:=ftInteger;
SP_Report.Parameters[30].Value:=preserv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[31].Name:='@notATX_p';
SP_Report.Parameters[31].DataType:=ftInteger;
SP_Report.Parameters[31].Value:=notATX;

end;
if (what=2) or (what=3) or (what=11) or (what=12) or (what=71) or (what=72) then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[28].Name:='@id_dislok';
SP_Report.Parameters[28].DataType:=ftInteger;
SP_Report.Parameters[28].Value:=id_dislok;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[29].Name:='@preserv_p';
SP_Report.Parameters[29].DataType:=ftInteger;
SP_Report.Parameters[29].Value:=preserv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[30].Name:='@notATX_p';
SP_Report.Parameters[30].DataType:=ftInteger;
SP_Report.Parameters[30].Value:=notATX;
end;
if (what=72) then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[31].Name:='@guilty';
SP_Report.Parameters[31].DataType:=ftInteger;
SP_Report.Parameters[31].Value:=guilty;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[32].Name:='@injured';
SP_Report.Parameters[32].DataType:=ftInteger;
SP_Report.Parameters[32].Value:=injured;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[33].Name:='@id_rem_place';
SP_Report.Parameters[33].DataType:=ftInteger;
SP_Report.Parameters[33].Value:=id_rem_place;
end;

if (what=1) then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[28].Name:='@id_dislok';
SP_Report.Parameters[28].DataType:=ftInteger;
SP_Report.Parameters[28].Value:=id_dislok;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[29].Name:='@preserv_p';
SP_Report.Parameters[29].DataType:=ftInteger;
SP_Report.Parameters[29].Value:=preserv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[30].Name:='@notATX_p';
SP_Report.Parameters[30].DataType:=ftInteger;
SP_Report.Parameters[30].Value:=notATX;

end;
if what=10 then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[26].Name:='@OutD1';
SP_Report.Parameters[26].DataType:=ftString;
SP_Report.Parameters[26].Value:=OutD1;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[27].Name:='@OutD2';
SP_Report.Parameters[27].DataType:=ftString;
SP_Report.Parameters[27].Value:=OutD2;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[28].Name:='@N_insur';
SP_Report.Parameters[28].DataType:=ftString;
SP_Report.Parameters[28].Value:=N_insur;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[29].Name:='@D_insur1';
SP_Report.Parameters[29].DataType:=ftString;
SP_Report.Parameters[29].Value:=D_insur1;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[30].Name:='@D_insur2';
SP_Report.Parameters[30].DataType:=ftString;
SP_Report.Parameters[30].Value:=D_insur2;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[31].Name:='@datt1';
SP_Report.Parameters[31].DataType:=ftString;
SP_Report.Parameters[31].Value:=d1Rr;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[32].Name:='@datt1';
SP_Report.Parameters[32].DataType:=ftString;
SP_Report.Parameters[32].Value:=d2Rr;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[33].Name:='@id_dislok';
SP_Report.Parameters[33].DataType:=ftInteger;
SP_Report.Parameters[33].Value:=id_dislok;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[34].Name:='@preserv_p';
SP_Report.Parameters[34].DataType:=ftInteger;
SP_Report.Parameters[34].Value:=preserv_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[35].Name:='@notATX_p';
SP_Report.Parameters[35].DataType:=ftInteger;
SP_Report.Parameters[35].Value:=notATX;
{��������� ������� 2016}
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[36].Name:='@modelDVC';
SP_Report.Parameters[36].DataType:=ftString;
SP_Report.Parameters[36].Value:=modelDVC;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[37].Name:='@volumDVC';
SP_Report.Parameters[37].DataType:=ftString;
SP_Report.Parameters[37].Value:=volumDVC;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[38].Name:='@typeDVC';
SP_Report.Parameters[38].DataType:=ftInteger;
SP_Report.Parameters[38].Value:=typeDVC;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[39].Name:='@manufactureTC';
SP_Report.Parameters[39].DataType:=ftInteger;
SP_Report.Parameters[39].Value:=manufactureTC;



end;
end;
if what=41 then begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[0].Name:='@id_depart';
SP_Report.Parameters[0].DataType:=ftInteger;
SP_Report.Parameters[0].Value:=depart_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[1].Name:='@id_fin';
SP_Report.Parameters[1].DataType:=ftInteger;
SP_Report.Parameters[1].Value:=source1_p;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[2].Name:='@date1';
SP_Report.Parameters[2].DataType:=ftString;
SP_Report.Parameters[2].Value:=d1Rr;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[3].Name:='@date2';
SP_Report.Parameters[3].DataType:=ftString;
SP_Report.Parameters[3].Value:=d2Rr;
end;

if what=11 then
begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[31].Name:='@id_gsm';
SP_Report.Parameters[31].DataType:=ftInteger;
SP_Report.Parameters[31].Value:=id_gsm;

end;

if (what=0) or (what=63) then
begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[38].Name:='@state_priz';
SP_Report.Parameters[38].DataType:=ftInteger;
SP_Report.Parameters[38].Value:=State_priz;
{��������� ������� 2016}
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[39].Name:='@modelDVC';
SP_Report.Parameters[39].DataType:=ftString;
SP_Report.Parameters[39].Value:=modelDVC;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[40].Name:='@volumDVC';
SP_Report.Parameters[40].DataType:=ftString;
SP_Report.Parameters[40].Value:=volumDVC;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[41].Name:='@typeDVC';
SP_Report.Parameters[41].DataType:=ftInteger;
SP_Report.Parameters[41].Value:=typeDVC;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[42].Name:='@manufactureTC';
SP_Report.Parameters[42].DataType:=ftInteger;
SP_Report.Parameters[42].Value:=manufactureTC;
{��������� �������� 2016}
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[43].Name:='@spisat_next';
SP_Report.Parameters[43].DataType:=ftInteger;
SP_Report.Parameters[43].Value:=spisat_Next;
end;

try


SP_Report.Open;

frmLoadData.Close;
Application.ProcessMessages;
WPath:=ExtractFilePath(ParamStr(0))+'report\';
frxUserDataset1.RangeEndCount:=SP_Report.FieldCount;
  frxReport1.LoadFromFile(WPath + 'fr3\'+IntToStr(what) + '.fr3');

case what of
0:frxReport1.ReportOptions.Name:='��� ��������������';
1:frxReport1.ReportOptions.Name:='���������������� ����������';
2:frxReport1.ReportOptions.Name:='���������������� �������� 1';
3:frxReport1.ReportOptions.Name:='���������������� �������� 2';
11:frxReport1.ReportOptions.Name:='���������������� ����������';
12:frxReport1.ReportOptions.Name:='������� ���� ������������ ��������������';
13:frxReport1.ReportOptions.Name:='����� �� �����';
5:frxReport1.ReportOptions.Name:='������ �������� ���� ���';
51:frxReport1.ReportOptions.Name:='������ �������� ���� ��� �� �����';
10:frxReport1.ReportOptions.Name:='����� �� �������';
41:frxReport1.ReportOptions.Name:='�������������� ���';
61:frxReport1.ReportOptions.Name:='���������� ������ �� � ������� ����';
62:frxReport1.ReportOptions.Name:='���������� �� ����� 3 �������';
71:frxReport1.ReportOptions.Name:='����� �� �����';
72:frxReport1.ReportOptions.Name:='����� �� ���';
73:frxReport1.ReportOptions.Name:='����� �� ������� ���';
63:frxReport1.ReportOptions.Name:='��� ��������������';
end;//case


//frxReport1.ShowReport(true);
//frxReport1.OnMouseOverObject := nil;
//frxReport1.Preview := nil;
//frxReport1.ShowProgress:=true;
        if frxReport1.PrepareReport then
          frxReport1.ShowPreparedReport;
          except
          on E : Exception do     begin
          dm.setMoreTimeOut();
            ShowMessage(E.ClassName+' ������� ������, � ���������� : '+E.Message);
            frmLoadData.Close;
            Application.ProcessMessages;
          end;
end;//except
end;
end;

end;

procedure TMain.CoolItem956Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.CoolItem9515Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.Search;
  frmsearch.ShowModal;
end;

procedure TMain.OpenExplCard(what:integer;id:integer;mark:String);
begin
Application.CreateForm(TfrmExplCard, frmExplCard);
case what of
1:frmExplCard.OpenCard(TfrmExpl(ActiveMDIChild).tExplCard,id,mark);
0:frmExplCard.NewCard(id,mark);
2:frmExplCard.NewCard2(id,mark);
end;
frmExplCard.ShowModal;
end;
procedure TMain.OpenRemontCard(what:integer;id:integer;mark:String);
begin
Application.CreateForm(TfrmRemont, frmRemont);
case what of
1:frmRemont.OpenCard(TfrmExpl(ActiveMDIChild).tExplCard,id,mark);
0:frmRemont.NewCard(id,mark);

end;
frmRemont.ShowModal;
end;
procedure TMain.OpenZayvkaCard(what:integer;id:integer;mark:String);
begin
Application.CreateForm(TfrmZayvka, frmZayvka);
case what of
1:frmZayvka.OpenCard(TfrmExpl(ActiveMDIChild).tExplCard,id,mark);
0:frmZayvka.NewCard(id,mark);

end;
frmZayvka.ShowModal;
end;
procedure TMain.ExplRefresh;
begin
TfrmExpl(ActiveMDIChild).LbSpeedButton4Click(self);
end;

procedure TMain.MinAvtoCard;
begin
Tfrmavtocard(ActiveMDIChild).WindowState:=wsMinimized;
end;
procedure TMain.N310Click(Sender: TObject);
begin
Application.CreateForm(Tfrmreport, frmreport);
  frmreport.NotOper3month;
  frmreport.GroupBox2.Visible:=true;
  frmreport.GroupBox3.Visible:=false;
  frmreport.TArenda.Visible:=true;
  frmreport.ShowModal;
end;

procedure TMain.N55Click(Sender: TObject);
begin
if frmLidBaseGsm = nil then
begin
  Application.CreateForm(TfrmLidShinaLimit, frmLidShinaLimit);
  frmLidShinaLimit.Show;
end;
end;

procedure TMain.N56Click(Sender: TObject);
begin
// �� �����
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.Shina;
  frmreport2.ShowModal;
end;

procedure TMain.N57Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.ReportTO;
  frmreport.GroupBox2.Visible:=true;
  frmreport.GroupBox3.Visible:=false;
  frmreport.TArenda.Visible:=true;
  frmreport.ShowModal;
end;

procedure TMain.N58Click(Sender: TObject);
begin
//����� �� �����
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.ReportOil;
  frmreport2.ShowModal;
end;

procedure TMain.N61Click(Sender: TObject);
begin
//����� �� ���
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.ReportDtp;
  frmreport2.ShowModal;
end;

procedure TMain.N62Click(Sender: TObject);
begin
// �� �����  ������
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.ShinaRazmer;
  frmreport2.ShowModal;
end;

procedure TMain.N63Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.InventarSimple;
  frmreport.GroupBox2.Visible:=true;
  frmreport.GroupBox3.Visible:=false;
  frmreport.TArenda.Visible:=true;
  frmreport.ShowModal;
end;

procedure TMain.N6Click(Sender: TObject);
begin
//����� ������� 2012-08-09
if frmLimProbeg = nil then
begin
  Application.CreateForm(TfrmLimProbeg, frmLimProbeg);
  frmLimProbeg.OpenLibr((Sender as TMenuItem).Tag);
  frmLimProbeg.ShowModal;
end;
end;

procedure TMain.MaxAvtoCard;
begin
if Tfrmavtocard(ActiveMDIChild).WindowState=wsMaximized then
Tfrmavtocard(ActiveMDIChild).WindowState:=wsNormal else
Tfrmavtocard(ActiveMDIChild).WindowState:=wsMaximized;
end;


procedure TMain.CoolItem9522Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.Inventar;
  frmreport.GroupBox2.Visible:=true;
  frmreport.GroupBox3.Visible:=false;
  frmreport.TArenda.Visible:=true;
  frmreport.ShowModal;
end;

procedure TMain.WindowTileHorizontal1Execute(Sender: TObject);
var
a,i:integer;
begin
Main.Cascade;
a:=Main.ClientHeight-72;
for i:=0 to Main.MDIChildCount-1 do
begin
Main.MDIChildren[i].Height:=a div Main.MDIChildCount;
Main.MDIChildren[i].Top:=i*Main.MDIChildren[i].Height;
Main.MDIChildren[i].Width:=Main.ClientWidth-7;
Main.MDIChildren[i].Left:=0;
Application.ProcessMessages;
end;
end;

procedure TMain.WindowTileVertical1Execute(Sender: TObject);
var
a,i:integer;
begin
Main.Cascade;
a:=Main.ClientWidth-5;
for i:=0 to Main.MDIChildCount-1 do
begin
Main.MDIChildren[i].Width:=a div Main.MDIChildCount-5;
Main.MDIChildren[i].Left:=i*Main.MDIChildren[i].Width;
Main.MDIChildren[i].Height:=Main.ClientHeight-72;
Main.MDIChildren[i].Top:=0;
Application.ProcessMessages;
end;
end;

procedure TMain.RefreshLibr;
var
i:byte;
begin
if Main.MDIChildCount>0 then
for i:=0 to Main.MDIChildCount-1 do
begin
if Main.MDIChildren[i].Name='frmavtocard' then begin
//with Main.MDIChildren[i] as Tfrmavtocard do
with dm do
begin
tRegion.Close;
tRegion.Open;
tDivision.Close;
tDivision.Open;
tDepart.Close;
tDepart.Open;
tPre_depart.Close;
tPre_depart.Open;
tServices.Close;
tServices.Open;
tDislokation.Close;
tDislokation.Open;

tMark_avt.Close;
tMark_avt.Open;
tTypeTC.Close;
tTypeTC.Open;
tModel_avt.Close;
tModel_avt.Open;
tSource_fin.Close;
tSource_fin.Open;
tType_body.Close;
tType_body.Open;
tTech.Close;
tTech.Open;
tGroup_used.Close;
tGroup_used.Open;

tMarkGSM.Close;
tMarkGSM.Open;
tBaseNormGsm.Close;
tBaseNormGsm.Open;
tYearExpl.Close;
tYearExpl.Open;
tYearExplBig.Close;
tYearExplBig.Open;
tInsureCompany.Close;
tInsureCompany.Open;
end;
end;
end;
end;

procedure TMain.CoolItem9523Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.Expel_pokaz;
  frmreport.GroupBox2.Visible:=false;
  frmreport.ShowModal;
end;


procedure TMain.CoolItem9524Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.Expel_avto_1;
  frmreport2.ShowModal;

end;

procedure TMain.CoolItem9525Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.Expel_avto_2;
  frmreport2.ShowModal;
end;

procedure TMain.CoolItem9528Click(Sender: TObject);
begin
if frmShtatSetting = nil then
begin
Application.CreateForm(TfrmShtatSetting, frmShtatSetting);
frmShtatSetting.Show;
end;
end;

procedure TMain.CoolItem9529Click(Sender: TObject);
var
val_m,val_f:real;
constr:integer;
begin
//��������� ������
if ATXMessageDlg('��� ������������ �������� ���������� ������ ���������� ����� ����������!. ���������� ������������?',
    2,mtWarning) = mrYes then
    begin
Application.CreateForm(TfrmLoadData, frmLoadData);
    frmLoadData.Show;
Application.ProcessMessages;

with dm do
begin
        if ADO.Connected then
        begin
            if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='CreateShtat_01;1';
                StoredProc1.Open;
WHILE not StoredProc1.Eof do
BEGIN
   if not StoredProc1.FieldByName('constr_02_m').AsBoolean then
   begin
   if StoredProc1.FieldByName('constr_01_m').AsInteger>0 then
      val_m:=StoredProc1.FieldByName('people_m').AsInteger/StoredProc1.FieldByName('constr_01_m').AsInteger
      else val_m:=0;
      constr:=StoredProc1.FieldByName('constr_03_m').AsInteger;
      if constr=0 then constr:=1000000;
      if val_m>Trunc(val_m) then val_m:=Trunc(val_m)+1 else val_m:=Trunc(val_m);
        if val_m>constr then
          val_m:=constr;
   end
 else
   begin
            if StoredProc2.Active then StoredProc2.Active:=false;
                StoredProc2.Parameters.Clear;
                StoredProc2.ProcedureName:='CreateShtat_02;1';
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[0].Name:='@RETURN_VALUE';
StoredProc2.Parameters[0].DataType:=ftInteger;
StoredProc2.Parameters[0].Direction:=pdReturnValue;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[1].Name:='@id';
StoredProc2.Parameters[1].DataType:=ftInteger;
StoredProc2.Parameters[1].Value:=StoredProc1.FieldByName('id').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[2].Name:='@people_m';
StoredProc2.Parameters[2].DataType:=ftInteger;
StoredProc2.Parameters[2].Value:=StoredProc1.FieldByName('people_m').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[3].Name:='@what';
StoredProc2.Parameters[3].DataType:=ftInteger;
StoredProc2.Parameters[3].Value:=0;
StoredProc2.Active:=true;
val_m:=StoredProc2.Fields[0].AsInteger;
StoredProc2.Active:=false;
end;
//--

   if not StoredProc1.FieldByName('constr_02_f').AsBoolean then
   begin
   if StoredProc1.FieldByName('constr_01_f').AsInteger>0 then
      val_f:=StoredProc1.FieldByName('people_f').AsInteger/StoredProc1.FieldByName('constr_01_f').AsInteger
      else val_f:=0;
      constr:=StoredProc1.FieldByName('constr_03_f').AsInteger;
         if constr=0 then constr:=1000000;
      if val_f>Trunc(val_f) then val_f:=Trunc(val_f)+1 else val_f:=Trunc(val_f);
        if val_f>constr then
             val_f:=constr;
   end
  else
    begin
      if StoredProc2.Active then StoredProc2.Active:=false;
         StoredProc2.Parameters.Clear;
         StoredProc2.ProcedureName:='CreateShtat_02;1';
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[0].Name:='@RETURN_VALUE';
StoredProc2.Parameters[0].DataType:=ftInteger;
StoredProc2.Parameters[0].Direction:=pdReturnValue;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[1].Name:='@id';
StoredProc2.Parameters[1].DataType:=ftInteger;
StoredProc2.Parameters[1].Value:=StoredProc1.FieldByName('id').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[2].Name:='@people_m';
StoredProc2.Parameters[2].DataType:=ftInteger;
StoredProc2.Parameters[2].Value:=StoredProc1.FieldByName('people_f').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[3].Name:='@what';
StoredProc2.Parameters[3].DataType:=ftInteger;
StoredProc2.Parameters[3].Value:=1;
StoredProc2.Active:=true;
val_f:=StoredProc2.Fields[0].AsInteger;
StoredProc2.Active:=false;
end;

      if StoredProc2.Active then StoredProc2.Active:=false;
         StoredProc2.Parameters.Clear;
         StoredProc2.ProcedureName:='CreateShtat_03;1';
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[0].Name:='@id';
StoredProc2.Parameters[0].DataType:=ftInteger;
StoredProc2.Parameters[0].Value:=StoredProc1.FieldByName('id').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[1].Name:='@people_m';
StoredProc2.Parameters[1].DataType:=ftInteger;
StoredProc2.Parameters[1].Value:=StoredProc1.FieldByName('people_m').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[2].Name:='@people_f';
StoredProc2.Parameters[2].DataType:=ftInteger;
StoredProc2.Parameters[2].Value:=StoredProc1.FieldByName('people_f').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[3].Name:='@val_m';
StoredProc2.Parameters[3].DataType:=ftInteger;
StoredProc2.Parameters[3].Value:=Round(val_m);
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[4].Name:='@val_f';
StoredProc2.Parameters[4].DataType:=ftInteger;
StoredProc2.Parameters[4].Value:=Round(val_f);
try
   StoredProc2.ExecProc;
   CommitTR;
except
  RollBTR;
end;
//insert avto
if StoredProc2.Active then StoredProc2.Active:=false;
StoredProc2.Parameters.Clear;
StoredProc2.ProcedureName:='CreateShtat_04;1';
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[0].Name:='@RETURN_VALUE';
StoredProc2.Parameters[0].DataType:=ftInteger;
StoredProc2.Parameters[0].Direction:=pdReturnValue;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[1].Name:='@id_r';
StoredProc2.Parameters[1].DataType:=ftInteger;
StoredProc2.Parameters[1].Value:=StoredProc1.FieldByName('id_region').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[2].Name:='@id_d';
StoredProc2.Parameters[2].DataType:=ftInteger;
StoredProc2.Parameters[2].Value:=StoredProc1.FieldByName('id_division').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[3].Name:='@id_dp';
StoredProc2.Parameters[3].DataType:=ftInteger;
StoredProc2.Parameters[3].Value:=StoredProc1.FieldByName('id_depart').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[4].Name:='@id_pr';
StoredProc2.Parameters[4].DataType:=ftInteger;
StoredProc2.Parameters[4].Value:=StoredProc1.FieldByName('id_predepart').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[5].Name:='@id_s';
StoredProc2.Parameters[5].DataType:=ftInteger;
StoredProc2.Parameters[5].Value:=StoredProc1.FieldByName('id_serv').AsInteger;
StoredProc2.Parameters.AddParameter;
StoredProc2.Parameters[6].Name:='@id_ps';
StoredProc2.Parameters[6].DataType:=ftInteger;
StoredProc2.Parameters[6].Value:=StoredProc1.FieldByName('id_preserv').AsInteger;
StoredProc2.Active:=true;
while not StoredProc2.Eof do
begin
if StoredProc3.Active then StoredProc3.Active:=false;
StoredProc3.Parameters.Clear;
StoredProc3.ProcedureName:='CreateShtat_05;1';
StoredProc3.Parameters.AddParameter;
StoredProc3.Parameters[0].Name:='@id';
StoredProc3.Parameters[0].DataType:=ftInteger;
StoredProc3.Parameters[0].Value:=StoredProc1.FieldByName('id').AsInteger;
StoredProc3.Parameters.AddParameter;
StoredProc3.Parameters[1].Name:='@id_avt';
StoredProc3.Parameters[1].DataType:=ftInteger;
StoredProc3.Parameters[1].Value:=StoredProc2.Fields[0].AsInteger;
StoredProc3.Parameters.AddParameter;
StoredProc3.Parameters[2].Name:='@id_source_fin';
StoredProc3.Parameters[2].DataType:=ftInteger;
StoredProc3.Parameters[2].Value:=StoredProc2.Fields[1].AsInteger;
try
   StoredProc3.ExecProc;
   CommitTR;
except
  RollBTR;
end;
StoredProc3.Active:=false;
StoredProc2.Next;
end;
StoredProc2.Active:=false;


StoredProc1.Next;
end;
StoredProc1.Active:=false;
{            if StoredProc1.Active then StoredProc1.Active:=false;
                StoredProc1.Parameters.Clear;
                StoredProc1.ProcedureName:='GenerateMainShtat;1';
try
   StoredProc1.ExecProc;
   CommitTR;
except
  RollBTR;
end;
}
//������ ���������, �.�. ��� ������
q2.Close;
q2.SQL.Clear;
q2.SQL.Add('delete from tShtat_a_f');
q2.ExecSQL;
q2.Close;
q2.SQL.Clear;
q2.SQL.Add('delete from tShtat_a_m');
q2.ExecSQL;

q1.Close;
q1.SQL.Clear;
q1.SQL.Add('SELECT tSetting_state.id, tRegion.name, tDivision.name AS Expr1, tDepart.name AS Expr2,');
q1.SQL.Add('                      tPre_Depart.name AS Expr3, tServices.name AS Expr4, tPre_Services.name AS Expr4p, tStates.people_m, tStates.people_f, tStates.avt_m, tStates.avt_f,');
q1.SQL.Add('                      COUNT(tStateAvt.id_avt_m) AS Cavt_m, COUNT(tStateAvt.id_avt_f) AS Cavt_f');
q1.SQL.Add('FROM         tSetting_state INNER JOIN');
q1.SQL.Add('                      tStates ON tSetting_state.id = tStates.id_setting LEFT OUTER JOIN');
q1.SQL.Add('                      tStateAvt ON tSetting_state.id = tStateAvt.id_setting LEFT OUTER JOIN');
q1.SQL.Add('                      tServices ON tSetting_state.id_serv = tServices.id LEFT OUTER JOIN');
q1.SQL.Add('                      tPre_Services ON tSetting_state.id_preserv = tPre_Services.id LEFT OUTER JOIN');
q1.SQL.Add('                      tDivision ON tSetting_state.id_division = tDivision.id LEFT OUTER JOIN');
q1.SQL.Add('                      tDepart ON tSetting_state.id_depart = tDepart.id LEFT OUTER JOIN');
q1.SQL.Add('                      tRegion ON tSetting_state.id_region = tRegion.id LEFT OUTER JOIN');
q1.SQL.Add('                      tPre_Depart ON tSetting_state.id_predepart = tPre_Depart.id');
q1.SQL.Add('where  tSetting_state.id>0');
q1.SQL.Add('GROUP BY tSetting_state.id, tStates.people_m, tStates.people_f, tStates.avt_m, tStates.avt_f, tRegion.name, tDivision.name,');
q1.SQL.Add('                      tDepart.name, tPre_Depart.name, tServices.name, tPre_Services.name');
q1.SQL.Add('ORDER BY tRegion.name, tDivision.name, tDepart.name, tPre_Depart.name, tServices.name, tPre_Services.name');
q1.Open;
while not q1.Eof do
begin
q2.Close;
q2.SQL.Clear;
q2.SQL.Add('SELECT     tMark_avt.name as name_avt, tAvto.model, tAvto.numb_1, tAvto.id');
q2.SQL.Add('FROM         tAvto INNER JOIN');
q2.SQL.Add('                      tMark_avt ON tAvto.id_mark = tMark_avt.id');
q2.SQL.Add('WHERE     (tAvto.id IN');
q2.SQL.Add('                          (SELECT     id_avt_f');
q2.SQL.Add('                            FROM          tStateAvt');
q2.SQL.Add('                            WHERE      id_avt_f IS NOT NULL AND id_setting = '+q1.Fields[0].AsString+'))');
q2.Open;
if q2.Eof then
begin
q4.Close;
q4.SQL.Clear;
q4.SQL.Add('insert into tShtat_a_f values ('+q1.Fields[0].AsString+', null, null, null, null)');
q4.ExecSQL;
end;
WHILE not q2.Eof do
BEGIN
q4.Close;
q4.SQL.Clear;
q4.SQL.Add('insert into tShtat_a_f values ('+q1.Fields[0].AsString+', '''+q2.Fields[0].AsString+''', '''+q2.Fields[1].AsString+''', '''+q2.Fields[2].AsString+''', '+q2.Fields[3].AsString+')');
q4.ExecSQL;
q2.Next;
END;

q3.Close;
q3.SQL.Clear;
q3.SQL.Add('SELECT     tMark_avt.name as name_avt, tAvto.model, tAvto.numb_1, tAvto.id');
q3.SQL.Add('FROM         tAvto INNER JOIN');
q3.SQL.Add('                      tMark_avt ON tAvto.id_mark = tMark_avt.id');
q3.SQL.Add('WHERE     (tAvto.id IN');
q3.SQL.Add('                          (SELECT     id_avt_m');
q3.SQL.Add('                            FROM          tStateAvt');
q3.SQL.Add('                            WHERE      id_avt_m IS NOT NULL AND id_setting = '+q1.Fields[0].AsString+'))');
q3.Open;
if q3.Eof then
begin
q4.Close;
q4.SQL.Clear;
q4.SQL.Add('insert into tShtat_a_m values ('+q1.Fields[0].AsString+', null, null, null, null)');
q4.ExecSQL;
end;
WHILE not q3.Eof do
BEGIN
q4.Close;
q4.SQL.Clear;
q4.SQL.Add('insert into tShtat_a_m values ('+q1.Fields[0].AsString+', '''+q3.Fields[0].AsString+''', '''+q3.Fields[1].AsString+''', '''+q3.Fields[2].AsString+''', '+q3.Fields[3].AsString+')');
q4.ExecSQL;
q3.Next;
END;
q1.Next;
Application.ProcessMessages;
end;




//����� ������ ���������, �.�. ��� ������
frmLoadData.Close;
ATXShowMessage('������� ���������� ������������!');
 end;
end;
end;
end;
procedure TMain.PreviewShtat2(id_reg,id_div,id_depart,id_pred,id_serv,id_preserv,typ:integer);
var
WPath:String;
begin
chdir(ExtractFilePath(paramstr(0)));
with dm do
begin
if ADO.Connected then begin
ADOTable1.Active:=false;
ADOTable1.TableName:='';
ADOTable1.MasterSource:=nil;
ADOTable2.Active:=false;
ADOTable2.TableName:='';
ADOTable2.MasterSource:=nil;

Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if SP_Report.Active then
    SP_Report.Close;
SP_Report.Parameters.Clear;
case typ of
1:begin SP_Report.ProcedureName:='GetReportShtat2;1';whatReport:=4;end;
2:begin SP_Report.ProcedureName:='GetReportShtat3;1';whatReport:=42;end;
3:begin SP_Report.ProcedureName:='GetReportShtat4;1';whatReport:=43;end;
4:begin SP_Report.ProcedureName:='GetReportShtat3;1';whatReport:=44;end;
end;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[0].Name:='@RETURN_VALUE';
SP_Report.Parameters[0].DataType:=ftInteger;
SP_Report.Parameters[0].Direction:=pdReturnValue;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[1].Name:='@id_reg';
SP_Report.Parameters[1].DataType:=ftInteger;
SP_Report.Parameters[1].Value:=id_reg;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[2].Name:='@id_div';
SP_Report.Parameters[2].DataType:=ftInteger;
SP_Report.Parameters[2].Value:=id_div;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[3].Name:='@id_depart';
SP_Report.Parameters[3].DataType:=ftInteger;
SP_Report.Parameters[3].Value:=id_depart;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[4].Name:='@id_pred';
SP_Report.Parameters[4].DataType:=ftInteger;
SP_Report.Parameters[4].Value:=id_pred;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[5].Name:='@id_serv';
SP_Report.Parameters[5].DataType:=ftInteger;
SP_Report.Parameters[5].Value:=id_serv;
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[6].Name:='@id_preserv';
SP_Report.Parameters[6].DataType:=ftInteger;
SP_Report.Parameters[6].Value:=id_preserv;
if (typ=2) or (typ=4) then
begin
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[7].Name:='@order';
SP_Report.Parameters[7].DataType:=ftInteger;
SP_Report.Parameters[7].Value:=typ;
end;
SP_Report.Open;

if typ=1 then
begin
ADOTable1.Active:=false;
ADOTable1.TableName:='tShtat_a_m';
ADOTable1.MasterSource:=DS_Report;
ADOTable1.MasterFields:='id';
ADOTable1.Active:=true;

ADOTable2.Active:=false;
ADOTable2.TableName:='tShtat_a_f';
ADOTable2.MasterSource:=DS_Report;
ADOTable2.MasterFields:='id';
ADOTable2.Active:=true;
end;
frmLoadData.Close;
Application.ProcessMessages;
WPath:=ExtractFilePath(ParamStr(0))+'report\fr3\';
frxUserDataset1.RangeEndCount:=SP_Report.FieldCount;
case typ of
1:frxReport1.LoadFromFile(WPath + '4_1.fr3');
2:frxReport1.LoadFromFile(WPath + '4_2.fr3');
3:frxReport1.LoadFromFile(WPath + '4_3.fr3');
4:frxReport1.LoadFromFile(WPath + '4_4.fr3');
end;
frxReport1.ReportOptions.Name:='������� ����������';
//frxReport1.OnObjectClick := nil;
frxReport1.OnMouseOverObject := nil;
frxReport1.Preview := nil;
if frxReport1.PrepareReport then
        frxReport1.ShowPreparedReport;
end;
end;

end;

{procedure TMain.PreviewShtat;
var
WPath:String;
begin
whatReport:=4;
chdir(ExtractFilePath(paramstr(0)));
with dm do
begin
if ADO.Connected then begin
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
if SP_Report.Active then SP_Report.Active:=false;
SP_Report.Parameters.Clear;
SP_Report.ProcedureName:='GetReportShtat;1';
SP_Report.Parameters.AddParameter;
SP_Report.Parameters[0].Name:='@RETURN_VALUE';
SP_Report.Parameters[0].DataType:=ftInteger;
SP_Report.Parameters[0].Direction:=pdReturnValue;
SP_Report.Open;
frmLoadData.Close;
Application.ProcessMessages;
WPath:=ExtractFilePath(ParamStr(0))+'report\';
frUserDataset1.RangeEndCount:=SP_Report.FieldCount;
frReport1.LoadFromFile(WPath + '4.frf');
frReport1.Title:='������� ����������';
frReport1.OnObjectClick := nil;
frReport1.OnMouseOverObject := nil;
frReport1.Preview := nil;
if frReport1.PrepareReport then
        frReport1.ShowPreparedReport;
end;
end;

end;        }

procedure TMain.CoolItem9526Click(Sender: TObject);
begin
//PreviewShtat;
str_old_m:='';
str_old_f:='';
  Application.CreateForm(TPrint_shtate, Print_shtate);
//  Print_shtate.Search;
  Print_shtate.ShowModal;

end;

procedure TMain.CoolItem9527Click(Sender: TObject);
begin
if frmShtatSetting = nil then
begin
Application.CreateForm(TfrmShtatEdit, frmShtatEdit);
frmShtatEdit.Show;
end;
end;

procedure TMain.CoolItem952Click(Sender: TObject);
var
reg:TRegistry;
SActivate:TSActivate;
VolumeSerialNumber : DWORD;
MaximumComponentLength : DWORD;
FileSystemFlags : DWORD;
begin
//���������
Application.CreateForm(TfrmActivate, frmActivate);
GetVolumeInformation('c:\', nil, 0, @VolumeSerialNumber, MaximumComponentLength, FileSystemFlags, nil, 0);
frmActivate.Edit3.Text:=IntToHex(HiWord(VolumeSerialNumber), 4);
frmActivate.Edit4.Text:=IntToHex(LoWord(VolumeSerialNumber), 4);
if frmActivate.ShowModal=mrOk then
begin
     with frmActivate do
     begin
      SActivate:=TSActivate.Create;
      if SActivate.ChecCode(UpperCase(Edit1.Text),UpperCase(Edit2.Text)) then
      begin
        Reg := TRegistry.Create;
          try
            Reg.RootKey := HKEY_CLASSES_ROOT;
              if Reg.OpenKey('\CLSID\{96A7934F-0C7A-4C35-930C-012A5A8EF7DB}', True) then
               Reg.WriteInteger('Count',-1);
               //CoolItem952.Enabled:=false;
               ATXShowMessage('��������� ������ �������!');
          except
          end;
            Reg.CloseKey;
            Reg.Free;
      end
      else
      begin
          ATXShowMessage('�������� ��� ���������!');
      end;
      SActivate.Free;
     end
end;
end;

procedure TMain.CoolItem9513Click(Sender: TObject);
var
ApplicationPath:String;
begin
ApplicationPath := GetCurrentDir+'\help\index.html';
ShellExecute(Handle, nil, PChar(ApplicationPath), nil, nil, SW_SHOW);
end;

procedure TMain.CoolItem951Click(Sender: TObject);
begin
if frmLibModel = nil then
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(1);
  frmLibModel.Show;
end;

end;

procedure TMain.CoolItem9530Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;

end;

procedure TMain.CoolItem9531Click(Sender: TObject);
begin
if frmLidBaseGsm = nil then
begin
  Application.CreateForm(TfrmLidBaseGsm, frmLidBaseGsm);
  frmLidBaseGsm.Show;
end;

end;

procedure TMain.CoolItem9535Click(Sender: TObject);
begin
if frmLibModel = nil then
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(2);
  frmLibModel.Show;
end;

end;

procedure TMain.CoolItem9533Click(Sender: TObject);
begin
if frmYearExpl = nil then
begin
  Application.CreateForm(TfrmYearExpl, frmYearExpl);
  frmYearExpl.Show;
end;

end;

procedure TMain.CoolItem9532Click(Sender: TObject);
begin
if frmLibModel = nil then
begin
  Application.CreateForm(TfrmLibModel, frmLibModel);
  frmLibModel.OpenLib(3);
  frmLibModel.Show;
end;

end;

procedure TMain.CoolItem9537Click(Sender: TObject);
begin
//�������������� ���
if frmFinGSM = nil then
begin
dm.tModel_avt.Open;
  Application.CreateForm(TfrmFinGSM, frmFinGSM);
  frmFinGSM.Show;
end;

end;

procedure TMain.CoolItem9539Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.LineNormGSM;
  frmreport.GroupBox2.Visible:=false;
  frmreport.ShowModal;

end;

procedure TMain.CoolItem9541Click(Sender: TObject);
begin
//������
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.Remont;
  frmreport.GroupBox2.Visible:=false;
  frmreport.GroupBox3.Visible:=true;
  frmreport.ShowModal;

end;

procedure TMain.CoolItem9542Click(Sender: TObject);
begin
//��� ������������
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.CoolItem9543Click(Sender: TObject);
begin
//�������������� ���
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.FinGsm;
  frmreport2.ShowModal;
end;

procedure TMain.CoolItem9544Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmreport, frmreport);
  frmreport.LineNormGSM2;
  frmreport.GroupBox2.Visible:=false;
  frmreport.ShowModal;
end;

procedure TMain.CoolItem9545Click(Sender: TObject);
begin
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.CoolItem9546Click(Sender: TObject);
begin
//��� ������
if frmLibr = nil then
begin
  Application.CreateForm(TfrmLibr, frmLibr);
  frmLibr.OpenLibr((Sender as TMenuItem).Tag);
  frmLibr.Show;
end;
end;

procedure TMain.CoolItem9547Click(Sender: TObject);
begin
//���� ���������� ������
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.Expel_pokaz2;
  frmreport2.ShowModal;
end;

procedure TMain.CoolItem9548Click(Sender: TObject);
begin
//������� ����
  Application.CreateForm(Tfrmreport2, frmreport2);
  frmreport2.PlanExpel;
  frmreport2.ShowModal;
end;

procedure TMain.frxReport1BeforePrint(Sender: TfrxReportComponent);
var
  Cross: TfrxCrossView;
  i, j: Integer;
begin
  {if Sender is TfrxCrossView then
  begin
    Cross := TfrxCrossView(Sender);

    Cross.AddValue([1], [1], ['dlfldfk']);
    for i := 2 to 3 do
      for j := 1 to frmRemont.SG_ZAP.RowCount-1do
        Cross.AddValue([j], [i], [frmRemont.SG_ZAP.Cells[i - 2, j - 1]]);
  end;
  }
end;


procedure TMain.frxReport1GetValue(const VarName: String;
  var Value: Variant);
var str:String;
t: TfrxMemoView;
t_Old: TfrxMemoView;
Ch:TCheckBox;
n_i:byte;
first_fr:boolean;
i,i_Old,j:integer;
today : TDateTime;
myYear, myMonth, myDay : Word;
begin
case whatReport of
0,61,62,63:begin
first_fr:=true;
i_Old:=0;
today:=Now();

if VarName = 'titles' then
    Value := '���������� �� ����� 3 ������� (���������� �� � ������ � '+frmreport.d1R.Text+' �� '+frmreport.d2R.Text+')';

for n_i:=1 to 26 do
begin
    Ch:= TCheckBox(frmreport.FindComponent('CheckBox'+IntToStr(n_i)));
    t := TfrxMemoView(frxReport1.FindObject('mm'+IntToStr(n_i)));
    if t <> nil then
        if not Ch.Checked then
          t.Visible:=false
          else
          begin
            if not first_fr then
            begin
              //t.FrameTyp:=15;
              t_Old := TfrxMemoView(frxReport1.FindObject('mm'+IntToStr(i_Old)));
              t.Left:=t_Old.Width+t_Old.Left;
            end else begin
            t.Left:=0;
            end;
          end;
    t := TfrxMemoView(frxReport1.FindObject('mmm'+IntToStr(n_i)));
   if t <> nil then
        if not Ch.Checked then
          t.Visible:=false else begin
          if not first_fr then
          begin
            //t.FrameTyp:=7;
            t_Old := TfrxMemoView(frxReport1.FindObject('mmm'+IntToStr(i_Old)));
            t.Left:=t_Old.Width+t_Old.Left;
            i_Old:=n_i;
          end else begin
            t.Left:=0;
            i_Old:=n_i;
            end;
   first_fr:=false;
   end;
end;
end;
1,2,3:begin
  if VarName = 'date2' then
    Value := '� '+dateR1+' �� '+dateR2;
end;
11:begin
  if VarName = 'date2' then
    Value := '� '+dateR1+' �� '+dateR2;
  if VarName = 'mark_gsm' then
  begin
    if frmreport2.gsm_box.Checked then
       Value := '��� �������: '+Trim(frmreport2.db_gsm.Text)
    else
       Value := '��� �������: ���';
  end;
end;
71,72:begin
  if VarName = 'date2' then
    Value := '� '+dateR1+' �� '+dateR2;

end;
12:begin
today:=Now();
DecodeDate(today, myYear, myMonth, myDay);
  if VarName = 'date2' then
    Value := '�� '+IntToStr(myYear) +' ���';
end;

4:begin
if VarName = 'avt_fff' then begin
//if not dm.ADOTable2.Eof then
str:=Trim(dm.ADOTable2.Fields[1].AsString)+'-'+Trim(dm.ADOTable2.Fields[2].AsString)+' �'+Trim(dm.ADOTable2.Fields[3].AsString);
dm.ADOTable2.Next;
//else
//str:='';
if str_old_f<>str then
begin
if Trim(str)='- �' then str:='';
Value:=str;
str_old_f:=str
end else
begin
str:='';
Value:=str;
end
end;
if VarName = 'avt_mmm' then begin
//if not dm.ADOTable1.Eof then
str:=Trim(dm.ADOTable1.Fields[1].AsString)+'-'+Trim(dm.ADOTable1.Fields[2].AsString)+' �'+Trim(dm.ADOTable1.Fields[3].AsString);
dm.ADOTable1.Next;
//else
//str:='';
if str_old_m<>str then
begin
if Trim(str)='- �' then str:='';
Value:=str;
str_old_m:=str
end else
begin
str:='';
Value:=str;
end

end;
end;//
5,51:begin
if VarName='year' then
 Value:=frmreport.ComboBox1.Text+' ���';
end;
6:begin
if VarName = 'avt_name' then
begin
str:=frmRemont.Caption;
//dm.tMark_avt.Fields[1].AsString+'-'+
Value:=str;
end;



  if CompareText(VarName, 'date1') = 0 then
    Value := date1_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 'date2') = 0 then
    Value := date2_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 'vid') = 0 then
    Value := vid_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 'place_rem') = 0 then
    Value := place_rem_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 's_b') = 0 then
    Value := s_b_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 's_e') = 0 then
    Value := s_e_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 'ddd') = 0 then
    Value := ddd_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 'place') = 0 then
    Value := place_list[frxUserDataSet1.RecNo];
      if CompareText(VarName, 'oil_l') = 0 then
    Value := oil_l_list[frxUserDataSet1.RecNo];

  if CompareText(VarName, 'zap_name') = 0 then
    Value := SG_AGR_list_1[frxUserDataSet1.RecNo];
  if CompareText(VarName, 'zap_old') = 0 then
    Value := SG_AGR_list_2[frxUserDataSet1.RecNo];
  if CompareText(VarName, 'zap_new') = 0 then
    Value := SG_AGR_list_3[frxUserDataSet1.RecNo];

  if CompareText(VarName, 'rem_name') = 0 then
    Value := SG_REM_list_1[frxUserDataSet1.RecNo];
  if CompareText(VarName, 'rem_coast') = 0 then
    Value := SG_REM_list_2[frxUserDataSet1.RecNo];

  if CompareText(VarName, 'z_name') = 0 then
    Value := SG_ZAP_list_1[frxUserDataSet1.RecNo];
  if CompareText(VarName, 'z_coast') = 0 then
    Value := SG_ZAP_list_2[frxUserDataSet1.RecNo];

   if CompareText(VarName, 'tmc_name') = 0 then
    Value := SG_TMC_list_1[frxUserDataSet1.RecNo];
  if CompareText(VarName, 'tmc_coast') = 0 then
    Value := SG_TMC_list_2[frxUserDataSet1.RecNo];

  if CompareText(VarName, 'tmc_name_sklad') = 0 then
    Value := SG_TMC_SKLAD_list_1[frxUserDataSet1.RecNo];
  if CompareText(VarName, 'tmc_coast_sklad') = 0 then
    Value := SG_TMC_SKLAD_list_2[frxUserDataSet1.RecNo];

            for i := 1 to 19 do
                       begin
                  t := TfrxMemoView(frxReport1.FindObject('Mem'+IntToStr(i)));
                  if frxUserDataSet1.RecNo=max_list-1 then begin
                               if i<19 then
                                 t.Frame.Typ:=[ftLeft,ftBottom]
                               else
                                  t.Frame.Typ:=[ftLeft, ftRight,ftBottom];
                  end
                               else
                               begin
                               if i<19 then
                                 t.Frame.Typ:=[ftLeft]
                               else
                                  t.Frame.Typ:=[ftLeft, ftRight];
                               end;
                       end;


end;//6
7:begin
if VarName = 'rrr' then
begin
str:=dm.StoredProc_shin.Fields[1].AsString;
Value:=str;
end;
if VarName = 'sernum' then
begin
str:=dm.StoredProc_shin.Fields[2].AsString;
Value:=str;
end;
if VarName = 'date1' then
begin
str:=dm.StoredProc_shin.Fields[4].AsString;
Value:=str;
end;
end;//7
8:begin
if VarName = 'type' then
begin
str:=trim(dm.StoredProc_akb.Fields[0].AsString);
Value:=str;
end;
if VarName = 'model' then
begin
str:=trim(dm.StoredProc_akb.Fields[1].AsString);
Value:=str;
end;
if VarName = 'year' then
begin
str:=trim(dm.StoredProc_akb.Fields[2].AsString);
Value:=str;
end;
if VarName = 'num' then
begin
str:=trim(dm.StoredProc_akb.Fields[3].AsString);
Value:=str;
end;
if VarName = 'date1' then
begin
str:=trim(dm.StoredProc_akb.Fields[4].AsString);
Value:=str;
end;
if VarName = 'date2' then
begin
str:=trim(dm.StoredProc_akb.Fields[5].AsString);
Value:=str;
end;
if VarName = 'avt' then
begin
str:=Tfrmavtocard(ActiveMDIChild).Mark_box.Text+' '+
Tfrmavtocard(ActiveMDIChild).Model_edit.Text;
Value:=str;
end;
if VarName = 'inv' then
begin
str:=Tfrmavtocard(ActiveMDIChild).inv_t_edit.Text;
Value:=str;
end;
end;//8
9:begin
if VarName='avto1' then
Value:=Tfrmavtocard(ActiveMDIChild).Mark_box.Text
+' - '+Tfrmavtocard(ActiveMDIChild).Model_edit.Text
+' � '+Tfrmavtocard(ActiveMDIChild).Numb1_edit.Text;

if VarName='reg' then Value:=Tfrmavtocard(ActiveMDIChild).Reg_box.Text;
if VarName='div' then Value:=Tfrmavtocard(ActiveMDIChild).Div_box.Text;
if VarName='depart' then Value:=Tfrmavtocard(ActiveMDIChild).Depart_box.Text;
if VarName='predepart' then Value:=Tfrmavtocard(ActiveMDIChild).PreDepart_box.Text;
if VarName='serv' then Value:=Tfrmavtocard(ActiveMDIChild).Serv_box.Text;
if VarName='preserv' then Value:=Tfrmavtocard(ActiveMDIChild).PreServ_Box.Text;
if VarName='dislok' then Value:=Tfrmavtocard(ActiveMDIChild).Dislok_box.Text;

if VarName='mark' then Value:=Tfrmavtocard(ActiveMDIChild).Mark_box.Text;
if VarName='model' then Value:=Tfrmavtocard(ActiveMDIChild).Model_edit.Text;
if VarName='num1' then Value:=Tfrmavtocard(ActiveMDIChild).Numb1_edit.Text;
if VarName='num2' then Value:=Tfrmavtocard(ActiveMDIChild).Numb2_edit.Text;
if VarName='year' then Value:=Tfrmavtocard(ActiveMDIChild).Year_edit.Text;
if VarName='color' then Value:=Tfrmavtocard(ActiveMDIChild).Color_edit.Text;
if VarName='vin' then Value:=Tfrmavtocard(ActiveMDIChild).VIN_edit.Text;
if VarName='eng' then Value:=Tfrmavtocard(ActiveMDIChild).NEng_edit.Text;
if VarName='body' then Value:=Tfrmavtocard(ActiveMDIChild).NBody_edit.Text;
if VarName='shas' then Value:=Tfrmavtocard(ActiveMDIChild).NShas_edit.Text;

if VarName='oldnum' then Value:=Tfrmavtocard(ActiveMDIChild).ElDBEdit4.Text;
if VarName='power' then Value:=Tfrmavtocard(ActiveMDIChild).DBEdit_power_l.Text+' �.�./'+Tfrmavtocard(ActiveMDIChild).DBEdit_power_k.Text+' ���';
if VarName='tech_p' then Value:=Tfrmavtocard(ActiveMDIChild).NPts_edit.Text;
if VarName='date1' then Value:=Tfrmavtocard(ActiveMDIChild).date_texpasport.Text;
if VarName='kuz' then Value:=Tfrmavtocard(ActiveMDIChild).TypeBody_box.Text;
if VarName='tech' then Value:=Tfrmavtocard(ActiveMDIChild).Tech_box.Text;
if VarName='expl' then Value:=Tfrmavtocard(ActiveMDIChild).Group_box.Text;
if VarName='uch' then Value:=Tfrmavtocard(ActiveMDIChild).InAc_edit.Text;
if VarName='prik' then Value:=Tfrmavtocard(ActiveMDIChild).in_pr.Text;
if VarName='otstoi' then
begin
if Tfrmavtocard(ActiveMDIChild).state_box.Checked then
str:='������ �� '+Tfrmavtocard(ActiveMDIChild).date_state.Text;
if Tfrmavtocard(ActiveMDIChild).out_account_box.Checked then
str:='������ � ����� �� '+Tfrmavtocard(ActiveMDIChild).date_out_account.Text;
if Tfrmavtocard(ActiveMDIChild).life_box.Checked then
str:='������ �� '+Tfrmavtocard(ActiveMDIChild).date_life.Text;
Value:=str;
end;
if VarName='source1' then Value:=Tfrmavtocard(ActiveMDIChild).Source_b_box.Text;
if VarName='source2' then Value:=Tfrmavtocard(ActiveMDIChild).Source_f_box.Text;
if VarName='inv1' then Value:=Tfrmavtocard(ActiveMDIChild).inv_b_edit.Text;
if VarName='inv2' then Value:=Tfrmavtocard(ActiveMDIChild).inv_t_edit.Text;
if VarName='place1' then Value:=Tfrmavtocard(ActiveMDIChild).ElDBEdit1.Text;
if VarName='place2' then Value:=Tfrmavtocard(ActiveMDIChild).ElDBEdit2.Text;
if VarName='place3' then Value:=Tfrmavtocard(ActiveMDIChild).DBDateEdit1.Text;
if VarName='insur1' then Value:=Tfrmavtocard(ActiveMDIChild).Insur_edit.Text+' �� '+Tfrmavtocard(ActiveMDIChild).date_insur.Text;
if VarName='insur2' then Value:=Tfrmavtocard(ActiveMDIChild).RxDBLookupCombo2.Text;
if VarName='radio' then Value:=Tfrmavtocard(ActiveMDIChild).Radio_memo.Text;
if VarName='sgu' then Value:=Tfrmavtocard(ActiveMDIChild).ElDBEdit3.Text;
if VarName='comm' then Value:=Tfrmavtocard(ActiveMDIChild).Comm_memo.Text;

if VarName='notatx' then
begin
  if Tfrmavtocard(ActiveMDIChild).DBCheckBox1.Checked then
    Value:='�� ���� ���'
  else
    Value:='';
end;
end;//9
91:begin     {��� �����������}
if VarName='type_model' then
Value:=Tfrmavtocard(ActiveMDIChild).Mark_box.Text
+' - '+Tfrmavtocard(ActiveMDIChild).Model_edit.Text;


if VarName='vin' then Value:=Tfrmavtocard(ActiveMDIChild).VIN_edit.Text;
if VarName='inv_number' then Value:=Tfrmavtocard(ActiveMDIChild).inv_b_edit.Text;
if VarName='num1' then
Value:=Tfrmavtocard(ActiveMDIChild).Numb1_edit.Text;


if VarName='year' then Value:=Tfrmavtocard(ActiveMDIChild).Year_edit.Text;
if VarName='pts' then Value:=Tfrmavtocard(ActiveMDIChild).NPts_edit.Text+' �� '+Tfrmavtocard(ActiveMDIChild).date_texpasport.Text;

if VarName='engine' then Value:=Tfrmavtocard(ActiveMDIChild).NEng_edit.Text;
if VarName='body' then Value:=Tfrmavtocard(ActiveMDIChild).NBody_edit.Text;
if VarName='schass' then Value:=Tfrmavtocard(ActiveMDIChild).NShas_edit.Text;


if VarName='osago' then Value:=Tfrmavtocard(ActiveMDIChild).Insur_edit.Text+' �� '+Tfrmavtocard(ActiveMDIChild).date_insur.Text;






end;//91
10:begin

if VarName='title_rep' then
if (Trim(frmreport.d1R.Text)<>'.  .') and (Trim(frmreport.d1R.Text)<>'.  .') then
 Value:='����� �� ������� �������������� � '+frmreport.d1R.Text+' �� '+frmreport.d2R.Text
else
Value:='����� �� ������� �������������� �� '+DateToStr(Now());
first_fr:=true;
for n_i:=1 to 26 do
begin
    Ch:= TCheckBox(frmreport.FindComponent('CheckBoxI'+IntToStr(n_i)));
    t := TfrxMemoView(frxReport1.FindObject('mm'+IntToStr(n_i-0)));
    if t <> nil then
        if not Ch.Checked then
          t.Visible:=false else begin
          if not first_fr then
          begin
            t_Old := TfrxMemoView(frxReport1.FindObject('mmm'+IntToStr(i_Old-0)));
            t.Left:=t_Old.Width+t_Old.Left;
          end else begin
            t.Left:=0;
            end;
            end;
    t := TfrxMemoView(frxReport1.FindObject('mmm'+IntToStr(n_i-0)));
   if t <> nil then
        if not Ch.Checked then
          t.Visible:=false else begin
          if not first_fr then
          begin
            t_Old := TfrxMemoView(frxReport1.FindObject('mmm'+IntToStr(i_Old-0)));
            t.Left:=t_Old.Width+t_Old.Left;
            i_Old:=n_i;
          end else begin
            t.Left:=0;
            i_Old:=n_i;
            end;
   first_fr:=false;
   end;
end;
end;//10
101:begin
if VarName='libr_name' then
 Value:='���������� �� ����������';
end;
102:begin
if VarName='libr_name' then
 Value:='���������� �� �����������';
end;
103:begin
if VarName='libr_name' then
 Value:='���������� �� �������';
end;
104:begin
if VarName='libr_name' then
 Value:='���������� �� ���-�������';
end;
105:begin
if VarName='libr_name' then
 Value:='���������� �� �������';
end;
106:begin
if VarName='libr_name' then
 Value:='���������� �� ����� ��������������';
end;
107:begin
if VarName='libr_name' then
 Value:='���������� �� ��������� ��������������';
end;
108:begin
if VarName='libr_name' then
 Value:='���������� �� ���� ������';
end;
109:begin
if VarName='libr_name' then
 Value:='���������� �� ���. ���������';
end;
110:begin
if VarName='libr_name' then
 Value:='���������� �� ������ ������������';
end;
111:begin
if VarName='libr_name' then
 Value:='���������� �� ����� ����������';
end;
112:begin
if VarName='libr_name' then
 Value:='���������� �� ����� ���';
end;
113:begin
if VarName='libr_name' then
 Value:='���������� �� ���� �������';
end;
114:begin
if VarName='libr_name' then
 Value:='���������� �� ����� �������';
end;
115:begin
if VarName='libr_name' then
 Value:='���������� �� ��������� ���������';
end;
116:begin
if VarName='libr_name' then
 Value:='���������� �� '+dm.tMark_avt.Fields[1].AsString;
end;

117:begin
if VarName='libr_name' then
 Value:='���������� �� ���������� ��';
end;
118:begin
if VarName='libr_name' then
 Value:='���������� �� ��� �������';
end;

15:begin
if VarName = 'title_z' then
begin
str:=frmZayvka.NumEdit.Text;
Value:='��������� ���� �'+str;
end;

if VarName = 'organisation' then
Value:=frmZayvka.PlaceCombo2.Text;
if VarName = 'datez' then
Value:=frmZayvka.DateZayvka.Text;
if VarName = 'fio' then
Value:=frmZayvka.FIOEdit.Text;
if VarName = 'speed' then
Value:=frmZayvka.RxCalcSpeed.Text;

if VarName = 'ovd' then
Value:=dm.SP_Report.Fields[3].AsString;
if VarName = 'expl' then
Value:=dm.SP_Report.Fields[6].AsString;
if VarName = 'mark' then
Value:=dm.SP_Report.Fields[7].AsString+' '+dm.SP_Report.Fields[8].AsString;
if VarName = 'year' then
Value:=dm.SP_Report.Fields[9].AsString;
if VarName = 'num' then
Value:=dm.SP_Report.Fields[10].AsString;


if VarName = 'energ' then
Value:=dm.SP_Report.Fields[11].AsString;
if VarName = 'body' then
Value:=dm.SP_Report.Fields[12].AsString;
if VarName = 'shasi' then
Value:=dm.SP_Report.Fields[13].AsString;
if VarName = 'vin' then
Value:=dm.SP_Report.Fields[14].AsString;
if VarName = 'inventar' then
Value:=dm.SP_Report.Fields[15].AsString+' '+dm.SP_Report.Fields[16].AsString;
if VarName = 'color' then
Value:=dm.SP_Report.Fields[17].AsString;

 if VarName = 'vidto' then
Value:=frmZayvka.VidCombo1.Text;
if VarName = 'graf' then
Value:=frmZayvka.ComboBoxGraf.Text;

if VarName = 'listto' then
begin
str:='';
for i:=0 to frmZayvka.SG_NEISP.RowCount-1 do
str:=str+frmZayvka.SG_NEISP.Cells[0,i]+#13;
Value:=str;
end;

 //dm.SP_Report.Close;
end;//15
end;




end;

end.

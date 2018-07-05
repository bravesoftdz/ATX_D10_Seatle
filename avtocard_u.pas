unit avtocard_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText, StdCtrls, Mask, ExtCtrls,
  DBCtrls, Grids, DBGrids,
  RxLookup,
  LbSpeedButton, DB, ADODB,  RXDBCtrl,
  LbButton, ADOInt,  ComCtrls,
  ToolWin,  RXSpin, rxCurrEdit, rxToolEdit, Menus, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tfrmavtocard = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    LbB_New: TLbButton;
    LbB_First: TLbButton;
    LbB_Cancel: TLbButton;
    LbB_Prior: TLbButton;
    LbB_Post: TLbButton;
    LbB_Next: TLbButton;
    LbB_Del: TLbButton;
    LbB_Last: TLbButton;
    GroupBox4: TGroupBox;
    LbB_Find: TLbButton;
    find_numb_edit: TEdit;
    RecN: TLabel;
    Label27: TLabel;
    RecCount: TLabel;
    Label26: TLabel;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    TypeBody_box: TDBLookupComboBox;
    Tech_box: TDBLookupComboBox;
    Group_box: TDBLookupComboBox;
    in_pr: TDBEdit;
    InAc_edit: TDBDateEdit;
    date_texpasport: TDBDateEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Mark_box: TDBLookupComboBox;
    GroupBox7: TGroupBox;
    Label23: TLabel;
    Label21: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label31: TLabel;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    DBGrid: TDBGrid;
    GosNumb_edit: TLabeledEdit;
    Label47: TLabel;
    DateEdit1: TDateEdit;
    EnterGosNumb: TLbButton;
    GroupBox10: TGroupBox;
    Label46: TLabel;
    from_edit: TLabeledEdit;
    DateEdit2: TDateEdit;
    EnterPeredacha: TLbButton;
    GroupBox11: TGroupBox;
    DBGrid1: TDBGrid;
    to_edit: TLabeledEdit;
    Nprok_edit: TLabeledEdit;
    DBGrid_Akb: TDBGrid;
    LbButton1: TLbButton;
    LbButton2: TLbButton;
    LbButton3: TLbButton;
    LbButton4: TLbButton;
    Panel_Add_Akb: TPanel;
    LbButton5: TLbButton;
    LbButton6: TLbButton;
    LbButton7: TLbButton;
    type_akb_edit: TLabeledEdit;
    model_akb_edit: TLabeledEdit;
    year_akb_edit: TLabeledEdit;
    prod_num_akd_edit: TLabeledEdit;
    DateEdit3: TDateEdit;
    Label50: TLabel;
    Label51: TLabel;
    DateEdit4: TDateEdit;
    Panel_spisan: TPanel;
    Label53: TLabel;
    LbButton8: TLbButton;
    LbButton9: TLbButton;
    DateEdit6: TDateEdit;
    DBGrid_Shin: TDBGrid;
    Panel_Shin: TPanel;
    LbButton10: TLbButton;
    LbButton11: TLbButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Panel_Shin_Spisan: TPanel;
    Label55: TLabel;
    LbButton12: TLbButton;
    LbButton13: TLbButton;
    DateEdit8: TDateEdit;
    LbButton14: TLbButton;
    LbButton15: TLbButton;
    LbButton16: TLbButton;
    LbButton17: TLbButton;
    LbButton18: TLbButton;
    Label54: TLabel;
    Label52: TLabel;
    DateEdit5: TDateEdit;
    DateEdit7: TDateEdit;
    Label56: TLabel;
    Panel_Probeg: TPanel;
    DBGrid_Probeg: TDBGrid;
    Panel3: TPanel;
    LbButton19: TLbButton;
    RxCalcEdit1: TRxCalcEdit;
    ComboBox_kv: TComboBox;
    ComboBox2: TComboBox;
    Label57: TLabel;
    Label58: TLabel;
    Panel4: TPanel;
    LbButton_DelProbeg: TLbButton;
    LbButton20: TLbButton;
    year_edit_probeg: TRxSpinEdit;
    Label59: TLabel;
    StringGrid1: TStringGrid;
    LbButton21: TLbButton;
    GroupBox14: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TDBLookupComboBox;
    date_insur: TDBDateEdit;
    Label22: TLabel;
    Label35: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label36: TLabel;
    Reg_box: TDBLookupComboBox;
    Div_box: TDBLookupComboBox;
    Depart_box: TDBLookupComboBox;
    PreDepart_box: TDBLookupComboBox;
    Serv_box: TDBLookupComboBox;
    Dislok_box: TDBLookupComboBox;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    GroupBox5: TGroupBox;
    Label38: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    RxDBLookupCombo2: TDBLookupComboBox;
    LbButton23: TLbButton;
    LbButton22: TLbButton;
    CheckBox1: TCheckBox;
    LbButton24: TLbButton;
    GroupBox12: TGroupBox;
    Label17: TLabel;
    Source_b_box: TDBLookupComboBox;
    Label18: TLabel;
    Source_f_box: TDBLookupComboBox;
    RxDBLookupList1: TDBLookupComboBox;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit2: TDBEdit;
    TypeTc_box: TDBLookupComboBox;
    Label64: TLabel;
    Label65: TLabel;
    arend_d1: TDBDateEdit;
    arend_d2: TDBDateEdit;
    Label66: TLabel;
    Label67: TLabel;
    PreServ_Box: TDBLookupComboBox;
    Label69: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Model_edit: TComboBox;
    Numb1_edit: TDBEdit;
    Numb2_edit: TDBEdit;
    Year_edit: TDBEdit;
    Color_edit: TDBEdit;
    VIN_edit: TDBEdit;
    NEng_edit: TDBEdit;
    NBody_edit: TDBEdit;
    NShas_edit: TDBEdit;
    ElDBEdit4: TDBEdit;
    NPts_edit: TDBEdit;
    inv_b_edit: TDBEdit;
    inv_t_edit: TDBEdit;
    ElDBEdit1: TDBEdit;
    ElDBEdit2: TDBEdit;
    Insur_edit: TDBEdit;
    ElDBEdit3: TDBEdit;
    Radio_memo: TDBMemo;
    Comm_memo: TDBMemo;
    Shina_R_Box: TDBLookupComboBox;
    Shina_K_Box: TDBLookupComboBox;
    Shina_T_Box: TDBLookupComboBox;
    Label70: TLabel;
    Label71: TLabel;
    ToolButton5: TToolButton;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    state_box: TDBCheckBox;
    Label28: TLabel;
    date_state: TDBDateEdit;
    Label29: TLabel;
    pr_state: TDBEdit;
    TabSheet9: TTabSheet;
    out_account_box: TDBCheckBox;
    Label30: TLabel;
    date_out_account: TDBDateEdit;
    Label72: TLabel;
    RxDBLookupOutState: TDBLookupComboBox;
    life_box: TDBCheckBox;
    Label32: TLabel;
    date_life: TDBDateEdit;
    Label33: TLabel;
    pr_life: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label68: TLabel;
    expl_year: TDBEdit;
    Label73: TLabel;
    modelDVC_Edit: TDBEdit;
    Label74: TLabel;
    Label75: TLabel;
    volumeDVC_Edit: TDBEdit;
    TypeDVC_box: TDBLookupComboBox;
    Label76: TLabel;
    RxDBLookupCombo3: TDBLookupComboBox;
    Label77: TLabel;
    TabSheet10: TTabSheet;
    DBGrid_Dtp: TDBGrid;
    LbButtonAdd_dtp: TLbButton;
    LbButtonEdit_dtp: TLbButton;
    LbButtonDel_dtp: TLbButton;
    Panel_Add_Dtp: TPanel;
    Label78: TLabel;
    LbButtonDtp_Save: TLbButton;
    LbButton26: TLbButton;
    LabeledEdit_injured_dtp: TLabeledEdit;
    LabeledEditDriver_dtp: TLabeledEdit;
    DateEdit_dtp: TDateEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    placeMemo_dtp: TMemo;
    noteMemo_dtp: TMemo;
    CheckBox_guilty_dtp: TCheckBox;
    LabeledEdit_wounded_dtp: TLabeledEdit;
    LabeledEdit_killed_dtp: TLabeledEdit;
    MainMenu1: TMainMenu;
    RxDBLookupCombo_place_cto: TDBLookupComboBox;
    Label82: TLabel;
    CurrencyEdit_Amount_dtp: TCurrencyEdit;
    Panel_DTP: TPanel;
    Panel_ShineList: TPanel;
    Panel_AkbList: TPanel;
    LabelCountShinAdd: TLabel;
    EditCountShinAdd: TEdit;
    LbButton25: TLbButton;
    LbButtonExport: TLbButton;
    DBEdit_power_l: TDBEdit;
    DBEdit_power_k: TDBEdit;
    Label83: TLabel;
    Label84: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure bclClick(Sender: TObject);
    procedure bmaxClick(Sender: TObject);
    procedure bminClick(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LbB_FirstClick(Sender: TObject);
    procedure LbB_PriorClick(Sender: TObject);
    procedure LbB_NextClick(Sender: TObject);
    procedure LbB_LastClick(Sender: TObject);
    procedure LbB_NewClick(Sender: TObject);
    procedure LbB_CancelClick(Sender: TObject);
    procedure LbB_PostClick(Sender: TObject);
    procedure LbB_DelClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure LbB_FindClick(Sender: TObject);
    procedure state_boxClick(Sender: TObject);
    procedure out_account_boxClick(Sender: TObject);
    procedure life_boxClick(Sender: TObject);
    procedure LbB_ExplClick(Sender: TObject);
    procedure LbB_Expl_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure find_numb_editKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Model_edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Mark_boxChange(Sender: TObject);
    procedure Model_edit1Change(Sender: TObject);
    procedure EnterGosNumbClick(Sender: TObject);
    procedure ElTabSheet5Show(Sender: TObject);
    procedure EnterPeredachaClick(Sender: TObject);
    procedure ElTabSheet6Show(Sender: TObject);
    procedure Numb1_editKeyPress(Sender: TObject; var Key: Char);
    procedure CoolItemAddRemontClick(Sender: TObject);
    procedure CoolItemListRemontClick(Sender: TObject);
    procedure ElPageControl1Change(Sender: TObject);
    procedure DBGrid_AkbDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LbButton1Click(Sender: TObject);
    procedure LbButton6Click(Sender: TObject);
    procedure LbButton7Click(Sender: TObject);
    procedure year_akb_editKeyPress(Sender: TObject; var Key: Char);
    procedure LbButton5Click(Sender: TObject);
    procedure type_akb_editChange(Sender: TObject);
    procedure LbButton9Click(Sender: TObject);
    procedure LbButton3Click(Sender: TObject);
    procedure DateEdit6Change(Sender: TObject);
    procedure LbButton8Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LbButton4Click(Sender: TObject);
    procedure LbButton2Click(Sender: TObject);
    procedure LbButton14Click(Sender: TObject);
    procedure LbButton15Click(Sender: TObject);
    procedure LbButton11Click(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure LbButton10Click(Sender: TObject);
    procedure LbButton16Click(Sender: TObject);
    procedure LbButton13Click(Sender: TObject);
    procedure DateEdit8Change(Sender: TObject);
    procedure LbButton12Click(Sender: TObject);
    procedure DBGrid_ShinDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LbButton18Click(Sender: TObject);
    procedure LbButton17Click(Sender: TObject);
    procedure LbButton20Click(Sender: TObject);
    procedure DBGrid_ShinDblClick(Sender: TObject);
    procedure DBGrid_ProbegDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ComboBox2Change(Sender: TObject);
    procedure year_edit_probeg1Change(Sender: TObject);
    procedure LbButton19Click(Sender: TObject);
    procedure LbButton_DelProbegClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure LbButton21Click(Sender: TObject);
    procedure Numb1_editEnter(Sender: TObject);
    procedure LbButton22Click(Sender: TObject);
    procedure LbButton23Click(Sender: TObject);
    procedure LbButton24Click(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure DBGrid_ProbegColExit(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure PageControl2DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure LbButtonDel_dtpClick(Sender: TObject);
    procedure LbButtonEdit_dtpClick(Sender: TObject);
    procedure LbButtonAdd_dtpClick(Sender: TObject);
    procedure DBGrid_DtpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LbButton26Click(Sender: TObject);
    procedure DateEdit_dtpChange(Sender: TObject);
    procedure CheckBox_guilty_dtpClick(Sender: TObject);
    procedure LbButtonDtp_SaveClick(Sender: TObject);
    procedure LbButton25Click(Sender: TObject);
    procedure LbButtonExportClick(Sender: TObject);
  private
    id_search,id_dtp:integer;
    old_number:String;
    ChangeNumber:boolean;
    save_number:byte;
    edit_akb,edit_shin,edit_dtp:boolean;
    procedure ExchangeFormNumb;
    procedure PeredachaFormNumb;
    procedure ListAkb;
    procedure ListShin;
    procedure ListDtp;
    procedure ListShinProbeg(id,id_avt:Integer;Year:String);
    { Private declarations }
//    function Mask(year,numb_1,numb_2,vin,Neng,Nbody,Nshas,NPts:String):byte;
function Mask(str:String;idx:byte):boolean;
function IsRussianLetter(ACh: Char): Boolean;
  public
    procedure openProc;
    procedure AvtoBeforeEdit;//(DataSet: TDataSet);
    procedure AvtoBeforePost(DataSet: TDataSet);
    procedure AvtoAfterScroll(DataSet: TDataSet);
    procedure AvtoAfterPost(DataSet: TDataSet);
    procedure AvtoAfterDelete(DataSet: TDataSet);
    procedure ChangeAvtAkb(id_avt:integer);
    procedure ChangeAvtShin(id_avt:integer);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmavtocard: Tfrmavtocard;

implementation

uses dm_u, main_u, shtat_e_u, loaddata_u, remont_u, search_u;

{$R *.dfm}
procedure Tfrmavtocard.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  //Params.Style := Params.Style and (not WS_CAPTION);
end;

procedure Tfrmavtocard.openProc;
begin
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
LbB_Del.Enabled:=false;
if Main.UserRole=ADMIN_USER then
LbB_Del.Visible:=true else
LbB_Del.Visible:=false;
Application.ProcessMessages;
    RecCount.Caption:=IntToStr(dm.tAvto.RecordCount);
    if dm.tAvto.RecordCount=0 then
    begin
    Main.ATXShowMessage('� ������ ������������� ��� �������!');
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox4.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    GroupBox8.Enabled:=false;
    GroupBox9.Enabled:=false;
    GroupBox10.Enabled:=false;
    GroupBox11.Enabled:=false;
    GroupBox14.Enabled:=false;
    CoolBar2.Enabled:=false;
    end
    else
    begin
//LbB_First.Enabled:=true;
//LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
end;
     //ShowMessage(Inttostr(Main.UserRole));
case Main.UserRole of
ADMIN_USER:begin
LbB_Del.Enabled:=true;
LbButtonExport.Visible:=true;
end;
SHTAT_USER,USER_USER,DISPETCHER_USER:begin
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    GroupBox7.Enabled:=false;
    GroupBox8.Enabled:=false;
    GroupBox9.Enabled:=false;
    GroupBox10.Enabled:=false;
    GroupBox11.Enabled:=false;
    GroupBox14.Enabled:=false;
    LbB_New.Enabled:=false;
    ToolButton2.Enabled:=false;
    ToolButton4.Enabled:=false;

    LbButton1.Enabled:=false;
    LbButton2.Enabled:=false;
    LbButton3.Enabled:=false;
    LbButton4.Enabled:=false;
    LbButton7.Enabled:=false;
    LbButton14.Enabled:=false;
    LbButton15.Enabled:=false;
    LbButton16.Enabled:=false;
    LbButton17.Enabled:=false;
    LbButton18.Enabled:=false;

    LbButtonAdd_dtp.Enabled:=false;
    //LbButtonEdit_dtp.Enabled:=false;
    LbButtonDel_dtp.Enabled:=false;

end;
REMONT_USER:begin
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    GroupBox7.Enabled:=false;
    GroupBox8.Enabled:=false;
    GroupBox9.Enabled:=false;
    GroupBox10.Enabled:=false;
    GroupBox11.Enabled:=false;
    GroupBox14.Enabled:=false;
    LbB_New.Enabled:=false;
    ToolButton2.Enabled:=false;
    ToolButton4.Enabled:=true;
end;
GSM_USER:begin
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    GroupBox7.Enabled:=false;
    GroupBox8.Enabled:=false;
    GroupBox9.Enabled:=false;
    GroupBox10.Enabled:=false;
    GroupBox11.Enabled:=false;
    GroupBox14.Enabled:=true;
    LbB_New.Enabled:=false;
    ToolButton2.Enabled:=false;
    ToolButton4.Enabled:=false;
        LbButtonAdd_dtp.Enabled:=false;
    LbButtonEdit_dtp.Enabled:=false;
    LbButtonDel_dtp.Enabled:=false;
end;

INSURE_USER:begin
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    //GroupBox7.Enabled:=false;
    GroupBox8.Enabled:=false;
    GroupBox9.Enabled:=false;
    GroupBox10.Enabled:=false;
    GroupBox11.Enabled:=false;
    GroupBox14.Enabled:=false;
    LbB_New.Enabled:=false;
    ToolButton2.Enabled:=false;
    ToolButton4.Enabled:=false;
    Insur_edit.Enabled:=true;
    date_insur.Enabled:=true;
    RxDBLookupCombo2.Enabled:=true;
    inv_b_edit.Enabled:=false;
    inv_t_edit.Enabled:=false;
    ElDBEdit1.Enabled:=false;
    ElDBEdit2.Enabled:=false;
    DBDateEdit1.Enabled:=false;
    arend_d1.Enabled:=false;
    arend_d2.Enabled:=false;
    Radio_memo.Enabled:=false;
    ElDBEdit3.Enabled:=false;
    Comm_memo.Enabled:=false;

    LbButton1.Enabled:=false;
    LbButton2.Enabled:=false;
    LbButton3.Enabled:=false;
    LbButton4.Enabled:=false;
    LbButton7.Enabled:=false;
    LbButton14.Enabled:=false;
    LbButton15.Enabled:=false;
    LbButton16.Enabled:=false;
    LbButton17.Enabled:=false;
    LbButton18.Enabled:=false;

        LbButtonAdd_dtp.Enabled:=false;
    LbButtonEdit_dtp.Enabled:=false;
    LbButtonDel_dtp.Enabled:=false;

end;
EXPORT_TC:begin
  LbButtonExport.Visible:=true;
  LbB_New.Enabled:=false;
      GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox5.Enabled:=false;
    GroupBox7.Enabled:=false;
    GroupBox14.Enabled:=false;
    GroupBox8.Enabled:=false;
    GroupBox10.Enabled:=false;
    ToolButton2.Enabled:=false;
    ToolButton4.Enabled:=false;

    LbButton1.Enabled:=false;
    LbButton2.Enabled:=false;
    LbButton3.Enabled:=false;
    LbButton4.Enabled:=false;
    LbButton7.Enabled:=false;
    LbButton14.Enabled:=false;
    LbButton15.Enabled:=false;
    LbButton16.Enabled:=false;
    LbButton17.Enabled:=false;
    LbButton18.Enabled:=false;

    LbButtonAdd_dtp.Enabled:=false;
    //LbButtonEdit_dtp.Enabled:=false;
    LbButtonDel_dtp.Enabled:=false;
end;

end;//case
old_number:=dm.tAvto.Fields[8].AsString;
Application.ProcessMessages;
end;

procedure Tfrmavtocard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with dm do
begin
    tMark_avt.Close;
    tTypeTC.Close;
    tRegion.Close;
    tDivision.Close;
    tDepart.Close;
    tPre_Depart.Close;
    tServices.Close;
    tSource_fin.Close;
    tType_body.Close;
    tTech.Close;
    tGroup_used.Close;
    tAvto.Close;
    tDislokation.Close;
    tInsureCompany.Close;
    dm.tMarkGSM.Close;
    dm.tBaseNormGsm.Close;
    dm.tPreServ.Close;
    dm.tOut_state.Close;
    dm.tTypeDVC.Close;
    dm.tManufactureTC.Close;
    tPlaceRemont.Close;
end;
Action:=caFree;
if frmShtatEdit<>nil then frmShtatEdit.Show;
end;

procedure Tfrmavtocard.FormResize(Sender: TObject);
begin
//Width:=824;
//Height:=657;

end;

procedure Tfrmavtocard.bclClick(Sender: TObject);
begin
Close;
end;

procedure Tfrmavtocard.bmaxClick(Sender: TObject);
begin
Main.MaxAvtoCard;
end;

procedure Tfrmavtocard.bminClick(Sender: TObject);
begin
Main.MinAvtoCard;
end;

procedure Tfrmavtocard.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure Tfrmavtocard.AvtoBeforePost(DataSet: TDataSet);
begin
//��������� ����
if
    (Reg_box.Text='') or
    (Div_box.Text='') or
    (Depart_box.Text='') or
//    (PreDepart_box.Text='') or
    (Serv_box.Text='') or
    (Mark_box.Text='') or
    (Model_edit.Text='') or
    (Numb1_edit.Text='') or
//    (Numb2_edit.Text='') or
    (Year_edit.Text='') or
    (NBody_edit.Text='') or
    (NEng_edit.Text='') or
    (VIN_edit.Text='') or
    (Color_edit.Text='') or
//    (NShas_edit.Text='') or
    (Source_b_box.Text='') or
    (NPts_edit.Text='') or
    (Source_f_box.Text='') or
    (TypeBody_box.Text='') or
    (Tech_box.Text='') or
//    (date_texpasport.Date=0) or
//    (Group_box.Text='') or
//    (Radio_memo.Text='') or
//    (Place_memo.Text='') or
//    (Comm_memo.Text='') or
    (InAc_edit.Date=0) or
((state_box.Checked) and (date_state.Date=0)) or
((out_account_box.Checked) and (date_out_account.Date=0)) or
((life_box.Checked) and (date_life.Date=0))

    then
  begin
if  (Reg_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ��������/�������') else
if    (Div_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ����������') else
if    (Depart_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �����') else
//if    (PreDepart_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ���-�����') else
if    (Serv_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ������') else
if    (Mark_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �����') else
if    (Model_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: �����') else
if    (Numb1_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� � (1)') else
//if    (Numb2_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� � (2)') else
if    (Year_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� �������') else
if    (Color_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ����') else
if    (VIN_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: VIN') else
if    (NEng_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: � ���������') else
if    (NBody_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: � ������') else
//if    (NShas_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: � �����') else
if    (NPts_edit.Text='') then Main.ATXShowMessage('�� ��������� ����: ���������� �') else
//if    (date_texpasport.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ������ �����������') else
if    (Source_b_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �������� ������������') else
if    (Source_f_box.Text='') then Main.ATXShowMessage('�� ��������� ����: �������� ����������') else
if    (TypeBody_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ��� ������') else
if    (Tech_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ���. ���������') else
//if    (Group_box.Text='') then Main.ATXShowMessage('�� ��������� ����: ������ ������������') else
//if    (Radio_memo.Text='') then Main.ATXShowMessage('�� ��������� ����: ') else
//if    (Place_memo.Text='') then Main.ATXShowMessage('�� ��������� ����: ') else
//if    (Comm_memo.Text='') then  Main.ATXShowMessage('�� ��������� ����: ') else
if    (InAc_edit.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ���������� �� ����') else

if    (state_box.Checked) and (date_state.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ���������� � ������') else
if    (out_account_box.Checked) and (date_out_account.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ������ � �����') else
if    (life_box.Checked) and (date_life.Date=0) then Main.ATXShowMessage('�� ��������� ����: ���� ��������');
  Abort;
  end else
  begin
      //��������� ����� �����
      if not Mask(Year_edit.Text,1) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� ��� �������!');
      Abort;
      end;
      if not Mask(Numb1_edit.Text,2) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� ��� � (1)!');
      Abort;
      end;
      if Numb2_edit.Text<>'' then
      if not Mask(Numb2_edit.Text,3) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� ��� � (2)!');
      Abort;
      end;
      if not Mask(VIN_edit.Text,4) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� VIN!');
      Abort;
      end;
      if not Mask(NEng_edit.Text,5) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � ���������!');
      Abort;
      end;
      if not Mask(NBody_edit.Text,6) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � ������!');
      Abort;
      end;
      if not Mask(NPts_edit.Text,8) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � �����������!');
      Abort;
      end;
{      if not Mask(NShas_edit.Text,7) then
      begin
      Main.ATXShowMessage('�� ��������� ��������� � �����!');
      Abort;
      end;
}
  end;
  if(save_number=1) then
  begin
     if(ChangeNumber) then
     begin
        dm.ExchangeNumbr(dm.tAvto.Fields[0].AsInteger,DateToStr(Now()),old_number,Numb1_edit.Text);
        ExchangeFormNumb;
        ChangeNumber:=false;
     end;
  end;
end;
function Tfrmavtocard.IsRussianLetter(ACh: Char): Boolean;
begin
  Result := (ACh >= '�') and (ACh <= '�') or
            (ACh >= '�') and (ACh <= '�') or
            (ACh = '�') or (ACh = '�');
end;
function Tfrmavtocard.Mask(str:String;idx:byte):boolean;
var
i:integer;
oB:boolean;
begin
oB:=true;
case idx of
1:begin
//���
for i:=1 to length(str) do
if not(str[i] in ['0'..'9']) then
oB:=false;
if oB then
if (StrToInt(str)<1900) and (StrToInt(str)<2100) then
oB:=false;
end;
2:begin
//numb_1
if (length(str)>4) and (length(str)<8) then
begin
//mask 1 0000ppp
oB:=true;
for i:=1 to 4 do
if not(str[i] in ['0'..'9']) then
oB:=false;
for i:=5 to 7 do
if not(IsRussianLetter(str[i])) then
oB:=false;

if not oB then
begin
//mask 2 p0000
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 5 do
if not(str[i] in ['0'..'9']) then
oB:=false;
end;
//mask 3 p000pp
if not oB then
begin
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 4 do
if not(str[i] in ['0'..'9']) then
oB:=false;
if length(str)>4 then
for i:=5 to 6 do
if not(IsRussianLetter(str[i])) then
oB:=false;
end;
//mask 4 pp0000
if not oB then begin
oB:=true;
for i:=1 to 2 do
if not(IsRussianLetter(str[i])) then
oB:=false;
for i:=3 to 6 do
if not(str[i] in ['0'..'9']) then
oB:=false;
end;
end
else begin
if str='��' then oB:=true else
 oB:=false;
end;
end;
3:begin
//numb_2
if (length(str)>4) and (length(str)<8) then
begin
//mask 1 0000ppp
oB:=true;
for i:=1 to 4 do
if not(str[i] in ['0'..'9']) then
oB:=false;
for i:=5 to 7 do
if not(IsRussianLetter(str[i])) then
oB:=false;

if not oB then
begin
//mask 2 p0000
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 5 do
if not(str[i] in ['0'..'9']) then
oB:=false;
end;

if not oB then
begin
//mask 3 p000pp
oB:=true;
if not(IsRussianLetter(str[1])) then
oB:=false;
for i:=2 to 4 do
if not(str[i] in ['0'..'9']) then
oB:=false;
if length(str)>4 then
for i:=5 to 6 do
if not(IsRussianLetter(str[i])) then
oB:=false;
end;
//mask 4 pp0000
if not oB then begin
oB:=true;
for i:=1 to 2 do
if not(IsRussianLetter(str[i])) then
oB:=false;
for i:=3 to 6 do
if not(str[i] in ['0'..'9']) then
oB:=false;
end;
end
else begin
if str='��' then oB:=true else
 oB:=false;
end;
end;
4:begin
oB:=false;
if length(str)>=14 then
oB:=true;
if LowerCase(str)='��' then
oB:=true;
end;
5:begin
oB:=false;
if length(str)>=6 then
oB:=true;
if LowerCase(str)='��' then
oB:=true;
end;
6:begin
oB:=false;
if length(str)>=4 then
oB:=true;
if LowerCase(str)='��' then
oB:=true;
end;
7:begin
oB:=false;
if length(str)>=16 then
oB:=true;
end;
8:begin
oB:=true;
if length(str)>=10 then
begin
for i:=1 to 2 do
if not(str[i] in ['0'..'9']) then
oB:=false;
for i:=3 to 4 do
if not(IsRussianLetter(str[i])) then
oB:=false;
end else if str='��' then oB:=true else oB:=false;
end;
end;//case
Mask:=oB;
end;

procedure Tfrmavtocard.LbB_FirstClick(Sender: TObject);
begin
dm.tAvto.First;
end;

procedure Tfrmavtocard.LbB_PriorClick(Sender: TObject);
begin
try
dm.tAvto.Prior;
except
dm.tAvto.Prior;
end;
end;

procedure Tfrmavtocard.LbB_NextClick(Sender: TObject);
begin
try
dm.tAvto.Next
except
dm.tAvto.Next
end;
end;

procedure Tfrmavtocard.LbB_LastClick(Sender: TObject);
begin
dm.tAvto.Last;
end;

procedure Tfrmavtocard.AvtoBeforeEdit;//(DataSet: TDataSet);
begin

LbB_Cancel.Enabled:=true;
LbB_Post.Enabled:=true;
LbB_New.Enabled:=false;
LbB_Del.Enabled:=false;
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;

end;

procedure Tfrmavtocard.AvtoAfterScroll(DataSet: TDataSet);
begin
frmavtocard.Caption:='�������� �������������� - '+Mark_box.Text+'-'+dm.tAvto.Fields[7].AsString+' �'+dm.tAvto.Fields[8].AsString;
old_number:=dm.tAvto.Fields[8].AsString;
RecN.Caption:=IntToStr(DataSet.RecNo);
if dm.tAvto.Fields[67].AsInteger>0 then
  LbButtonExport.Enabled:=false
else
  LbButtonExport.Enabled:=true;

Model_edit.Items.Clear;
dm.tModel_avt.Close;
if Mark_box.KeyValue<>null then
begin
dm.tModel_avt.Filter:='id_mark='+IntToStr(Mark_box.KeyValue);
dm.tModel_avt.Filtered:=true;
dm.tModel_avt.Open;
while not dm.tModel_avt.Eof do
begin
Model_edit.Items.Add(trim(dm.tModel_avt.Fields[2].AsString));
dm.tModel_avt.Next;
end;
end;
Model_edit.Text:=DataSet.Fields[7].AsString;
ExchangeFormNumb;
PeredachaFormNumb;
ListAkb;
ListShin;
ListDtp;
if dm.tAvto.RecordCount>1 then
begin
if DataSet.RecNo=1 then
begin
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
end
else
begin
LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
end;
if DataSet.RecNo=DataSet.RecordCount then
begin
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
end
else
begin
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
end;
end;
if state_box.Checked then
begin
date_state.Enabled:=true;
pr_state.Enabled:=true;
end else
begin
date_state.Enabled:=false;
pr_state.Enabled:=false;
end;
if out_account_box.Checked then
begin
date_out_account.Enabled:=true;
//pr_out_account.Enabled:=true;
end else
begin
date_out_account.Enabled:=false;
//pr_out_account.Enabled:=false;
end;
if life_box.Checked then
begin
date_life.Enabled:=true;
pr_life.Enabled:=true;
end else
begin
date_life.Enabled:=false;
pr_life.Enabled:=false;
end;
//���������
date_insur.Color:=clWhite;
if Trim(date_insur.EditText)<>'.  .' then
if (Now()>date_insur.Date+365) then
date_insur.Color:=clRed;
if Trim(date_insur.EditText)='.  .' then
date_insur.Color:=clRed;


RxDBLookupCombo1Change(Self);
end;

procedure Tfrmavtocard.LbB_NewClick(Sender: TObject);
begin
if not GroupBox1.Enabled then
begin
    GroupBox1.Enabled:=true;
    GroupBox2.Enabled:=true;
    GroupBox12.Enabled:=true;
    GroupBox3.Enabled:=true;
    GroupBox4.Enabled:=true;
    //GroupBox5.Enabled:=true;
    TabSheet8.Enabled:=true;TabSheet9.Enabled:=true;
    CoolBar2.Enabled:=true;
end;
dm.tAvto.Insert;
LbB_Cancel.Enabled:=true;
LbB_Post.Enabled:=true;
LbB_New.Enabled:=false;
LbB_Del.Enabled:=false;
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;


end;

procedure Tfrmavtocard.LbB_CancelClick(Sender: TObject);
begin
dm.tAvto.Cancel;
LbB_Cancel.Enabled:=false;
LbB_Post.Enabled:=false;
if (Main.UserRole=ADMIN_USER) or
(Main.UserRole=TECH_USER) then
LbB_New.Enabled:=true;

//LbB_New.Enabled:=true;
//LbB_Del.Enabled:=true;
if dm.tAvto.RecordCount>1 then
begin
LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
end
else
begin
LbB_First.Enabled:=false;
LbB_Prior.Enabled:=false;
LbB_Next.Enabled:=false;
LbB_Last.Enabled:=false;
LbB_Del.Enabled:=false;
    GroupBox1.Enabled:=false;
    GroupBox2.Enabled:=false;
    GroupBox12.Enabled:=false;
    GroupBox3.Enabled:=false;
    GroupBox4.Enabled:=false;
    //GroupBox5.Enabled:=false;
    TabSheet8.Enabled:=false;TabSheet9.Enabled:=false;
    CoolBar2.Enabled:=false;

end;
end;

procedure Tfrmavtocard.LbB_PostClick(Sender: TObject);
begin
try
if dm.tAvto.Modified then
begin
dm.tAvto.Fields[7].Value:=Model_edit.Text;
dm.tAvto.Post;
end;
LbB_Cancel.Enabled:=false;
LbB_Post.Enabled:=false;
LbB_New.Enabled:=true;
LbB_Del.Enabled:=true;
LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;
except
//      LbB_CancelClick(Self);
end;
end;

procedure Tfrmavtocard.LbB_DelClick(Sender: TObject);
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ �������������?',
    2,mtConfirmation) = mrYes then
    try
        dm.tAvto.Delete;
    except
        Main.ATXMessageDlg('�� �������� ������� ������!',1,mtError);
    end;
end;

procedure Tfrmavtocard.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmavtocard.LbB_FindClick(Sender: TObject);
begin
// ����� �� ������
LbB_CancelClick(Self);
Application.CreateForm(TfrmLoadData, frmLoadData);
frmLoadData.Show;
Application.ProcessMessages;
id_search:=dm.SearchNumber(find_numb_edit.Text,id_search);
if id_search<> 0 then
dm.tAvto.Locate('id',id_search,[loPartialKey	])
else
main.ATXShowMessage('(�����) �������������� �� �������.');

frmLoadData.Close;
end;

procedure Tfrmavtocard.AvtoAfterPost(DataSet: TDataSet);
begin
try
dm.CommitTR;
RecCount.Caption:=IntToStr(dm.tAvto.RecordCount);
except
dm.RollBTR;
end;
end;

procedure Tfrmavtocard.AvtoAfterDelete(DataSet: TDataSet);
begin
try
dm.CommitTR;
RecCount.Caption:=IntToStr(dm.tAvto.RecordCount);
        dm.tAvto.UpdateCursorPos;
        dm.tAvto.Recordset.Resync(adAffectCurrent, adResyncAllValues);
        dm.tAvto.Resync([]);

except
dm.RollBTR;
end;
end;

procedure Tfrmavtocard.state_boxClick(Sender: TObject);
begin
if state_box.Checked then
begin
date_state.Enabled:=true;
pr_state.Enabled:=true;
state_box.Color:=clred;
TabSheet8.Highlighted:=true;

RxDBLookupOutState.Enabled:=true;
end else
begin
date_state.Enabled:=false;
pr_state.Enabled:=false;
state_box.Color:=$00EDE3D6;
if not life_box.Checked then
TabSheet8.Highlighted:=false;

RxDBLookupOutState.Enabled:=false;
end;
end;

procedure Tfrmavtocard.out_account_boxClick(Sender: TObject);
begin
if out_account_box.Checked then
begin
date_out_account.Enabled:=true;
//pr_out_account.Enabled:=true;
out_account_box.Color:=clred;
TabSheet9.Highlighted:=true;
end else
begin
date_out_account.Enabled:=false;
//pr_out_account.Enabled:=false;
out_account_box.Color:=$00EDE3D6;
TabSheet9.Highlighted:=false;
end;

end;

procedure Tfrmavtocard.life_boxClick(Sender: TObject);
begin
if life_box.Checked then
begin
date_life.Enabled:=true;
pr_life.Enabled:=true;
life_box.Color:=clred;

TabSheet8.Highlighted:=true;
end else
begin
date_life.Enabled:=false;
pr_life.Enabled:=false;
life_box.Color:=$00EDE3D6;
if not state_box.Checked then
  TabSheet8.Highlighted:=false;
end;
end;

procedure Tfrmavtocard.LbB_ExplClick(Sender: TObject);


begin
Application.ProcessMessages;
Main.CreateExplAvtoCard(1,dm.tAvto.Fields[0].AsInteger,Mark_box.Text+' - '+dm.tAvto.Fields[7].AsString+' '+dm.tAvto.Fields[8].AsString);
Application.ProcessMessages;

 


end;

procedure Tfrmavtocard.LbB_Expl_addClick(Sender: TObject);
begin
Application.ProcessMessages;
Main.OpenExplCard(2,dm.tAvto.Fields[0].AsInteger,Mark_box.Text+' - '+dm.tAvto.Fields[7].AsString+' '+dm.tAvto.Fields[8].AsString);
Application.ProcessMessages;
end;

procedure Tfrmavtocard.FormShow(Sender: TObject);
var
Layout: array[0.. KL_NAMELENGTH] of char;
begin
LoadKeyboardLayout( StrCopy(Layout,'00000419'),KLF_ACTIVATE);
PageControl1.ActivePage:=TabSheet1;

Mark_boxChange(Self);
Model_edit.Text:=dm.tAvto.Fields[7].AsString;
ExchangeFormNumb;
ListAkb;
ListShin;
ListDtp;
DBGrid.Columns.Clear;
DBGrid.Columns.Add;
DBGrid.Columns[0].Title.Caption:='���� ������';
DBGrid.Columns[0].FieldName:='date';
DBGrid.Columns[0].Width:=100;
DBGrid.Columns.Add;
DBGrid.Columns[1].Title.Caption:='������ �����';
DBGrid.Columns[1].FieldName:='old_n';
DBGrid.Columns[1].Width:=100;
DBGrid.Columns.Add;
DBGrid.Columns[2].Title.Caption:='����� �����';
DBGrid.Columns[2].FieldName:='new_n';
DBGrid.Columns[2].Width:=100;
PeredachaFormNumb;
DBGrid1.Columns.Clear;
DBGrid1.Columns.Add;
DBGrid1.Columns[0].Title.Caption:='����';
DBGrid1.Columns[0].FieldName:='date';
DBGrid1.Columns[0].Width:=100;
DBGrid1.Columns.Add;
DBGrid1.Columns[1].Title.Caption:='�� ����';
DBGrid1.Columns[1].FieldName:='from_edit';
DBGrid1.Columns[1].Width:=100;
DBGrid1.Columns.Add;
DBGrid1.Columns[2].Title.Caption:='����';
DBGrid1.Columns[2].FieldName:='to_edit';
DBGrid1.Columns[2].Width:=100;
DBGrid1.Columns.Add;
DBGrid1.Columns[3].Title.Caption:='� �������';
DBGrid1.Columns[3].FieldName:='nprok_edit';
DBGrid1.Columns[3].Width:=100;


DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[0].Title.Caption:='���';
DBGrid_Akb.Columns[0].FieldName:='type';
DBGrid_Akb.Columns[0].Width:=100;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[1].Title.Caption:='������';
DBGrid_Akb.Columns[1].FieldName:='Expr1';
DBGrid_Akb.Columns[1].Width:=100;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[2].Title.Caption:='��� �������';
DBGrid_Akb.Columns[2].FieldName:='year';
DBGrid_Akb.Columns[2].Width:=50;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[3].Title.Caption:='��������� �';
DBGrid_Akb.Columns[3].FieldName:='prod_num';
DBGrid_Akb.Columns[3].Width:=100;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[4].Title.Caption:='� ���.���������';
DBGrid_Akb.Columns[4].FieldName:='date1';
DBGrid_Akb.Columns[4].Width:=70;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[5].Title.Caption:='����.�����������';
DBGrid_Akb.Columns[5].FieldName:='date2';
DBGrid_Akb.Columns[5].Width:=70;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[6].Title.Caption:='� ����';
DBGrid_Akb.Columns[6].FieldName:='Expr2';
DBGrid_Akb.Columns[6].Width:=155;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[7].Title.Caption:='��������';
DBGrid_Akb.Columns[7].FieldName:='date3';
DBGrid_Akb.Columns[7].Width:=60;
DBGrid_Akb.Columns.Add;
DBGrid_Akb.Columns[8].FieldName:='id';
DBGrid_Akb.Columns[8].Visible:=false;

DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[0].FieldName:='id';
DBGrid_Shin.Columns[0].Visible:=false;

DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[1].Title.Caption:='������';
DBGrid_Shin.Columns[1].FieldName:='name_r';
DBGrid_Shin.Columns[1].Width:=40;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[2].Title.Caption:='������';
DBGrid_Shin.Columns[2].FieldName:='razmer';
DBGrid_Shin.Columns[2].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[3].Title.Caption:='���.�����';
DBGrid_Shin.Columns[3].FieldName:='number';
DBGrid_Shin.Columns[3].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[4].Title.Caption:='�����������';
DBGrid_Shin.Columns[4].FieldName:='name_k';
DBGrid_Shin.Columns[4].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[5].Title.Caption:='���';
DBGrid_Shin.Columns[5].FieldName:='name_t';
DBGrid_Shin.Columns[5].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[6].Title.Caption:='���� ���������';
DBGrid_Shin.Columns[6].FieldName:='ust';
DBGrid_Shin.Columns[6].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[7].Title.Caption:='� ����';
DBGrid_Shin.Columns[7].FieldName:='old_avt';
DBGrid_Shin.Columns[7].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[8].Title.Caption:='���� ��������';
DBGrid_Shin.Columns[8].FieldName:='pered';
DBGrid_Shin.Columns[8].Width:=100;
DBGrid_Shin.Columns.Add;
DBGrid_Shin.Columns[9].Title.Caption:='���� ��������';
DBGrid_Shin.Columns[9].FieldName:='spisan';
DBGrid_Shin.Columns[9].Width:=100;

with DBGrid_Dtp do
begin
Columns.Add;
Columns[0].Title.Caption:='����';
Columns[0].FieldName:='date_dtp';
Columns[0].Width:=70;
Columns.Add;
Columns[1].Title.Caption:='��������';
Columns[1].FieldName:='driver';
Columns[1].Width:=150;
Columns.Add;
Columns[2].Title.Caption:='�������';
Columns[2].FieldName:='guilty_str';
Columns[2].Width:=70;
Columns.Add;
Columns[3].Title.Caption:='���-�� ������������';
Columns[3].FieldName:='injured';
Columns[3].Width:=120;
Columns.Add;
Columns[4].Title.Caption:='����� ������';
Columns[4].FieldName:='amount_damages';
Columns[4].Width:=100;
Columns.Add;
Columns[5].Title.Caption:='������ � ���';
Columns[5].FieldName:='name';
Columns[5].Width:=200;
Columns.Add;
Columns[6].FieldName:='id';
Columns[6].Visible:=false;
end;


end;


procedure Tfrmavtocard.FormCreate(Sender: TObject);
begin
Left:=0;
Top:=0;
Width:=812;
Height:=686;
openProc;
ChangeNumber:=false;
  dm.tSettingProgramm.Close;
  dm.tSettingProgramm.Filter:='param_p = '+QuotedStr('save_number');
  dm.tSettingProgramm.Filtered:=true;
  dm.tSettingProgramm.Open;
  save_number:=dm.tSettingProgramm.Fields[1].AsInteger;
  dm.tSettingProgramm.Close;
  ToolBar1.ButtonWidth:=100;
end;

procedure Tfrmavtocard.find_numb_editKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
id_search:=0;
if Key=Ord(#13) then
LbB_FindClick(Self);
end;

procedure Tfrmavtocard.Model_edit1KeyPress(Sender: TObject; var Key: Char);
begin
Key:=#0;
end;

procedure Tfrmavtocard.Mark_boxChange(Sender: TObject);
begin
if Mark_box.KeyValue<>null then
begin
Model_edit.Items.Clear;
Model_edit.Text:='';
dm.tModel_avt.Close;
dm.tModel_avt.Filter:='id_mark='+IntToStr(Mark_box.KeyValue);
dm.tModel_avt.Filtered:=true;
dm.tModel_avt.Open;
while not dm.tModel_avt.Eof do
begin
Model_edit.Items.Add(trim(dm.tModel_avt.Fields[2].AsString));
dm.tModel_avt.Next;
end;
end;
end;

procedure Tfrmavtocard.Model_edit1Change(Sender: TObject);
begin
AvtoBeforeEdit;
dm.tAvto.Edit;
dm.tAvto.Fields[7].Value:=Model_edit.Text;
dm.StoredProc1.Parameters.Clear;
dm.StoredProc1.ProcedureName:='GetExplYear;1';
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[0].Name:='@Param1';
dm.StoredProc1.Parameters[0].DataType:=ftInteger;
dm.StoredProc1.Parameters[0].Value:=dm.tAvto.Fields[6].Value;
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[1].Name:='@Param2';
dm.StoredProc1.Parameters[1].DataType:=ftString;
dm.StoredProc1.Parameters[1].Value:=trim(Model_edit.Text);

dm.StoredProc1.Open;

dm.tAvto.Fields[57].Value:=dm.StoredProc1.FieldValues['expl_year'];
dm.StoredProc1.Close;
end;

procedure Tfrmavtocard.EnterGosNumbClick(Sender: TObject);
var
old_numb:String;
begin
if not Mask(GosNumb_edit.Text,2) then
begin
      Main.ATXShowMessage('�� ��������� ��������� ��� �!');
      Abort;
end else
begin
    old_numb:=Numb1_edit.Text;
    Numb1_edit.Text:=GosNumb_edit.Text;
    dm.tAvto.Edit;
    dm.tAvto.Fields[8].Value:=GosNumb_edit.Text;
    dm.tAvto.Fields[49].Value:=old_numb;
    LbB_PostClick(Self);
    dm.ExchangeNumbr(dm.tAvto.Fields[0].AsInteger,DateToStr(DateEdit1.Date),old_numb,GosNumb_edit.Text);
    ExchangeFormNumb;
    GosNumb_edit.Text:='';
end;

end;

procedure Tfrmavtocard.ElTabSheet5Show(Sender: TObject);
begin
DateEdit1.Date:=Now();
end;
procedure Tfrmavtocard.ExchangeFormNumb;
begin
dm.tHistoryExchange.Close;
if dm.tAvto.RecordCount<>0 then
begin
if dm.tAvto.Fields[0].AsString<>'' then
begin
dm.tHistoryExchange.Filter:='id_avt='+dm.tAvto.Fields[0].AsString;
dm.tHistoryExchange.Filtered:=true;
dm.tHistoryExchange.Open;
dm.tHistoryExchange.Sort:='date';
end;
end;
end;


procedure Tfrmavtocard.PageControl2DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
var
XTabSheet: TTabSheet;
XRect: TRect;
  begin

               if PageControl2.Pages[TabIndex].Highlighted then


Control.Canvas.Brush.Color:=RGB(255, 153, 153)
else
        Control.Canvas.Brush.Color:=clBtnFace;

XRect:=Rect;
InflateRect(XRect, -1, -1);
Control.Canvas.FillRect(XRect);


XTabSheet:=PageControl2.Pages[TabIndex];

if Assigned(XTabSheet) then begin
DrawText(Control.Canvas.Handle,
PChar(XTabSheet.Caption), length(XTabSheet.Caption),
XRect, DT_VCENTER + DT_SINGLELINE + DT_CENTER);

      end;

end;

procedure Tfrmavtocard.PeredachaFormNumb;
begin
dm.tPeredacha.Close;
if dm.tAvto.RecordCount<>0 then
begin
if dm.tAvto.Fields[0].AsString<>'' then
begin
dm.tPeredacha.Filter:='id_avt='+dm.tAvto.Fields[0].AsString;
dm.tPeredacha.Filtered:=true;
dm.tPeredacha.Open;
dm.tPeredacha.Sort:='date';
end;
end;
end;


procedure Tfrmavtocard.ListAkb;
begin
Panel_AkbList.Enabled:=true;
if dm.tAvto.RecordCount<>0 then
begin
if dm.StoredProc_akb.Active then
dm.StoredProc_akb.Active:=false;
dm.StoredProc_akb.Parameters.Clear;
dm.StoredProc_akb.ProcedureName:='GetAkbList;1';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_akb.Parameters[0].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[1].Name:='@id_avt';
dm.StoredProc_akb.Parameters[1].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[1].Value:=dm.tAvto.Fields[0].AsInteger;
dm.StoredProc_akb.Open;
if dm.StoredProc_akb.RecordCount=0 then
begin
LbButton2.Enabled:=false;
LbButton3.Enabled:=false;
LbButton4.Enabled:=false;
LbButton7.Enabled:=false;
LbButton23.Enabled:=false;
end else
begin
if Main.UserRole<>USER_USER then
begin
LbButton2.Enabled:=true;
LbButton3.Enabled:=true;
LbButton4.Enabled:=true;
LbButton7.Enabled:=true;
LbButton23.Enabled:=true;
end;
end;
end;
end;
procedure Tfrmavtocard.ListDtp;
begin
Panel_Add_Dtp.Visible:=false;
  Panel_DTP.Enabled:= true;


if dm.tAvto.RecordCount<>0 then
begin
if dm.StoredProc_dtp.Active then
dm.StoredProc_dtp.Active:=false;
dm.StoredProc_dtp.Parameters.Clear;
dm.StoredProc_dtp.ProcedureName:='GetDtpList;1';
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_dtp.Parameters[0].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[1].Name:='@id_avt';
dm.StoredProc_dtp.Parameters[1].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[1].Value:=dm.tAvto.Fields[0].AsInteger;
dm.StoredProc_dtp.Open;
if dm.StoredProc_dtp.RecordCount=0 then
begin
LbButtonEdit_dtp.Enabled:=false;
LbButtonDel_dtp.Enabled:=false;
end else
begin
if (Main.UserRole=ADMIN_USER) or (Main.UserRole=REMONT_USER) then
begin
LbButtonEdit_dtp.Enabled:=true;
LbButtonDel_dtp.Enabled:=true;
end;
end;
end;
end;
{-----------------}
procedure Tfrmavtocard.ListShin;
begin
Panel_ShineList.Enabled:= true;
if dm.tAvto.RecordCount<>0 then
begin
if dm.StoredProc_shin.Active then
dm.StoredProc_shin.Active:=false;
dm.StoredProc_shin.Parameters.Clear;
dm.StoredProc_shin.ProcedureName:='GetShinList;1';
dm.StoredProc_shin.Parameters.AddParameter;
dm.StoredProc_shin.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_shin.Parameters[0].DataType:=ftInteger;
dm.StoredProc_shin.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_shin.Parameters.AddParameter;
dm.StoredProc_shin.Parameters[1].Name:='@id_avt';
dm.StoredProc_shin.Parameters[1].DataType:=ftInteger;
dm.StoredProc_shin.Parameters[1].Value:=dm.tAvto.Fields[0].AsInteger;
dm.StoredProc_shin.Open;
if dm.StoredProc_shin.RecordCount=0 then
begin
LbButton15.Enabled:=false;
LbButton16.Enabled:=false;
LbButton17.Enabled:=false;
LbButton18.Enabled:=false;
end else
begin
if Main.UserRole<>USER_USER then
begin
LbButton15.Enabled:=true;
LbButton16.Enabled:=true;
LbButton17.Enabled:=true;
LbButton18.Enabled:=true;
end;
end;
end;
end;

procedure Tfrmavtocard.EnterPeredachaClick(Sender: TObject);
begin
if (from_edit.Text='') or (to_edit.Text='') or
(DateEdit2.Date=0) or (Nprok_edit.Text='') then
begin
      Main.ATXShowMessage('��������� �� ��� ����!');
      Abort;
end else
begin
    dm.Peredacha(dm.tAvto.Fields[0].AsInteger,from_edit.Text,to_edit.Text,DateToStr(DateEdit2.Date),Nprok_edit.Text);
    PeredachaFormNumb;
    from_edit.Text:='';
    to_edit.Text:='';
    Nprok_edit.Text:='';
end;

end;

procedure Tfrmavtocard.ElTabSheet6Show(Sender: TObject);
begin
DateEdit2.Date:=Now();
end;

procedure Tfrmavtocard.Numb1_editKeyPress(Sender: TObject; var Key: Char);
begin
ChangeNumber:=true;
end;

procedure Tfrmavtocard.CoolItemAddRemontClick(Sender: TObject);
begin
Application.ProcessMessages;
Main.OpenRemontCard(0,dm.tAvto.Fields[0].AsInteger,Mark_box.Text+' - '+dm.tAvto.Fields[7].AsString+' '+dm.tAvto.Fields[8].AsString);
Application.ProcessMessages;
end;

procedure Tfrmavtocard.CoolItemListRemontClick(Sender: TObject);
begin
Application.ProcessMessages;
Main.CreateRemontAvtoCard(1,dm.tAvto.Fields[0].AsInteger,Mark_box.Text+' - '+dm.tAvto.Fields[7].AsString+' �'+dm.tAvto.Fields[8].AsString);
Application.ProcessMessages;

end;

procedure Tfrmavtocard.ElPageControl1Change(Sender: TObject);
begin
if (PageControl1.ActivePageIndex=0) then
LbButton24.Visible:=true
else
LbButton24.Visible:=false;
if (PageControl1.ActivePageIndex=5)
or (PageControl1.ActivePageIndex=6) then
begin
LbB_New.Visible:=false;
LbB_Cancel.Visible:=false;
LbB_Post.Visible:=false;
if Main.UserRole=ADMIN_USER then
LbB_Del.Visible:=false;
end else
begin
LbB_New.Visible:=true;
LbB_Cancel.Visible:=true;
LbB_Post.Visible:=true;
if Main.UserRole=ADMIN_USER then
LbB_Del.Visible:=true;
end;
end;


procedure Tfrmavtocard.LbButton1Click(Sender: TObject);
begin
edit_akb:=false;
Panel_Add_Akb.Visible:=true;
Panel_AkbList.Enabled:=not Panel_Add_Akb.Visible;
end;

procedure Tfrmavtocard.LbButton6Click(Sender: TObject);
begin
Panel_Add_Akb.Visible:=false;
Panel_AkbList.Enabled:=not Panel_Add_Akb.Visible;
end;

procedure Tfrmavtocard.LbButton7Click(Sender: TObject);
var
id_akb:integer;
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ �����������?',
    2,mtConfirmation) = mrYes then
begin
id_akb:=dm.StoredProc_akb.Fields[8].AsInteger;
if dm.StoredProc_akb.Active then
dm.StoredProc_akb.Active:=false;
dm.StoredProc_akb.Parameters.Clear;
dm.StoredProc_akb.ProcedureName:='DelAkb;1';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_akb.Parameters[0].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[1].Name:='@id';
dm.StoredProc_akb.Parameters[1].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[1].Value:=id_akb;
try
dm.StoredProc_akb.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListAkb;
end;
end;

procedure Tfrmavtocard.year_akb_editKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key in ['0'..'9'] then
//
else
Key:=#0;
end;

procedure Tfrmavtocard.LbButton5Click(Sender: TObject);
var
id_avt:Integer;
id_akb:Integer;
what:integer;
begin
if edit_akb then
begin
what:=4;
id_akb:=dm.StoredProc_akb.Fields[8].AsInteger;
end else
begin
what:=1;
id_akb:=0;
end;
id_avt:=dm.tAvto.Fields[0].AsInteger;
if dm.StoredProc_akb.Active then
dm.StoredProc_akb.Active:=false;
dm.StoredProc_akb.Parameters.Clear;
dm.StoredProc_akb.ProcedureName:='SetAkb;1';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_akb.Parameters[0].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[1].Name:='@what';
dm.StoredProc_akb.Parameters[1].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[1].Value:=what;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[2].Name:='@id';
dm.StoredProc_akb.Parameters[2].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[2].Value:=id_akb;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[3].Name:='@id_avt';
dm.StoredProc_akb.Parameters[3].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[3].Value:=id_avt;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[4].Name:='@type_akb';
dm.StoredProc_akb.Parameters[4].DataType:=ftString;
dm.StoredProc_akb.Parameters[4].Value:=type_akb_edit.Text;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[5].Name:='@model';
dm.StoredProc_akb.Parameters[5].DataType:=ftString;
dm.StoredProc_akb.Parameters[5].Value:=model_akb_edit.Text;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[6].Name:='@year_akb';
dm.StoredProc_akb.Parameters[6].DataType:=ftString;
dm.StoredProc_akb.Parameters[6].Value:=year_akb_edit.Text;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[7].Name:='@prod_num';
dm.StoredProc_akb.Parameters[7].DataType:=ftString;
dm.StoredProc_akb.Parameters[7].Value:=prod_num_akd_edit.Text;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[8].Name:='@date1';
if DateEdit3.Text<>'  .  .    ' then
begin
dm.StoredProc_akb.Parameters[8].DataType:=ftDate;
dm.StoredProc_akb.Parameters[8].Value:=DateEdit3.Date;
end else begin
dm.StoredProc_akb.Parameters[8].DataType:=ftString;
dm.StoredProc_akb.Parameters[8].Value:=null;
end;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[9].Name:='@date2';
if DateEdit4.Text<>'  .  .    ' then
begin
dm.StoredProc_akb.Parameters[9].DataType:=ftDate;
dm.StoredProc_akb.Parameters[9].Value:=DateEdit4.Date;
end else begin
dm.StoredProc_akb.Parameters[9].DataType:=ftString;
dm.StoredProc_akb.Parameters[9].Value:=null;
end;
try
dm.StoredProc_akb.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
LbButton5.Enabled:=false;
Panel_Add_Akb.Visible:=false;
type_akb_edit.Text:='';
model_akb_edit.Text:='';
year_akb_edit.Text:='';
prod_num_akd_edit.Text:='';
DateEdit3.Date:=0;
DateEdit3.Date:=0;

ListAkb;

end;

procedure Tfrmavtocard.type_akb_editChange(Sender: TObject);
begin
LbButton5.Enabled:=true;
end;

procedure Tfrmavtocard.LbButton9Click(Sender: TObject);
begin
Panel_spisan.Visible:=false;
Panel_AkbList.Enabled:=not Panel_spisan.Visible;
end;

procedure Tfrmavtocard.LbButtonAdd_dtpClick(Sender: TObject);
begin
if not Panel_Add_Dtp.Visible then
begin
edit_dtp:=false;
id_dtp:=0;
DateEdit_dtp.Date:=Now();
    placeMemo_dtp.Lines.Clear;

    LabeledEditDriver_dtp.Text:='';
    CheckBox_guilty_dtp.Checked:=false;
    LabeledEdit_injured_dtp.Text:='0';
    LabeledEdit_wounded_dtp.Text:='0';
    LabeledEdit_killed_dtp.Text:='0';
    CurrencyEdit_Amount_dtp.Value:=0;
    noteMemo_dtp.Lines.Clear;

    RxDBLookupCombo_place_cto.KeyValue:=null;
LbButtonDtp_Save.Enabled:=false;
Panel_Add_Dtp.Visible:=true;
Panel_DTP.Enabled:= not Panel_Add_Dtp.Visible;
end;
end;

procedure Tfrmavtocard.LbButtonDel_dtpClick(Sender: TObject);
var
id_dtp:integer;
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ ���?',
    2,mtConfirmation) = mrYes then
begin
id_dtp:=dm.StoredProc_dtp.Fields[0].AsInteger;
if dm.StoredProc_dtp.Active then
dm.StoredProc_dtp.Active:=false;
dm.StoredProc_dtp.Parameters.Clear;
dm.StoredProc_dtp.ProcedureName:='DelDtp;1';
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_dtp.Parameters[0].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[1].Name:='@id';
dm.StoredProc_dtp.Parameters[1].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[1].Value:=id_dtp;
try
dm.StoredProc_dtp.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListDtp;
end;

end;

procedure Tfrmavtocard.LbButtonDtp_SaveClick(Sender: TObject);
var
id_avt,id_rem_place:Integer;
what:integer;
begin
if edit_dtp then
begin
what:=2;
end else
begin
what:=1;
end;

if RxDBLookupCombo_place_cto.KeyValue=null then

     id_rem_place:=-1
     else
       id_rem_place:=RxDBLookupCombo_place_cto.KeyValue;


id_avt:=dm.tAvto.Fields[0].AsInteger;

if dm.StoredProc_dtp.Active then
dm.StoredProc_dtp.Active:=false;
dm.StoredProc_dtp.Parameters.Clear;
dm.StoredProc_dtp.ProcedureName:='SetDtp;1';
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_dtp.Parameters[0].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[1].Name:='@what';
dm.StoredProc_dtp.Parameters[1].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[1].Value:=what;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[2].Name:='@id';
dm.StoredProc_dtp.Parameters[2].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[2].Value:=id_dtp;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[3].Name:='@id_avt';
dm.StoredProc_dtp.Parameters[3].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[3].Value:=id_avt;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[4].Name:='@date_dtp';
if DateEdit_dtp.Text<>'  .  .    ' then
begin
dm.StoredProc_dtp.Parameters[4].DataType:=ftDate;
dm.StoredProc_dtp.Parameters[4].Value:=DateEdit_dtp.Date;
end else begin
dm.StoredProc_dtp.Parameters[4].DataType:=ftDate;
dm.StoredProc_dtp.Parameters[4].Value:=Now();
end;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[5].Name:='@place_dtp';
dm.StoredProc_dtp.Parameters[5].DataType:=ftString;
dm.StoredProc_dtp.Parameters[5].Value:=placeMemo_dtp.Text;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[6].Name:='@driver';
dm.StoredProc_dtp.Parameters[6].DataType:=ftString;
dm.StoredProc_dtp.Parameters[6].Value:=LabeledEditDriver_dtp.Text;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[7].Name:='@guilty';
dm.StoredProc_dtp.Parameters[7].DataType:=ftBoolean;
dm.StoredProc_dtp.Parameters[7].Value:=CheckBox_guilty_dtp.Checked;

dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[8].Name:='@injured';
dm.StoredProc_dtp.Parameters[8].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[8].Value:=StrToInt(LabeledEdit_injured_dtp.Text);
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[9].Name:='@wounded';
dm.StoredProc_dtp.Parameters[9].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[9].Value:=StrToInt(LabeledEdit_wounded_dtp.Text);
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[10].Name:='@killed';
dm.StoredProc_dtp.Parameters[10].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[10].Value:=StrToInt(LabeledEdit_killed_dtp.Text);

dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[11].Name:='@amount_damages';
dm.StoredProc_dtp.Parameters[11].DataType:=ftFloat;
dm.StoredProc_dtp.Parameters[11].Value:=CurrencyEdit_Amount_dtp.Value;

dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[12].Name:='@id_rem_place';
if id_rem_place=-1 then
begin
dm.StoredProc_dtp.Parameters[12].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[12].Value:=null;
end else
begin
  dm.StoredProc_dtp.Parameters[12].DataType:=ftInteger;
dm.StoredProc_dtp.Parameters[12].Value:=id_rem_place;

end;
dm.StoredProc_dtp.Parameters.AddParameter;
dm.StoredProc_dtp.Parameters[13].Name:='@note';
dm.StoredProc_dtp.Parameters[13].DataType:=ftString;
dm.StoredProc_dtp.Parameters[13].Value:=noteMemo_dtp.Text;

try
dm.StoredProc_dtp.ExecProc;
dm.CommitTR;
except

on E : Exception do
begin
dm.RollBTR;
      ShowMessage(E.ClassName+' ������ � ���������� : '+E.Message);

    end;


end;


ListDtp;
{end else
begin
  Main.ATXShowMessage('������ � ��� �� ����� ���� ������!');
end;}

end;

procedure Tfrmavtocard.LbButtonEdit_dtpClick(Sender: TObject);
begin
if dm.StoredProc_dtp.RecordCount>0 then
if not Panel_Add_Dtp.Visible then  begin
edit_dtp:=true;
id_dtp:=dm.StoredProc_dtp.Fields[0].AsInteger;

DateEdit_dtp.Date:=dm.StoredProc_dtp.Fields[2].AsDateTime;
    placeMemo_dtp.Lines.Clear;
    placeMemo_dtp.Text:=trim(dm.StoredProc_dtp.Fields[3].AsString);
    LabeledEditDriver_dtp.Text:=trim(dm.StoredProc_dtp.Fields[4].AsString);
    CheckBox_guilty_dtp.Checked:=dm.StoredProc_dtp.Fields[5].AsBoolean;
    LabeledEdit_injured_dtp.Text:=trim(dm.StoredProc_dtp.Fields[6].AsString);
    LabeledEdit_wounded_dtp.Text:=trim(dm.StoredProc_dtp.Fields[7].AsString);
    LabeledEdit_killed_dtp.Text:=trim(dm.StoredProc_dtp.Fields[8].AsString);
    CurrencyEdit_Amount_dtp.Value:=dm.StoredProc_dtp.Fields[9].AsFloat;
    //noteMemo_dtp.Lines.Clear;
    noteMemo_dtp.Text:=trim(dm.StoredProc_dtp.Fields[11].AsString);
LbButtonDtp_Save.Enabled:=false;


Panel_Add_Dtp.Visible:=true;
Panel_DTP.Enabled:= not Panel_Add_Dtp.Visible;

end;
end;

procedure Tfrmavtocard.LbButtonExportClick(Sender: TObject);
var
res:integer;
b1,b2,b3,b4:boolean;
begin
//������� ��
b1:=LbB_Cancel.Enabled;
b2:=LbB_Post.Enabled;
b3:=LbB_New.Enabled;
b4:=LbB_Del.Enabled;


if Main.ATXMessageDlg('�������������� ������ ������������� � �� �����������?',
    2,mtConfirmation) = mrYes then
    begin

dm.StoredProc1.Parameters.Clear;
dm.StoredProc1.ProcedureName:='CopyAvtoToEnsure;1';
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[0].Name:='@id';
dm.StoredProc1.Parameters[0].DataType:=ftInteger;
dm.StoredProc1.Parameters[0].Value:=dm.tAvto.Fields[0].Value;
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[1].Name:='@what';
dm.StoredProc1.Parameters[1].DataType:=ftInteger;
dm.StoredProc1.Parameters[1].Value:=0;
    dm.StoredProc1.Parameters.AddParameter;
    dm.StoredProc1.Parameters[2].Name:='@id_avto_new';
    dm.StoredProc1.Parameters[2].DataType:=ftInteger;
    dm.StoredProc1.Parameters[2].Direction:=pdReturnValue;


dm.StoredProc1.Active:=true;
res:=dm.StoredProc1.Parameters[2].Value;
//res:=dm.StoredProc1.Fields[0].AsInteger;
if res=-1 then
begin
if Main.ATXMessageDlg('������������� '+Mark_box.Text+' '+Model_edit.Text+' ���.����� '+Numb1_edit.EditText+' �.�. '+Year_edit.EditText+' ������������ �� ���� '+InAc_edit.EditText+' ��� ���������� � ��. �������� ����� �������������?',
    2,mtConfirmation) = mrYes then
    begin
    dm.StoredProc1.Close;
dm.StoredProc1.Parameters.Clear;
dm.StoredProc1.ProcedureName:='CopyAvtoToEnsure;1';
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[0].Name:='@id';
dm.StoredProc1.Parameters[0].DataType:=ftInteger;
dm.StoredProc1.Parameters[0].Value:=dm.tAvto.Fields[0].Value;
dm.StoredProc1.Parameters.AddParameter;
dm.StoredProc1.Parameters[1].Name:='@what';
dm.StoredProc1.Parameters[1].DataType:=ftInteger;
dm.StoredProc1.Parameters[1].Value:=1;
    dm.StoredProc1.Parameters.AddParameter;
    dm.StoredProc1.Parameters[2].Name:='@id_avto_new';
    dm.StoredProc1.Parameters[2].DataType:=ftInteger;
    dm.StoredProc1.Parameters[2].Direction:=pdReturnValue;
dm.StoredProc1.Active:=true;
res:=dm.StoredProc1.Parameters[2].Value;


    end;
end;

dm.StoredProc1.Close;
if res>0 then begin
  LbButtonExport.Enabled:=false;

  try
  dm.tAvto.Edit;
  dm.tAvto.Fields[67].Value:=res;
    if dm.tAvto.Modified then
    begin
      dm.tAvto.Post;
    end;
  except
  //      LbB_CancelClick(Self);
  end;
end;
end;



LbB_Cancel.Enabled:=b1;
LbB_Post.Enabled:=b2;
LbB_New.Enabled:=b3;
LbB_Del.Enabled:=b4;

LbB_First.Enabled:=true;
LbB_Prior.Enabled:=true;
LbB_Next.Enabled:=true;
LbB_Last.Enabled:=true;


end;

procedure Tfrmavtocard.LbButton3Click(Sender: TObject);
begin
Panel_spisan.Visible:=true;
Panel_AkbList.Enabled:=not Panel_spisan.Visible;
end;

procedure Tfrmavtocard.DateEdit6Change(Sender: TObject);
begin
LbButton8.Enabled:=true;
end;

procedure Tfrmavtocard.LbButton8Click(Sender: TObject);
var
id_akb:Integer;
begin
id_akb:=dm.StoredProc_akb.Fields[8].AsInteger;
if dm.StoredProc_akb.Active then
dm.StoredProc_akb.Active:=false;
dm.StoredProc_akb.Parameters.Clear;
dm.StoredProc_akb.ProcedureName:='SetAkb;1';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_akb.Parameters[0].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[1].Name:='@what';
dm.StoredProc_akb.Parameters[1].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[1].Value:=2;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[2].Name:='@id';
dm.StoredProc_akb.Parameters[2].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[2].Value:=id_akb;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[3].Name:='@id_avt';
dm.StoredProc_akb.Parameters[3].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[3].Value:=0;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[4].Name:='@type_akb';
dm.StoredProc_akb.Parameters[4].DataType:=ftString;
dm.StoredProc_akb.Parameters[4].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[5].Name:='@model';
dm.StoredProc_akb.Parameters[5].DataType:=ftString;
dm.StoredProc_akb.Parameters[5].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[6].Name:='@year_akb';
dm.StoredProc_akb.Parameters[6].DataType:=ftString;
dm.StoredProc_akb.Parameters[6].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[7].Name:='@prod_num';
dm.StoredProc_akb.Parameters[7].DataType:=ftString;
dm.StoredProc_akb.Parameters[7].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[8].Name:='@date1';
dm.StoredProc_akb.Parameters[8].DataType:=ftDate;
dm.StoredProc_akb.Parameters[8].Value:=DateEdit6.Date;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[9].Name:='@date2';
dm.StoredProc_akb.Parameters[9].DataType:=ftDate;
dm.StoredProc_akb.Parameters[9].Value:=0;
try
dm.StoredProc_akb.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListAkb;
Panel_spisan.Visible:=false;
LbButton8.Enabled:=false;
end;

procedure Tfrmavtocard.DBGrid_AkbDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid_Akb.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid_Akb.Canvas.Brush.Color:=$EFE3DF
  else
  begin
    if Column.Field.Dataset.FieldByName('date3').AsString <> '' then
          DBGrid_Akb.Canvas.Brush.Color:=clRed;
   end;
DBGrid_Akb.DefaultDrawColumnCell(Rect, DataCol, Column, State)

end;

procedure Tfrmavtocard.DBGrid_DtpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
DBGrid1.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid1.Canvas.Brush.Color:=$EFE3DF
  else
  DBGrid1.Canvas.Brush.Color:=clWhite;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmavtocard.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid1.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid1.Canvas.Brush.Color:=$EFE3DF
  else
  DBGrid1.Canvas.Brush.Color:=clWhite;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrmavtocard.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid.Canvas.Brush.Color:=$EFE3DF
  else
  DBGrid.Canvas.Brush.Color:=clWhite;
  DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrmavtocard.LbButton4Click(Sender: TObject);
begin
  Main.listAvt_From:=2;
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.List_Avto;
  frmsearch.ShowModal;
  ListAkb;
end;
procedure Tfrmavtocard.ChangeAvtAkb(id_avt:integer);
var
id_akb:Integer;
begin
id_akb:=dm.StoredProc_akb.Fields[8].AsInteger;
if dm.StoredProc_akb.Active then
dm.StoredProc_akb.Active:=false;
dm.StoredProc_akb.Parameters.Clear;
dm.StoredProc_akb.ProcedureName:='SetAkb;1';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_akb.Parameters[0].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[1].Name:='@what';
dm.StoredProc_akb.Parameters[1].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[1].Value:=3;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[2].Name:='@id';
dm.StoredProc_akb.Parameters[2].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[2].Value:=id_akb;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[3].Name:='@id_avt';
dm.StoredProc_akb.Parameters[3].DataType:=ftInteger;
dm.StoredProc_akb.Parameters[3].Value:=id_avt;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[4].Name:='@type_akb';
dm.StoredProc_akb.Parameters[4].DataType:=ftString;
dm.StoredProc_akb.Parameters[4].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[5].Name:='@model';
dm.StoredProc_akb.Parameters[5].DataType:=ftString;
dm.StoredProc_akb.Parameters[5].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[6].Name:='@year_akb';
dm.StoredProc_akb.Parameters[6].DataType:=ftString;
dm.StoredProc_akb.Parameters[6].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[7].Name:='@prod_num';
dm.StoredProc_akb.Parameters[7].DataType:=ftString;
dm.StoredProc_akb.Parameters[7].Value:='';
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[8].Name:='@date1';
dm.StoredProc_akb.Parameters[8].DataType:=ftDate;
dm.StoredProc_akb.Parameters[8].Value:=0;
dm.StoredProc_akb.Parameters.AddParameter;
dm.StoredProc_akb.Parameters[9].Name:='@date2';
dm.StoredProc_akb.Parameters[9].DataType:=ftDate;
dm.StoredProc_akb.Parameters[9].Value:=0;
try
dm.StoredProc_akb.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;

end;
procedure Tfrmavtocard.ChangeAvtShin(id_avt:integer);
var
id_shin:Integer;
begin
id_shin:=dm.StoredProc_shin.Fields[0].AsInteger;
if dm.StoredProc_shin.Active then
dm.StoredProc_shin.Active:=false;
with dm.StoredProc_shin do
begin
Parameters.Clear;
ProcedureName:='SetShins;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@what';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=3;
Parameters.AddParameter;
Parameters[2].Name:='@id_shin';
Parameters[2].DataType:=ftInteger;
Parameters[2].Value:=id_shin;
Parameters.AddParameter;
Parameters[3].Name:='@razmer';
Parameters[3].DataType:=ftString;
Parameters[3].Value:='';
Parameters.AddParameter;
Parameters[4].Name:='@num';
Parameters[4].DataType:=ftString;
Parameters[4].Value:='';
Parameters.AddParameter;
Parameters[5].Name:='@id_r';
Parameters[5].DataType:=ftInteger;
Parameters[5].Value:=1;
Parameters.AddParameter;
Parameters[6].Name:='@id_k';
Parameters[6].DataType:=ftInteger;
Parameters[6].Value:=1;
Parameters.AddParameter;
Parameters[7].Name:='@id_t';
Parameters[7].DataType:=ftInteger;
Parameters[7].Value:=1;
Parameters.AddParameter;
Parameters[8].Name:='@date1';
Parameters[8].DataType:=ftDate;
Parameters[8].Value:=0;
Parameters.AddParameter;
Parameters[9].Name:='@date2';
Parameters[9].DataType:=ftDate;
Parameters[9].Value:=Now();
Parameters.AddParameter;
Parameters[10].Name:='@id_avt';
Parameters[10].DataType:=ftInteger;
Parameters[10].Value:=id_avt;
Parameters.AddParameter;
Parameters[11].Name:='@id';
Parameters[11].DataType:=ftInteger;
Parameters[11].Direction:=pdReturnValue;

try
ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
end;

end;

procedure Tfrmavtocard.CheckBox_guilty_dtpClick(Sender: TObject);
begin
LbButtonDtp_Save.Enabled:=true;
end;

procedure Tfrmavtocard.LbButton2Click(Sender: TObject);
begin
edit_akb:=true;
type_akb_edit.Text:=trim(dm.StoredProc_akb.Fields[0].AsString);
model_akb_edit.Text:=trim(dm.StoredProc_akb.Fields[1].AsString);
year_akb_edit.Text:=trim(dm.StoredProc_akb.Fields[2].AsString);
prod_num_akd_edit.Text:=trim(dm.StoredProc_akb.Fields[3].AsString);
DateEdit3.Date:=dm.StoredProc_akb.Fields[4].AsDateTime;
DateEdit4.Date:=dm.StoredProc_akb.Fields[5].AsDateTime;
Panel_Add_Akb.Visible:=true;
Panel_AkbList.Enabled:=not Panel_Add_Akb.Visible;
end;

procedure Tfrmavtocard.LbButton14Click(Sender: TObject);
begin
edit_shin:=false;
dm.tShina_R.Open;
dm.tShina_Konst.Open;
dm.tShina_Type.Open;
Panel_Shin.Visible:=true;
Panel_ShineList.Enabled:= not Panel_Shin.Visible;
EditCountShinAdd.Visible:=true;
LabelCountShinAdd.Visible:=true;
end;

procedure Tfrmavtocard.LbButton15Click(Sender: TObject);
begin
edit_shin:=true;
dm.tShina_R.Open;
dm.tShina_Konst.Open;
dm.tShina_Type.Open;
EditCountShinAdd.Visible:=false;
LabelCountShinAdd.Visible:=false;

LabeledEdit1.Text:=trim(dm.StoredProc_shin.Fields[2].AsString);
LabeledEdit2.Text:=trim(dm.StoredProc_shin.Fields[3].AsString);
//ComboBox1.Text:=trim(dm.StoredProc_shin.Fields[3].AsString);
Shina_R_Box.KeyValue:=dm.StoredProc_shin.Fields[10].AsInteger;
Shina_K_Box.KeyValue:=dm.StoredProc_shin.Fields[11].AsInteger;
Shina_T_Box.KeyValue:=dm.StoredProc_shin.Fields[12].AsInteger;
DateEdit5.Date:=dm.StoredProc_shin.Fields[6].AsDateTime;
if dm.StoredProc_shin.Fields[7].AsVariant=null then
begin
Label56.Visible:=false;
DateEdit7.Visible:=false;
end else
begin
Label56.Visible:=true;
DateEdit7.Visible:=true;
DateEdit7.Date:=dm.StoredProc_shin.Fields[8].AsDateTime;
end;
Panel_Shin.Visible:=true;
Panel_ShineList.Enabled:= not Panel_Shin.Visible;
end;

procedure Tfrmavtocard.LbButton11Click(Sender: TObject);
begin
Panel_Shin.Visible:=false;
Panel_ShineList.Enabled:= not Panel_Shin.Visible;
end;

procedure Tfrmavtocard.LabeledEdit1Change(Sender: TObject);
begin
LbButton10.Enabled:=true;
end;

procedure Tfrmavtocard.LbButton10Click(Sender: TObject);
var
id_shin:integer;
what:integer;
countShinAdd,i:integer;
begin
if edit_shin then
begin
what:=4;
id_shin:=dm.StoredProc_shin.Fields[0].AsInteger;
countShinAdd:=1;
end else
begin
what:=1;
id_shin:=0;
try
countShinAdd:=StrToInt(EditCountShinAdd.Text);
except
countShinAdd:=1;
end;
end;
LbButton10.Enabled:=false;
Panel_Shin.Visible:=false;
with dm do
begin
   if ADO.Connected then begin
   for i:=1 to countShinAdd do begin
    ADOCom1.Parameters.Clear;
    ADOCom1.CommandType:=cmdStoredProc;
    ADOCom1.CommandText:='SetShins';
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[0].Name:='@what';
    ADOCom1.Parameters[0].DataType:=ftInteger;
    ADOCom1.Parameters[0].Value:=what;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[1].Name:='@id_shin';
    ADOCom1.Parameters[1].DataType:=ftInteger;
    ADOCom1.Parameters[1].Value:=id_shin;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[2].Name:='@razmer';
    ADOCom1.Parameters[2].DataType:=ftString;
    ADOCom1.Parameters[2].Value:=LabeledEdit1.Text;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[3].Name:='@num';
    ADOCom1.Parameters[3].DataType:=ftString;
    ADOCom1.Parameters[3].Value:=LabeledEdit2.Text;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[4].Name:='@id_r';
    ADOCom1.Parameters[4].DataType:=ftInteger;
    ADOCom1.Parameters[4].Value:=Shina_R_Box.KeyValue;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[5].Name:='@id_k';
    ADOCom1.Parameters[5].DataType:=ftInteger;
    ADOCom1.Parameters[5].Value:=Shina_K_Box.KeyValue;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[6].Name:='@id_t';
    ADOCom1.Parameters[6].DataType:=ftInteger;
    ADOCom1.Parameters[6].Value:=Shina_T_Box.KeyValue;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[7].Name:='@date1';
    ADOCom1.Parameters[7].DataType:=ftDate;
    ADOCom1.Parameters[7].Value:=DateEdit5.Date;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[8].Name:='@date2';
if DateEdit7.Text<>'  .  .    ' then
begin
ADOCom1.Parameters[8].DataType:=ftDate;
ADOCom1.Parameters[8].Value:=DateEdit7.Date;
end else begin
ADOCom1.Parameters[8].DataType:=ftString;
ADOCom1.Parameters[8].Value:=null;
end;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[9].Name:='@id_avt';
    ADOCom1.Parameters[9].DataType:=ftInteger;
    ADOCom1.Parameters[9].Value:=dm.tAvto.Fields[0].AsInteger;
    ADOCom1.Parameters.AddParameter;
    ADOCom1.Parameters[10].Name:='@id';
    ADOCom1.Parameters[10].DataType:=ftInteger;
    ADOCom1.Parameters[10].Direction:=pdReturnValue;
      try
        ADOCom1.Execute;
        id_shin:=ADOCom1.Parameters[10].Value;
        CommitTR;
      except
        RollBTR;
      end;
   end;
    end;
end;
LabeledEdit1.Text:='';
LabeledEdit2.Text:='';
DateEdit5.Date:=0;
DateEdit7.Date:=0;

ListShin;
end;

procedure Tfrmavtocard.LbButton16Click(Sender: TObject);
begin
Panel_Shin_Spisan.Visible:=true;
Panel_ShineList.Enabled:= not Panel_Shin_Spisan.Visible;
EditCountShinAdd.Visible:=false;
LabelCountShinAdd.Visible:=false;
end;

procedure Tfrmavtocard.LbButton13Click(Sender: TObject);
begin
Panel_Shin_Spisan.Visible:=false;
Panel_ShineList.Enabled:= not Panel_Shin_Spisan.Visible;
end;

procedure Tfrmavtocard.DateEdit8Change(Sender: TObject);
begin
LbButton12.Enabled:=true;
end;

procedure Tfrmavtocard.DateEdit_dtpChange(Sender: TObject);
begin
if LbButtonAdd_dtp.Enabled then
  LbButtonDtp_Save.Enabled:=true;
end;

procedure Tfrmavtocard.LbButton12Click(Sender: TObject);
var
id_shin:Integer;
begin
id_shin:=dm.StoredProc_shin.Fields[0].AsInteger;
if dm.StoredProc_shin.Active then
dm.StoredProc_shin.Active:=false;
with dm.StoredProc_shin do
begin
Parameters.Clear;
ProcedureName:='SetShins;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@what';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=2;
Parameters.AddParameter;
Parameters[2].Name:='@id_shin';
Parameters[2].DataType:=ftInteger;
Parameters[2].Value:=id_shin;
Parameters.AddParameter;
Parameters[3].Name:='@razmer';
Parameters[3].DataType:=ftString;
Parameters[3].Value:='';
Parameters.AddParameter;
Parameters[4].Name:='@num';
Parameters[4].DataType:=ftString;
Parameters[4].Value:='';
Parameters.AddParameter;
Parameters[5].Name:='@id_r';
Parameters[5].DataType:=ftInteger;
Parameters[5].Value:=1;
Parameters.AddParameter;
Parameters[6].Name:='@id_k';
Parameters[6].DataType:=ftInteger;
Parameters[6].Value:=1;
Parameters.AddParameter;
Parameters[7].Name:='@id_t';
Parameters[7].DataType:=ftInteger;
Parameters[7].Value:=1;
Parameters.AddParameter;
Parameters[8].Name:='@date1';
Parameters[8].DataType:=ftDate;
Parameters[8].Value:=DateEdit8.Date;
Parameters.AddParameter;
Parameters[9].Name:='@date2';
Parameters[9].DataType:=ftDate;
Parameters[9].Value:=0;
Parameters.AddParameter;
Parameters[10].Name:='@id_avt';
Parameters[10].DataType:=ftInteger;
Parameters[10].Value:=0;
Parameters.AddParameter;
Parameters[11].Name:='@id';
Parameters[11].DataType:=ftInteger;
Parameters[11].Direction:=pdReturnValue;

try
ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
end;
ListShin;
Panel_Shin_Spisan.Visible:=false;
LbButton12.Enabled:=false;

end;

procedure Tfrmavtocard.DBGrid_ShinDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid_Shin.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid_Shin.Canvas.Brush.Color:=$EFE3DF
  else
  begin
    if Column.Field.Dataset.FieldByName('spisan').AsString <> '' then
          DBGrid_Shin.Canvas.Brush.Color:=clRed;
   end;
DBGrid_Shin.DefaultDrawColumnCell(Rect, DataCol, Column, State)

end;

procedure Tfrmavtocard.LbButton18Click(Sender: TObject);
var
id_shin:integer;
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ ����? (�������� �������� � �������� ���� ������� ����)',
    2,mtConfirmation) = mrYes then
begin
id_shin:=dm.StoredProc_shin.Fields[0].AsInteger;
if dm.StoredProc_shin.Active then
dm.StoredProc_shin.Active:=false;
dm.StoredProc_shin.Parameters.Clear;
dm.StoredProc_shin.ProcedureName:='DelShin;1';
dm.StoredProc_shin.Parameters.AddParameter;
dm.StoredProc_shin.Parameters[0].Name:='@RETURN_VALUE';
dm.StoredProc_shin.Parameters[0].DataType:=ftInteger;
dm.StoredProc_shin.Parameters[0].Direction:=pdReturnValue;
dm.StoredProc_shin.Parameters.AddParameter;
dm.StoredProc_shin.Parameters[1].Name:='@id';
dm.StoredProc_shin.Parameters[1].DataType:=ftInteger;
dm.StoredProc_shin.Parameters[1].Value:=id_shin;
try
dm.StoredProc_shin.ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListShin;
end;

end;

procedure Tfrmavtocard.LbButton17Click(Sender: TObject);
begin
EditCountShinAdd.Visible:=false;
LabelCountShinAdd.Visible:=false;
  Main.listAvt_From:=3;
  Application.CreateForm(Tfrmsearch, frmsearch);
  frmsearch.List_Avto;
  frmsearch.ShowModal;
  ListShin;

end;

procedure Tfrmavtocard.LbButton20Click(Sender: TObject);
begin
if dm.storedProc_ShinProbeg.Active then
dm.storedProc_ShinProbeg.Active:=false;
Panel_Probeg.Visible:=false;
Panel_ShineList.Enabled:= not Panel_Probeg.Visible;
end;

procedure Tfrmavtocard.DBGrid_ShinDblClick(Sender: TObject);
var
i:Integer;
begin
if dm.StoredProc_shin.Fields[0].AsInteger<>0 then
begin
CheckBox1.Checked:=true;
year_edit_probeg.Text:=IntToStr(CurrentYear);
ComboBox2.Items.Clear;
ComboBox2.Items.Add('���');
for i:=1 to 30 do
ComboBox2.Items.Add(IntToStr(1994+i));

ListShinProbeg(dm.StoredProc_shin.Fields[0].AsInteger,dm.tAvto.Fields[0].AsInteger,'���');



StringGrid1.ColWidths[0]:=150;
StringGrid1.ColWidths[1]:=70;
DBGrid_Probeg.Columns.Clear;
DBGrid_Probeg.Columns.Add;
DBGrid_Probeg.Columns[0].FieldName:='id_shin';
DBGrid_Probeg.Columns[0].Width:=0;
DBGrid_Probeg.Columns.Add;
DBGrid_Probeg.Columns[1].Title.Caption:='���';
DBGrid_Probeg.Columns[1].FieldName:='year';
DBGrid_Probeg.Columns[1].Width:=40;
DBGrid_Probeg.Columns.Add;
DBGrid_Probeg.Columns[2].Title.Caption:='�������';
DBGrid_Probeg.Columns[2].FieldName:='kv';
DBGrid_Probeg.Columns[2].Width:=70;
DBGrid_Probeg.Columns.Add;
DBGrid_Probeg.Columns[3].Title.Caption:='�� �������';
DBGrid_Probeg.Columns[3].FieldName:='val';
DBGrid_Probeg.Columns[3].Width:=70;
{DBGrid_Probeg.Columns.Add;
DBGrid_Probeg.Columns[4].Title.Caption:='�����';
DBGrid_Probeg.Columns[4].FieldName:='s';
DBGrid_Probeg.Columns[4].Width:=70;    }
Panel_Probeg.Visible:=true;
Panel_ShineList.Enabled:= not Panel_Probeg.Visible;
if Main.UserRole in [ADMIN_USER,TECH_USER] then
begin
LbButton19.Enabled:=false;
LbButton_DelProbeg.Enabled:=true;
end else
begin
Panel3.Visible:=false;
LbButton_DelProbeg.Visible:=false;
end;
end;
end;

procedure Tfrmavtocard.DBGrid_ProbegColExit(Sender: TObject);
begin
if dm.storedProc_ShinProbegShort.Modified then
  dm.storedProc_ShinProbegShort.Post;
end;

procedure Tfrmavtocard.DBGrid_ProbegDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
DBGrid_Probeg.Canvas.Font.Color :=clBlack;
if gdSelected in state then
  DBGrid_Probeg.Canvas.Brush.Color:=$EFE3DF
  else
  DBGrid_Probeg.Canvas.Brush.Color:=clWhite;
  DBGrid_Probeg.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrmavtocard.ListShinProbeg(id,id_avt:Integer;Year:String);
var
allVal:real;
begin
if dm.storedProc_ShinProbegShort.Active then
dm.storedProc_ShinProbegShort.Active:=false;
with dm.storedProc_ShinProbegShort do
begin
Parameters.Clear;
ProcedureName:='GetShinListProbegShort;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@id_shin';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=id;
Parameters.AddParameter;
Parameters[2].Name:='@year';
Parameters[2].DataType:=ftInteger;
if (Year<>'���') then
Parameters[2].Value:=StrToInt(Year)
else
Parameters[2].Value:=0;
Open;
allVal:=0;
while not eof do
begin
allVal:=allVal+Fields[3].AsFloat;
next;
end;
StringGrid1.Cells[0,0]:='����� ������';
StringGrid1.Cells[1,0]:=FloatToStr(allVal);


end;

{if dm.storedProc_ShinProbeg.Active then
dm.storedProc_ShinProbeg.Active:=false;
with dm.storedProc_ShinProbeg do
begin
Parameters.Clear;
ProcedureName:='GetShinListProbeg;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@id_shin';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=id;
Parameters.AddParameter;
Parameters[2].Name:='@year';
Parameters[2].DataType:=ftInteger;
if (Year<>'���') then
Parameters[2].Value:=StrToInt(Year)
else
Parameters[2].Value:=0;
Parameters.AddParameter;
Parameters[3].Name:='@id_avt';
Parameters[3].DataType:=ftInteger;
Parameters[3].Value:=0;
Open;
Last;
StringGrid1.Cells[0,0]:='����� ������';
StringGrid1.Cells[1,0]:=Fields[4].AsString;
end;     }




if dm.storedProc_ShinProbeg.Active then
dm.storedProc_ShinProbeg.Active:=false;
with dm.storedProc_ShinProbeg do
begin
Parameters.Clear;
ProcedureName:='GetShinListProbeg;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@id_shin';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=id;
Parameters.AddParameter;
Parameters[2].Name:='@year';
Parameters[2].DataType:=ftInteger;
if (Year<>'���') then
Parameters[2].Value:=StrToInt(Year)
else
Parameters[2].Value:=0;
Parameters.AddParameter;
Parameters[3].Name:='@id_avt';
Parameters[3].DataType:=ftInteger;
Parameters[3].Value:=id_avt;
Open;
end;

end;

procedure Tfrmavtocard.ComboBox2Change(Sender: TObject);
begin
if ComboBox2.Text='' then ComboBox2.Text:='���';
if CheckBox1.Checked then
ListShinProbeg(dm.StoredProc_shin.Fields[0].AsInteger,dm.tAvto.Fields[0].AsInteger,ComboBox2.Text)
else
ListShinProbeg(dm.StoredProc_shin.Fields[0].AsInteger,0,ComboBox2.Text);
end;

procedure Tfrmavtocard.year_edit_probeg1Change(Sender: TObject);
begin
LbButton19.Enabled:=true;
end;

procedure Tfrmavtocard.LbButton19Click(Sender: TObject);
begin
if ComboBox_kv.Text<>'' then
begin
if dm.storedProc_ShinProbeg.Active then
dm.storedProc_ShinProbeg.Active:=false;
with dm.storedProc_ShinProbeg do
begin
Parameters.Clear;
ProcedureName:='SetShinProbeg;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@id_shin';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=dm.StoredProc_shin.Fields[0].AsInteger;
Parameters.AddParameter;
Parameters[2].Name:='@year';
Parameters[2].DataType:=ftInteger;
Parameters[2].Value:=StrToInt(year_edit_probeg.Text);
Parameters.AddParameter;
Parameters[3].Name:='@kv';
Parameters[3].DataType:=ftInteger;
if ComboBox_kv.Text='I �������' then
Parameters[3].Value:=1;
if ComboBox_kv.Text='II �������' then
Parameters[3].Value:=2;
if ComboBox_kv.Text='III �������' then
Parameters[3].Value:=3;
if ComboBox_kv.Text='IV �������' then
Parameters[3].Value:=4;
Parameters.AddParameter;
Parameters[4].Name:='@val';
Parameters[4].DataType:=ftFloat;
Parameters[4].Value:=RxCalcEdit1.Value;
Parameters.AddParameter;
Parameters[5].Name:='@id_avt';
Parameters[5].DataType:=ftInteger;
Parameters[5].Value:=dm.tAvto.Fields[0].AsInteger;
Parameters.AddParameter;
Parameters[6].Name:='@what';
Parameters[6].DataType:=ftInteger;
Parameters[6].Value:=0;
try
ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListShinProbeg(dm.StoredProc_shin.Fields[0].AsInteger,dm.tAvto.Fields[0].AsInteger,'���');
end;
ComboBox_kv.Text:='';
RxCalcEdit1.Value:=0;
LbButton19.Caption:='��������';
LbButton19.Enabled:=false;
end else
Main.ATXMessageDlg('�� ��������� ���� "�������"!',1,mtError);
end;

procedure Tfrmavtocard.LbButton_DelProbegClick(Sender: TObject);
var
yearDel:Integer;
kvDel:Integer;
begin
  if Main.ATXMessageDlg('�� �������, ��� ������ ������� ������ ������?',
    2,mtConfirmation) = mrYes then
begin
yearDel:=dm.storedProc_ShinProbeg.Fields[1].AsInteger;
kvDel:=dm.storedProc_ShinProbeg.Fields[2].AsInteger;
if dm.storedProc_ShinProbeg.Active then
dm.storedProc_ShinProbeg.Active:=false;
with dm.storedProc_ShinProbeg do
begin
Parameters.Clear;
ProcedureName:='SetShinProbeg;1';
Parameters.AddParameter;
Parameters[0].Name:='@RETURN_VALUE';
Parameters[0].DataType:=ftInteger;
Parameters[0].Direction:=pdReturnValue;
Parameters.AddParameter;
Parameters[1].Name:='@id_shin';
Parameters[1].DataType:=ftInteger;
Parameters[1].Value:=dm.StoredProc_shin.Fields[0].AsInteger;
Parameters.AddParameter;
Parameters[2].Name:='@year';
Parameters[2].DataType:=ftInteger;
Parameters[2].Value:=yearDel;
Parameters.AddParameter;
Parameters[3].Name:='@kv';
Parameters[3].DataType:=ftInteger;
Parameters[3].Value:=kvDel;
Parameters.AddParameter;
Parameters[4].Name:='@val';
Parameters[4].DataType:=ftFloat;
Parameters[4].Value:=0;
Parameters.AddParameter;
Parameters[5].Name:='@id_avt';
Parameters[5].DataType:=ftInteger;
Parameters[5].Value:=dm.tAvto.Fields[0].AsInteger;
Parameters.AddParameter;
Parameters[6].Name:='@what';
Parameters[6].DataType:=ftInteger;
Parameters[6].Value:=1;
try
ExecProc;
dm.CommitTR;
except
dm.RollBTR
end;
ListShinProbeg(dm.StoredProc_shin.Fields[0].AsInteger,dm.tAvto.Fields[0].AsInteger,'���');
end;
end;
end;

procedure Tfrmavtocard.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  l_YPos, l_XPos, i: integer;
  s, s1: string;
  l_col, l_row: longint;
  SG:TStringGrid;
begin
  l_col := acol;
  l_row := arow;
  SG:=sender as tstringgrid;
  with sender as tstringgrid do
  begin
      l_XPos := rect.left;
      l_YPos:=rect.top;
      s := cells[l_col, l_row];
    if (gdSelected in State) then
    begin
      canvas.Brush.Color := clWhite;
      canvas.Font.Color:=clBlack;
    end;
    canvas.FillRect(Rect);
    SetBkMode(Handle, TRANSPARENT);
    canvas.textrect(rect,l_Xpos,l_YPos,s);
   end;


end;

procedure Tfrmavtocard.ToolButton5Click(Sender: TObject);
begin
Application.ProcessMessages;
Main.CreateZayvkaAvtoCard(1,dm.tAvto.Fields[0].AsInteger,Mark_box.Text+' - '+dm.tAvto.Fields[7].AsString+' �'+dm.tAvto.Fields[8].AsString);
Application.ProcessMessages;
end;

procedure Tfrmavtocard.LbButton21Click(Sender: TObject);
begin
ComboBox_kv.Text:='';
RxCalcEdit1.Value:=0;
LbButton19.Caption:='��������';
LbButton19.Enabled:=false;
end;

procedure Tfrmavtocard.Numb1_editEnter(Sender: TObject);
var
i:integer;
begin
for i:=0 to ComponentCount-1 do
begin
if Components[i].ClassType=TDBEdit then
(Components[i] as TDBEdit).Color:=clWhite;
if Components[i].ClassType=TDBLookupComboBox then
(Components[i] as TDBLookupComboBox).Color:=clWhite;
if Components[i].ClassType=TComboBox then
(Components[i] as TComboBox).Color:=clWhite;
if Components[i].ClassType=TDBDateEdit then
(Components[i] as TDBDateEdit).Color:=clWhite;
if Components[i].ClassType=TDBEdit then
(Components[i] as TDBEdit).Color:=clWhite;
if Components[i].ClassType=TComboBox then
(Components[i] as TComboBox).Color:=clWhite;
end;
    if Sender.ClassType=TDBEdit then
        if (Sender as TDBEdit).Focused then
            (Sender as TDBEdit).Color:=$00D3BB9A;
    if Sender.ClassType=TDBLookupComboBox then
        if (Sender as TDBLookupComboBox).Focused then
            (Sender as TDBLookupComboBox).Color:=$00D3BB9A;
    if Sender.ClassType=TComboBox then
        if (Sender as TComboBox).Focused then
            (Sender as TComboBox).Color:=$00D3BB9A;
    if Sender.ClassType=TComboBox then
        if (Sender as TComboBox).Focused then
            (Sender as TComboBox).Color:=$00D3BB9A;
    if Sender.ClassType=TDBDateEdit then
        if (Sender as TDBDateEdit).Focused then
            (Sender as TDBDateEdit).Color:=$00D3BB9A;
    if Sender.ClassType=TDBEdit then
        if (Sender as TDBEdit).Focused then
            (Sender as TDBEdit).Color:=$00D3BB9A;
 ElDBEdit4.Color:=$00EDE3D6;
end;

procedure Tfrmavtocard.LbButton22Click(Sender: TObject);
var
a,b:integer;
begin
//a:=dm.StoredProc_shin.Fields[0].AsInteger;
//b:=dm.tAvto.Fields[0].AsInteger;
//ListShinProbeg(a,0,'���');
Main.CreateReportShine;
//ListShinProbeg(a,b,'���');
end;

procedure Tfrmavtocard.LbButton23Click(Sender: TObject);
begin
Main.CreateReportAKB;
end;

procedure Tfrmavtocard.LbButton24Click(Sender: TObject);
begin
Main.CreateReportAvtoCard;
end;

procedure Tfrmavtocard.LbButton25Click(Sender: TObject);
begin
Main.CreateReportAvtoCard_Akt;
end;

procedure Tfrmavtocard.LbButton26Click(Sender: TObject);
begin
Panel_Add_Dtp.Visible:=false;
  Panel_DTP.Enabled:= not Panel_Add_Dtp.Visible;

end;

procedure Tfrmavtocard.RxDBLookupCombo1Change(Sender: TObject);
begin
//888888888888888888

    RxDBLookupList1.KeyField:='';
    RxDBLookupList1.ListField:='';
    RxDBLookupList1.ListSource:=nil;

with dm do
begin
if (tAvto.Fields[6].AsVariant<>null) and (Model_edit.Text<>'') and (tAvto.Fields[47].AsVariant<>null)
then begin
    ADOQuery1.Close;
    ADOQuery1.Parameters.ParamValues['par0']:=Mark_box.KeyValue;
    ADOQuery1.Parameters.ParamValues['par1']:=Mark_box.KeyValue;
    ADOQuery1.Parameters.ParamValues['par2']:=Trim(Model_edit.Text);
    ADOQuery1.Parameters.ParamValues['par3']:=RxDBLookupCombo1.KeyValue;
    ADOQuery1.Open;
    if(not ADOQuery1.Eof) then begin
    RxDBLookupList1.ListSource:=dm.DataSource3;
    RxDBLookupList1.KeyField:='id';
    RxDBLookupList1.ListField:='name';
    end;
end;
end;

end;

end.



program ATX;

uses
  Forms,
  AboutUnit in 'AboutUnit.pas' {AboutBox},
  main_u in 'main_u.pas' {Main},
  dm_u in 'dm_u.pas' {dm: TDataModule},
  auth_u in 'auth_u.pas' {frmauth},
  users_u in 'users_u.pas' {frmusers},
  avtocard_u in 'avtocard_u.pas' {frmavtocard},
  libr_u in 'libr_u.pas' {frmLibr},
  search_u in 'search_u.pas' {frmsearch},
  expl_u in 'expl_u.pas' {frmExpl},
  explCard_u in 'explCard_u.pas' {frmExplCard},
  report_u in 'report_u.pas' {frmreport},
  report2_u in 'report2_u.pas' {frmreport2},
  shtat_u in 'shtat_u.pas' {frmShtatSetting},
  shtat_e_u in 'shtat_e_u.pas' {frmShtatEdit},
  listavto_u in 'listavto_u.pas' {frmListAvto},
  activate_u in 'activate_u.pas' {frmActivate},
  SetActive in 'SetActive.pas',
  Slash_u in 'Slash_u.pas' {Slash},
  loaddata_u in 'loaddata_u.pas' {frmLoadData},
  messDlg_u in 'messDlg_u.pas' {frmMessDlg},
  print_shtate_u in 'print_shtate_u.pas' {Print_shtate},
  libModel_u in 'libModel_u.pas' {frmLibModel},
  libBaseGsm_u in 'libBaseGsm_u.pas' {frmLidBaseGsm},
  yearExpl_u in 'yearExpl_u.pas' {frmYearExpl},
  finGsm_u in 'finGsm_u.pas' {frmFinGSM},
  remont_u in 'remont_u.pas' {frmRemont},
  libr_lim_probeg_u in 'libr_lim_probeg_u.pas' {frmLimProbeg},
  libShinaLimit_u in 'libShinaLimit_u.pas' {frmLidShinaLimit},
  zayvka_u in 'zayvka_u.pas' {frmZayvka};

{$R *.res}

begin
try
Slash := TSlash.Create(Application);
Slash.Show;
Slash.Update;
  Application.Initialize;
  Application.Title := '������������ ���';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TfrmZayvka, frmZayvka);
  Slash.chekUpdate;
  Application.CreateForm(TPrint_shtate, Print_shtate);
  Application.CreateForm(TfrmLidShinaLimit, frmLidShinaLimit);
  Slash.Hide;
 finally
 Slash.Free;
 end;
Application.Run;

end.

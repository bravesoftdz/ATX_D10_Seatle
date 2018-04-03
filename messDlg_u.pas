unit messDlg_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LbStaticText, ExtCtrls, LbButton, StdCtrls, rxAnimate, rxGIFCtrl,
  Vcl.Imaging.GIFImg;

type
  TfrmMessDlg = class(TForm)
    Panel1: TPanel;
    LbStaticText1: TLbStaticText;
    Panel2: TPanel;
    Panel3: TPanel;
    LbB_Ok: TLbButton;
    LbB_Yes: TLbButton;
    LbB_Not: TLbButton;
    LbB_Cancel: TLbButton;
    Label1: TLabel;
    Panel4: TPanel;
    xConf2: TImage;
    xError2: TImage;
    xInf2: TImage;
    xWar2: TImage;
    procedure LbB_OkClick(Sender: TObject);
    procedure LbB_CancelClick(Sender: TObject);
    procedure LbStaticText1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ATXShowMessage(str:String);
    procedure ATXMessageDlg(str:String;tBtn:byte;tMessType:TMsgDlgType);
  protected
    procedure CreateParams(var Params: TCreateParams); override;

  end;

var
  frmMessDlg: TfrmMessDlg;

implementation

uses main_u;

{$R *.dfm}
procedure TfrmMessDlg.Createparams(var Params: TCreateParams);
begin
  inherited CreateParams( Params );
  with Params do
  begin
    Style := Style or ws_Overlapped;
    WndParent := Main.Handle;
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
  end;

end;

procedure TfrmMessDlg.ATXShowMessage(str:String);
begin
Label1.Caption:=str;
LbStaticText1.Caption:='���������';
frmMessDlg.Width:=Label1.Width+50;
if frmMessDlg.Width<350 then frmMessDlg.Width:=350;
frmMessDlg.Height:=Label1.Height+50+Panel3.Height;
LbB_Ok.Left:=(Panel3.Width div 2)-(LbB_Ok.Width div 2);
LbB_Ok.Visible:=true;
end;

procedure TfrmMessDlg.ATXMessageDlg(str:String;tBtn:byte;tMessType:TMsgDlgType);
begin
Label1.Caption:=#13+str;
Label1.Update;
frmMessDlg.Width:=Label1.Width+50;
if frmMessDlg.Width<250 then frmMessDlg.Width:=250;
frmMessDlg.Height:=Label1.Height+50+Panel3.Height;
case tMessType of
mtCustom:LbStaticText1.Caption:='���������';
mtInformation:begin frmMessDlg.Width:=frmMessDlg.Width+55; xInf2.Visible:=true; LbStaticText1.Caption:='����������';end;
mtWarning:begin frmMessDlg.Width:=frmMessDlg.Width+55; xWar2.Visible:=true; LbStaticText1.Caption:='��������������';end;
mtError:begin frmMessDlg.Width:=frmMessDlg.Width+55; xError2.Visible:=true; LbStaticText1.Caption:='������';end;
mtConfirmation:begin frmMessDlg.Width:=frmMessDlg.Width+55; xConf2.Visible:=true; LbStaticText1.Caption:='�������������';end;
end;
case tBtn of
1:begin
LbB_Ok.Left:=(Panel3.Width div 2)-(LbB_Ok.Width div 2);
LbB_Ok.Visible:=true;
end;
2:begin
LbB_Yes.Left:=(Panel3.Width div 2)-LbB_Yes.Width-5;
LbB_Not.Left:=(Panel3.Width div 2)+5;
LbB_Yes.Visible:=true;
LbB_Not.Visible:=true;
end;
3:begin
LbB_Not.Left:=(Panel3.Width div 2)-(LbB_Not.Width div 2);
LbB_Yes.Left:=LbB_Not.Left-LbB_Yes.Width-5;
LbB_Cancel.Left:=LbB_Not.Left+LbB_Cancel.Width+5;
LbB_Yes.Visible:=true;
LbB_Not.Visible:=true;
LbB_Cancel.Visible:=true;
end;
end;//case
end;

procedure TfrmMessDlg.LbB_OkClick(Sender: TObject);
begin
Close;
end;

procedure TfrmMessDlg.Label1Click(Sender: TObject);
begin
//
end;

procedure TfrmMessDlg.LbB_CancelClick(Sender: TObject);
begin
Close;
end;

procedure TfrmMessDlg.LbStaticText1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.

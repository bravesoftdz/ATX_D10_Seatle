object frmLidShinaLimit: TfrmLidShinaLimit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1051#1080#1084#1080#1090#1099' '#1087#1088#1086#1073#1077#1075#1072' '#1096#1080#1085
  ClientHeight = 162
  ClientWidth = 533
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 533
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Color = 15590358
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 35
      Height = 13
      Caption = #1056#1072#1079#1084#1077#1088
    end
    object Label2: TLabel
      Left = 216
      Top = 8
      Width = 66
      Height = 13
      Caption = #1050#1086#1085#1089#1090#1088#1091#1082#1094#1080#1103
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 18
      Height = 13
      Caption = #1058#1080#1087
    end
    object Label4: TLabel
      Left = 8
      Top = 79
      Width = 31
      Height = 13
      Caption = #1051#1080#1084#1080#1090
    end
    object Shina_R_box: TRxDBLookupCombo
      Left = 54
      Top = 7
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'id'
      LookupDisplay = 'name'
      LookupSource = dm.dss_sh_r
      TabOrder = 0
      OnChange = Shina_R_boxChange
    end
    object Shina_K_box: TRxDBLookupCombo
      Left = 294
      Top = 7
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'id'
      LookupDisplay = 'name'
      LookupSource = dm.dss_sh_k
      TabOrder = 1
      OnChange = Shina_R_boxChange
    end
    object Shina_T_box: TRxDBLookupCombo
      Left = 54
      Top = 39
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'id'
      LookupDisplay = 'name'
      LookupSource = dm.dss_sh_t
      TabOrder = 2
      OnChange = Shina_R_boxChange
    end
    object lim_value_edit: TDBEdit
      Left = 54
      Top = 76
      Width = 121
      Height = 21
      DataField = 'lim_value'
      DataSource = dm.dss_shina_limit
      TabOrder = 3
      OnKeyPress = lim_value_editKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 109
    Width = 533
    Height = 53
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object LbB_Cancel: TLbButton
      Left = 114
      Top = 11
      Width = 100
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      Color = 13876122
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ModalResult = 0
      ParentColor = False
      ParentFont = False
      Style = bsModern
      TabOrder = 0
      UseHotTrackFont = False
      OnClick = LbB_CancelClick
    end
    object LbB_Post: TLbButton
      Left = 8
      Top = 11
      Width = 100
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Color = 13876122
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      ModalResult = 0
      ParentColor = False
      ParentFont = False
      Style = bsModern
      TabOrder = 1
      UseHotTrackFont = False
      OnClick = LbB_PostClick
    end
  end
end

object frmYearExpl: TfrmYearExpl
  Left = 463
  Top = 232
  BorderIcons = [biSystemMenu]
  Caption = #1053#1072#1076#1073#1072#1074#1082#1072' '#1079#1072' '#1089#1090#1072#1088#1077#1085#1080#1077
  ClientHeight = 349
  ClientWidth = 524
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 265
    Width = 524
    Height = 84
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object LbB_New: TLbButton
      Left = 8
      Top = 51
      Width = 100
      Height = 25
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      Color = 13876122
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
      OnClick = LbB_NewClick
    end
    object LbB_Cancel: TLbButton
      Left = 216
      Top = 51
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
      TabOrder = 1
      UseHotTrackFont = False
      OnClick = LbB_CancelClick
    end
    object LbB_Post: TLbButton
      Left = 320
      Top = 51
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
      TabOrder = 2
      UseHotTrackFont = False
      OnClick = LbB_PostClick
    end
    object LbB_Del: TLbButton
      Left = 424
      Top = 51
      Width = 100
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Color = clMaroon
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
      TabOrder = 3
      UseHotTrackFont = False
      Visible = False
      OnClick = LbB_DelClick
    end
    object LbB_Last: TLbButton
      Left = 320
      Top = 19
      Width = 100
      Height = 25
      Hint = #1042' '#1082#1086#1085#1077#1094
      Caption = '>>>>'
      Color = 13876122
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
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      TabOrder = 4
      UseHotTrackFont = False
      OnClick = LbB_LastClick
    end
    object LbB_Next: TLbButton
      Left = 216
      Top = 19
      Width = 100
      Height = 25
      Hint = #1042#1087#1077#1088#1077#1076
      Caption = '>>'
      Color = 13876122
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
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      TabOrder = 5
      UseHotTrackFont = False
      OnClick = LbB_NextClick
    end
    object LbB_Prior: TLbButton
      Left = 112
      Top = 19
      Width = 100
      Height = 25
      Hint = #1053#1072#1079#1072#1076
      Caption = '<<'
      Color = 13876122
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
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      TabOrder = 6
      UseHotTrackFont = False
      OnClick = LbB_PriorClick
    end
    object LbB_First: TLbButton
      Left = 8
      Top = 19
      Width = 100
      Height = 25
      Hint = #1042' '#1085#1072#1095#1072#1083#1086
      Caption = '<<<<'
      Color = 13876122
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
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      TabOrder = 7
      UseHotTrackFont = False
      OnClick = LbB_FirstClick
    end
    object LbB_Edit: TLbButton
      Left = 112
      Top = 51
      Width = 100
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Color = 13876122
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
      TabOrder = 8
      UseHotTrackFont = False
      OnClick = LbB_EditClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 213
    Width = 524
    Height = 52
    Align = alBottom
    BevelOuter = bvNone
    Color = 15590358
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 162
      Height = 13
      Caption = #1057' '#1074#1099#1096#1077' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1093' '#1074#1077#1083#1077#1095#1080#1085
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 161
      Height = 21
      DataField = 'val'
      DataSource = dm.dss_yearexplbig
      TabOrder = 0
      OnEnter = DBEdit1Enter
    end
    object LbButton1: TLbButton
      Left = 176
      Top = 19
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
      OnClick = LbButton1Click
    end
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 0
    Width = 524
    Height = 213
    Align = alClient
    Ctl3D = False
    DataSource = dm.dss_yearexpl
    FixedColor = 15590358
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end

object frmExplCard: TfrmExplCard
  Left = 226
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1069#1082#1089#1087#1083#1091#1090#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
  ClientHeight = 418
  ClientWidth = 582
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object EditPanel: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    Visible = False
    object Label16: TLabel
      Left = 5
      Top = 5
      Width = 46
      Height = 13
      Caption = 'Label16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox6: TGroupBox
      Left = 0
      Top = 369
      Width = 582
      Height = 49
      Align = alBottom
      TabOrder = 4
      object LbB_Cancel: TLbButton
        Left = 3
        Top = 16
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
        Left = 107
        Top = 16
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
    object GroupBox3: TGroupBox
      Left = 408
      Top = 19
      Width = 174
      Height = 297
      Caption = #1058#1054
      TabOrder = 2
      object Label13: TLabel
        Left = 5
        Top = 27
        Width = 21
        Height = 13
        Caption = #1058#1054'1'
      end
      object Label14: TLabel
        Left = 5
        Top = 67
        Width = 21
        Height = 13
        Caption = #1058#1054'2'
      end
      object Label15: TLabel
        Left = 5
        Top = 107
        Width = 14
        Height = 13
        Caption = #1050#1056
      end
      object Label17: TLabel
        Left = 8
        Top = 184
        Width = 62
        Height = 13
        Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1081
      end
      object DBEdit13: TDBEdit
        Left = 40
        Top = 28
        Width = 105
        Height = 21
        DataField = 'to1'
        DataSource = ds_card
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 40
        Top = 68
        Width = 105
        Height = 21
        DataField = 'to2'
        DataSource = ds_card
        TabOrder = 1
      end
      object DBEdit15: TDBEdit
        Left = 40
        Top = 108
        Width = 105
        Height = 21
        DataField = 'kp'
        DataSource = ds_card
        TabOrder = 2
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 200
        Width = 153
        Height = 89
        DataField = 'comm'
        DataSource = ds_card
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 200
      Top = 19
      Width = 201
      Height = 214
      Caption = #1043#1057#1052
      TabOrder = 1
      object Label8: TLabel
        Left = 5
        Top = 19
        Width = 52
        Height = 26
        Caption = #1053#1072' '#1085#1072#1095#1072#1083#1086#13#10#1084#1077#1089#1103#1094#1072
      end
      object Label9: TLabel
        Left = 5
        Top = 59
        Width = 39
        Height = 13
        Caption = #1042#1099#1076#1072#1085#1086
      end
      object Label10: TLabel
        Left = 5
        Top = 99
        Width = 47
        Height = 26
        Caption = #1053#1072' '#1082#1086#1085#1077#1094#13#10#1084#1077#1089#1103#1094#1072
      end
      object Label11: TLabel
        Left = 5
        Top = 139
        Width = 34
        Height = 13
        Caption = #1053#1086#1088#1084#1072
      end
      object Label12: TLabel
        Left = 5
        Top = 179
        Width = 79
        Height = 13
        Caption = #1048#1079#1088#1072#1089#1093#1086#1076#1086#1074#1072#1085#1086
      end
      object DBEdit8: TDBEdit
        Left = 88
        Top = 24
        Width = 105
        Height = 21
        DataField = 'gsm_begin_m'
        DataSource = ds_card
        TabOrder = 0
      end
      object DBEdit9: TDBEdit
        Left = 88
        Top = 64
        Width = 105
        Height = 21
        DataField = 'gsm_given'
        DataSource = ds_card
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 88
        Top = 104
        Width = 105
        Height = 21
        DataField = 'gsm_end_m'
        DataSource = ds_card
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 88
        Top = 144
        Width = 105
        Height = 21
        DataField = 'gsm_norma'
        DataSource = ds_card
        TabOrder = 3
      end
      object DBEdit12: TDBEdit
        Left = 88
        Top = 184
        Width = 105
        Height = 21
        DataField = 'gsm_out'
        DataSource = ds_card
        TabOrder = 4
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 19
      Width = 193
      Height = 297
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 19
        Width = 54
        Height = 26
        Caption = #1044#1085#1077#1081#13#10#1089#1087#1080#1089#1086#1095#1085#1099#1093
      end
      object Label2: TLabel
        Left = 5
        Top = 59
        Width = 56
        Height = 26
        Caption = #1044#1085#1077#1081' '#1074#13#10#1080#1089#1087#1088#1072#1074#1085#1086#1084
      end
      object Label3: TLabel
        Left = 5
        Top = 99
        Width = 64
        Height = 26
        Caption = #1044#1085#1077#1081#13#10#1101#1082#1087#1083#1091#1072#1090#1072#1094#1080#1080
      end
      object Label4: TLabel
        Left = 5
        Top = 139
        Width = 43
        Height = 26
        Caption = #1044#1085#1077#1081' '#1074#13#10#1088#1077#1084#1086#1085#1090#1077
      end
      object Label5: TLabel
        Left = 5
        Top = 179
        Width = 41
        Height = 26
        Caption = #1063#1072#1089#1086#1074' '#1074#13#10#1085#1072#1088#1103#1076#1077
      end
      object Label6: TLabel
        Left = 5
        Top = 219
        Width = 64
        Height = 26
        Caption = #1053#1086#1088#1084#1072#13#10#1087#1088#1086#1073#1077#1075#1072' ('#1082#1084')'
      end
      object Label7: TLabel
        Left = 5
        Top = 259
        Width = 69
        Height = 26
        Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081#13#10#1087#1088#1086#1073#1077#1075' ('#1082#1084')'
      end
      object DBEdit7: TDBEdit
        Left = 80
        Top = 264
        Width = 105
        Height = 21
        DataField = 'fact_run'
        DataSource = ds_card
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 24
        Width = 105
        Height = 21
        AutoSize = False
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DataField = 'd_out'
        DataSource = ds_card
        ParentBiDiMode = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 64
        Width = 105
        Height = 21
        DataField = 'd_good'
        DataSource = ds_card
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 80
        Top = 104
        Width = 105
        Height = 21
        DataField = 'd_operational'
        DataSource = ds_card
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 80
        Top = 144
        Width = 105
        Height = 21
        DataField = 'd_remont'
        DataSource = ds_card
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 80
        Top = 184
        Width = 105
        Height = 21
        DataField = 'h_order'
        DataSource = ds_card
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 80
        Top = 224
        Width = 105
        Height = 21
        DataField = 'norma_run'
        DataSource = ds_card
        TabOrder = 5
      end
    end
    object GroupBox10: TGroupBox
      Left = 200
      Top = 235
      Width = 201
      Height = 81
      Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1087#1080#1076#1086#1084#1077#1090#1088#1072
      TabOrder = 3
      object Label36: TLabel
        Left = 5
        Top = 20
        Width = 78
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072
      end
      object Label37: TLabel
        Left = 5
        Top = 52
        Width = 72
        Height = 13
        Caption = #1050#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072
      end
      object DBEdit16: TDBEdit
        Left = 88
        Top = 20
        Width = 105
        Height = 21
        DataField = 'speed_begin'
        DataSource = ds_card
        TabOrder = 0
      end
      object DBEdit17: TDBEdit
        Left = 88
        Top = 52
        Width = 105
        Height = 21
        DataField = 'speed_end'
        DataSource = ds_card
        TabOrder = 1
      end
    end
  end
  object AddPanel: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    Visible = False
    object GroupBox4: TGroupBox
      Left = 0
      Top = 369
      Width = 582
      Height = 49
      Align = alBottom
      TabOrder = 7
      object LbB_Cancel2: TLbButton
        Left = 3
        Top = 16
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
      object LbB_Save2: TLbButton
        Left = 107
        Top = 16
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
      object LbButton2: TLbButton
        Left = 211
        Top = 16
        Width = 100
        Height = 25
        Caption = #1047#1072#1082#1088#1099#1090#1100
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
        TabOrder = 2
        UseHotTrackFont = False
        OnClick = bclClick
      end
    end
    object GroupBox5: TGroupBox
      Left = 408
      Top = 43
      Width = 174
      Height = 297
      Caption = #1058#1054
      TabOrder = 5
      object Label18: TLabel
        Left = 5
        Top = 27
        Width = 21
        Height = 13
        Caption = #1058#1054'1'
      end
      object Label19: TLabel
        Left = 5
        Top = 67
        Width = 21
        Height = 13
        Caption = #1058#1054'2'
      end
      object Label20: TLabel
        Left = 5
        Top = 107
        Width = 14
        Height = 13
        Caption = #1050#1056
      end
      object Label33: TLabel
        Left = 8
        Top = 184
        Width = 62
        Height = 13
        Caption = #1050#1086#1084#1077#1085#1090#1072#1088#1080#1081
      end
      object to1Edit: TRxCalcEdit
        Left = 56
        Top = 24
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 0
        OnChange = d_outEditChange
      end
      object to2Edit: TRxCalcEdit
        Left = 56
        Top = 64
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 1
        OnChange = d_outEditChange
      end
      object kpEdit: TRxCalcEdit
        Left = 56
        Top = 104
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 2
        OnChange = d_outEditChange
      end
      object Memo_comm: TMemo
        Left = 8
        Top = 200
        Width = 153
        Height = 89
        TabOrder = 3
        OnChange = d_outEditChange
      end
    end
    object GroupBox7: TGroupBox
      Left = 200
      Top = 43
      Width = 201
      Height = 214
      Caption = #1043#1057#1052
      TabOrder = 4
      object Label21: TLabel
        Left = 5
        Top = 19
        Width = 52
        Height = 26
        Caption = #1053#1072' '#1085#1072#1095#1072#1083#1086#13#10#1084#1077#1089#1103#1094#1072
      end
      object Label22: TLabel
        Left = 5
        Top = 59
        Width = 39
        Height = 13
        Caption = #1042#1099#1076#1072#1085#1086
      end
      object Label23: TLabel
        Left = 5
        Top = 99
        Width = 47
        Height = 26
        Caption = #1053#1072' '#1082#1086#1085#1077#1094#13#10#1084#1077#1089#1103#1094#1072
      end
      object Label24: TLabel
        Left = 5
        Top = 139
        Width = 34
        Height = 13
        Caption = #1053#1086#1088#1084#1072
      end
      object Label25: TLabel
        Left = 5
        Top = 179
        Width = 79
        Height = 13
        Caption = #1048#1079#1088#1072#1089#1093#1086#1076#1086#1074#1072#1085#1086
      end
      object gsm_begin_mEdit: TRxCalcEdit
        Left = 88
        Top = 24
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 0
        OnChange = d_outEditChange
      end
      object gsm_givenEdit: TRxCalcEdit
        Left = 88
        Top = 64
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 1
        OnChange = d_outEditChange
      end
      object gsm_end_mEdit: TRxCalcEdit
        Left = 88
        Top = 104
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 2
        OnChange = d_outEditChange
      end
      object gsm_normaEdit: TRxCalcEdit
        Left = 88
        Top = 144
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 3
        OnChange = d_outEditChange
      end
      object gsm_outEdit: TRxCalcEdit
        Left = 88
        Top = 184
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 4
        OnChange = d_outEditChange
      end
    end
    object GroupBox8: TGroupBox
      Left = 0
      Top = 43
      Width = 193
      Height = 297
      TabOrder = 3
      object Label26: TLabel
        Left = 5
        Top = 19
        Width = 54
        Height = 26
        Caption = #1044#1085#1077#1081#13#10#1089#1087#1080#1089#1086#1095#1085#1099#1093
      end
      object Label27: TLabel
        Left = 5
        Top = 59
        Width = 56
        Height = 26
        Caption = #1044#1085#1077#1081' '#1074#13#10#1080#1089#1087#1088#1072#1074#1085#1086#1084
      end
      object Label28: TLabel
        Left = 5
        Top = 99
        Width = 64
        Height = 26
        Caption = #1044#1085#1077#1081#13#10#1101#1082#1087#1083#1091#1072#1090#1072#1094#1080#1080
      end
      object Label29: TLabel
        Left = 5
        Top = 139
        Width = 43
        Height = 26
        Caption = #1044#1085#1077#1081' '#1074#13#10#1088#1077#1084#1086#1085#1090#1077
      end
      object Label30: TLabel
        Left = 5
        Top = 179
        Width = 41
        Height = 26
        Caption = #1063#1072#1089#1086#1074' '#1074#13#10#1085#1072#1088#1103#1076#1077
      end
      object Label31: TLabel
        Left = 5
        Top = 219
        Width = 64
        Height = 26
        Caption = #1053#1086#1088#1084#1072#13#10#1087#1088#1086#1073#1077#1075#1072' ('#1082#1084')'
      end
      object Label32: TLabel
        Left = 5
        Top = 259
        Width = 69
        Height = 26
        Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081#13#10#1087#1088#1086#1073#1077#1075' ('#1082#1084')'
      end
      object d_outEdit: TRxCalcEdit
        Left = 80
        Top = 24
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 0
        OnChange = d_outEditChange
      end
      object d_goodEdit: TRxCalcEdit
        Left = 80
        Top = 64
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 1
        OnChange = d_outEditChange
      end
      object d_operationalEdit: TRxCalcEdit
        Left = 80
        Top = 104
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 2
        OnChange = d_outEditChange
      end
      object d_remontEdit: TRxCalcEdit
        Left = 80
        Top = 144
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 3
        OnChange = d_outEditChange
      end
      object h_orderEdit: TRxCalcEdit
        Left = 80
        Top = 184
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 4
        OnChange = d_outEditChange
      end
      object norma_runEdit: TRxCalcEdit
        Left = 80
        Top = 224
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 5
        OnChange = d_outEditChange
      end
      object fact_runEdit: TRxCalcEdit
        Left = 80
        Top = 264
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 6
        OnChange = d_outEditChange
      end
    end
    object mmBox: TComboBox
      Left = 1
      Top = 25
      Width = 192
      Height = 21
      TabOrder = 2
      OnChange = d_outEditChange
      Items.Strings = (
        #1071#1085#1074#1072#1088#1100
        #1060#1077#1074#1088#1072#1083#1100
        #1052#1072#1088#1090
        #1040#1087#1088#1077#1083#1100
        #1052#1072#1081
        #1048#1102#1085#1100
        #1048#1102#1083#1100
        #1040#1074#1075#1091#1089#1090
        #1057#1077#1085#1090#1103#1073#1088#1100
        #1054#1082#1090#1103#1073#1088#1100
        #1053#1086#1103#1073#1088#1100
        #1044#1077#1082#1072#1073#1088#1100)
    end
    object m_RB: TRadioButton
      Left = 5
      Top = 8
      Width = 113
      Height = 17
      Caption = #1052#1077#1089#1103#1094#1099
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = m_RBClick
    end
    object k_RB: TRadioButton
      Left = 80
      Top = 8
      Width = 113
      Height = 17
      Caption = #1050#1074#1072#1088#1090#1072#1083#1099
      TabOrder = 1
      OnClick = k_RBClick
    end
    object GroupBox9: TGroupBox
      Left = 200
      Top = 259
      Width = 201
      Height = 81
      Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1087#1080#1076#1086#1084#1077#1090#1088#1072
      TabOrder = 6
      object Label34: TLabel
        Left = 5
        Top = 20
        Width = 78
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1086' '#1084#1077#1089#1103#1094#1072
      end
      object Label35: TLabel
        Left = 5
        Top = 52
        Width = 72
        Height = 13
        Caption = #1050#1086#1085#1077#1094' '#1084#1077#1089#1103#1094#1072
      end
      object speed_end: TRxCalcEdit
        Left = 88
        Top = 49
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 1
        OnChange = d_outEditChange
      end
      object speed_begin: TRxCalcEdit
        Left = 88
        Top = 17
        Width = 105
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        GlyphKind = gkCustom
        ButtonWidth = 0
        NumGlyphs = 1
        TabOrder = 0
        OnChange = d_outEditChange
      end
    end
    object YearBox1: TComboBox
      Left = 200
      Top = 24
      Width = 105
      Height = 21
      TabOrder = 8
      Text = 'YearBox1'
    end
  end
  object ds_card: TDataSource
    Left = 24
    Top = 264
  end
end

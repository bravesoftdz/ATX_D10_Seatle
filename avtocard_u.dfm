object frmavtocard: Tfrmavtocard
  Left = 363
  Top = 128
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
  ClientHeight = 659
  ClientWidth = 809
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label74: TLabel
    Left = 21
    Top = 430
    Width = 76
    Height = 13
    Caption = #8470' '#1044#1074#1080#1075#1072#1090#1077#1083#1103' *'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 659
    Align = alClient
    Color = 15590358
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 807
      Height = 657
      Align = alClient
      BevelOuter = bvNone
      Color = 15590358
      ParentBackground = False
      TabOrder = 0
      Visible = False
      ExplicitLeft = 0
      object RecN: TLabel
        Left = 248
        Top = 637
        Width = 6
        Height = 13
        Caption = '1'
      end
      object Label27: TLabel
        Left = 152
        Top = 637
        Width = 87
        Height = 13
        Caption = #1058#1077#1082#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100':'
      end
      object RecCount: TLabel
        Left = 88
        Top = 637
        Width = 42
        Height = 13
        Caption = '1000000'
      end
      object Label26: TLabel
        Left = 0
        Top = 637
        Width = 82
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1079#1072#1087#1080#1089#1077#1081':'
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 563
        Width = 420
        Height = 70
        TabOrder = 0
        object LbB_New: TLbButton
          Left = 3
          Top = 40
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
          TabOrder = 4
          UseHotTrackFont = False
          OnClick = LbB_NewClick
        end
        object LbB_First: TLbButton
          Left = 3
          Top = 8
          Width = 100
          Height = 25
          Hint = #1042' '#1085#1072#1095#1072#1083#1086
          Caption = '<<<<'
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
          ParentShowHint = False
          ShowHint = True
          Style = bsModern
          TabOrder = 0
          UseHotTrackFont = False
          OnClick = LbB_FirstClick
        end
        object LbB_Cancel: TLbButton
          Left = 107
          Top = 40
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
          TabOrder = 5
          UseHotTrackFont = False
          OnClick = LbB_CancelClick
        end
        object LbB_Prior: TLbButton
          Left = 107
          Top = 8
          Width = 100
          Height = 25
          Hint = #1053#1072#1079#1072#1076
          Caption = '<<'
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
          ParentShowHint = False
          ShowHint = True
          Style = bsModern
          TabOrder = 1
          UseHotTrackFont = False
          OnClick = LbB_PriorClick
        end
        object LbB_Post: TLbButton
          Left = 211
          Top = 40
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
          TabOrder = 6
          UseHotTrackFont = False
          OnClick = LbB_PostClick
        end
        object LbB_Next: TLbButton
          Left = 211
          Top = 8
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
          TabOrder = 2
          UseHotTrackFont = False
          OnClick = LbB_NextClick
        end
        object LbB_Del: TLbButton
          Left = 315
          Top = 40
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
          TabOrder = 7
          UseHotTrackFont = False
          Visible = False
          OnClick = LbB_DelClick
        end
        object LbB_Last: TLbButton
          Left = 315
          Top = 8
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
          TabOrder = 3
          UseHotTrackFont = False
          OnClick = LbB_LastClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 424
        Top = 563
        Width = 116
        Height = 70
        Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1086#1084#1077#1088#1091
        TabOrder = 1
        object LbB_Find: TLbButton
          Left = 8
          Top = 40
          Width = 100
          Height = 25
          Caption = #1053#1072#1081#1090#1080
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
          TabOrder = 1
          UseHotTrackFont = False
          OnClick = LbB_FindClick
        end
        object find_numb_edit: TEdit
          Left = 8
          Top = 16
          Width = 100
          Height = 21
          TabOrder = 0
          OnKeyDown = find_numb_editKeyDown
        end
      end
      object LbButton24: TLbButton
        Left = 546
        Top = 567
        Width = 100
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        Color = clGreen
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
        OnClick = LbButton24Click
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 49
        Width = 807
        Height = 512
        ActivePage = TabSheet1
        Align = alTop
        TabOrder = 3
        object TabSheet1: TTabSheet
          Caption = #1058#1077#1093'. '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
          object GroupBox1: TGroupBox
            Left = 4
            Top = 9
            Width = 789
            Height = 112
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object Label1: TLabel
              Left = 8
              Top = 15
              Width = 100
              Height = 13
              Caption = #1043#1072#1088#1085#1080#1079#1086#1085'/'#1054#1073#1083#1072#1089#1090#1100'*'
            end
            object Label2: TLabel
              Left = 8
              Top = 36
              Width = 69
              Height = 13
              Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' *'
            end
            object Label3: TLabel
              Left = 421
              Top = 13
              Width = 38
              Height = 13
              Caption = #1054#1090#1076#1077#1083' *'
            end
            object Label4: TLabel
              Left = 421
              Top = 37
              Width = 52
              Height = 13
              Caption = #1055#1086#1076'-'#1086#1090#1076#1077#1083
            end
            object Label5: TLabel
              Left = 8
              Top = 59
              Width = 45
              Height = 13
              Caption = #1057#1083#1091#1078#1073#1072' *'
            end
            object Label36: TLabel
              Left = 421
              Top = 63
              Width = 95
              Height = 13
              Caption = #1052#1077#1089#1090#1086' '#1076#1080#1089#1083#1086#1082#1072#1094#1080#1080
            end
            object Label69: TLabel
              Left = 8
              Top = 83
              Width = 66
              Height = 13
              Caption = #1055#1086#1076' - '#1089#1083#1091#1078#1073#1072
            end
            object Reg_box: TDBLookupComboBox
              Left = 126
              Top = 15
              Width = 251
              Height = 21
              DataField = 'id_region'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_reg
              TabOrder = 0
              OnEnter = Numb1_editEnter
            end
            object Div_box: TDBLookupComboBox
              Left = 126
              Top = 36
              Width = 251
              Height = 21
              DataField = 'id_division'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_div
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
            object Depart_box: TDBLookupComboBox
              Left = 526
              Top = 13
              Width = 251
              Height = 21
              DataField = 'id_depart'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_dep
              TabOrder = 2
              OnEnter = Numb1_editEnter
            end
            object PreDepart_box: TDBLookupComboBox
              Left = 526
              Top = 37
              Width = 251
              Height = 21
              DataField = 'id_predepart'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_pred
              TabOrder = 3
              OnEnter = Numb1_editEnter
            end
            object Serv_box: TDBLookupComboBox
              Left = 126
              Top = 59
              Width = 251
              Height = 21
              DataField = 'id_serv'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_serv
              TabOrder = 4
              OnEnter = Numb1_editEnter
            end
            object Dislok_box: TDBLookupComboBox
              Left = 526
              Top = 60
              Width = 251
              Height = 21
              DataField = 'id_dislok'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_dislok
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object PreServ_Box: TDBLookupComboBox
              Left = 126
              Top = 83
              Width = 651
              Height = 21
              DataField = 'id_preserv'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_preserv
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox12: TGroupBox
            Left = 4
            Top = 120
            Width = 789
            Height = 45
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 1
            object Label17: TLabel
              Left = 8
              Top = 8
              Width = 78
              Height = 26
              Caption = #1048#1089#1090#1086#1095#1085#1080#1082#13#10#1087#1088#1080#1086#1073#1088#1077#1090#1077#1085#1080#1103' *'
            end
            object Label18: TLabel
              Left = 272
              Top = 8
              Width = 69
              Height = 26
              Caption = #1048#1089#1090#1086#1095#1085#1080#1082#13#10#1089#1086#1076#1077#1088#1078#1072#1085#1080#1103' *'
            end
            object Source_b_box: TDBLookupComboBox
              Left = 110
              Top = 12
              Width = 155
              Height = 21
              DataField = 'id_source_bay'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_source_f
              TabOrder = 0
              OnEnter = Numb1_editEnter
            end
            object Source_f_box: TDBLookupComboBox
              Left = 377
              Top = 12
              Width = 155
              Height = 21
              DataField = 'id_source_fin'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_source_f
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox2: TGroupBox
            Left = 4
            Top = 161
            Width = 265
            Height = 320
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 2
            object Label6: TLabel
              Left = 8
              Top = 15
              Width = 40
              Height = 13
              Caption = #1052#1072#1088#1082#1072' *'
            end
            object Label7: TLabel
              Left = 8
              Top = 36
              Width = 46
              Height = 13
              Caption = #1052#1086#1076#1077#1083#1100' *'
            end
            object Label8: TLabel
              Left = 8
              Top = 57
              Width = 54
              Height = 13
              Caption = #1043#1086#1089' '#8470' (1) *'
            end
            object Label9: TLabel
              Left = 8
              Top = 78
              Width = 47
              Height = 13
              Caption = #1043#1086#1089' '#8470' (2)'
            end
            object Label10: TLabel
              Left = 8
              Top = 99
              Width = 86
              Height = 13
              Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072' (4) *'
            end
            object Label14: TLabel
              Left = 8
              Top = 120
              Width = 32
              Height = 13
              Caption = #1062#1074#1077#1090' *'
            end
            object Label13: TLabel
              Left = 8
              Top = 139
              Width = 25
              Height = 13
              Caption = 'VIN *'
            end
            object Label12: TLabel
              Left = 8
              Top = 227
              Width = 76
              Height = 13
              Caption = #8470' '#1044#1074#1080#1075#1072#1090#1077#1083#1103' *'
            end
            object Label11: TLabel
              Left = 8
              Top = 248
              Width = 57
              Height = 13
              Caption = #8470' '#1050#1091#1079#1086#1074#1072' *'
            end
            object Label15: TLabel
              Left = 8
              Top = 269
              Width = 47
              Height = 13
              Caption = #8470' '#1064#1072#1089#1089#1080
            end
            object Label73: TLabel
              Left = 8
              Top = 162
              Width = 65
              Height = 13
              Caption = #1052#1086#1076#1077#1083#1100' '#1044#1042#1057
            end
            object Label75: TLabel
              Left = 8
              Top = 183
              Width = 35
              Height = 13
              Caption = #1054#1073#1098#1077#1084
            end
            object Label76: TLabel
              Left = 8
              Top = 205
              Width = 74
              Height = 13
              Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
            end
            object Label77: TLabel
              Left = 8
              Top = 290
              Width = 96
              Height = 13
              Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100' '#1058#1057
            end
            object Mark_box: TDBLookupComboBox
              Left = 110
              Top = 10
              Width = 145
              Height = 21
              DataField = 'id_mark'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_mark
              TabOrder = 0
              OnCloseUp = Mark_boxChange
              OnEnter = Numb1_editEnter
              OnExit = Mark_boxChange
            end
            object Model_edit: TComboBox
              Left = 110
              Top = 36
              Width = 145
              Height = 21
              TabOrder = 1
              Text = 'Model_edit'
              OnChange = Model_edit1Change
              OnEnter = Numb1_editEnter
              OnKeyPress = Model_edit1KeyPress
            end
            object Numb1_edit: TDBEdit
              Left = 110
              Top = 57
              Width = 145
              Height = 21
              DataField = 'numb_1'
              DataSource = dm.dss_avto
              TabOrder = 2
              OnEnter = Numb1_editEnter
              OnKeyPress = Numb1_editKeyPress
            end
            object Numb2_edit: TDBEdit
              Left = 110
              Top = 78
              Width = 145
              Height = 21
              DataField = 'numb_2'
              DataSource = dm.dss_avto
              TabOrder = 3
              OnEnter = Numb1_editEnter
            end
            object Year_edit: TDBEdit
              Left = 110
              Top = 99
              Width = 145
              Height = 21
              DataField = 'm_year'
              DataSource = dm.dss_avto
              TabOrder = 4
              OnEnter = Numb1_editEnter
            end
            object Color_edit: TDBEdit
              Left = 110
              Top = 120
              Width = 145
              Height = 21
              DataField = 'color'
              DataSource = dm.dss_avto
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object VIN_edit: TDBEdit
              Left = 110
              Top = 141
              Width = 145
              Height = 21
              DataField = 'vin'
              DataSource = dm.dss_avto
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
            object NEng_edit: TDBEdit
              Left = 110
              Top = 227
              Width = 145
              Height = 21
              DataField = 'n_engine'
              DataSource = dm.dss_avto
              TabOrder = 7
              OnEnter = Numb1_editEnter
            end
            object NBody_edit: TDBEdit
              Left = 110
              Top = 248
              Width = 145
              Height = 21
              DataField = 'n_body'
              DataSource = dm.dss_avto
              TabOrder = 8
              OnEnter = Numb1_editEnter
            end
            object NShas_edit: TDBEdit
              Left = 110
              Top = 269
              Width = 145
              Height = 21
              DataField = 'n_chassis'
              DataSource = dm.dss_avto
              TabOrder = 9
              OnEnter = Numb1_editEnter
            end
            object modelDVC_Edit: TDBEdit
              Left = 110
              Top = 162
              Width = 145
              Height = 21
              DataField = 'modelDVC'
              DataSource = dm.dss_avto
              TabOrder = 10
              OnEnter = Numb1_editEnter
            end
            object volumeDVC_Edit: TDBEdit
              Left = 110
              Top = 183
              Width = 145
              Height = 21
              DataField = 'volumeDVC'
              DataSource = dm.dss_avto
              TabOrder = 11
              OnEnter = Numb1_editEnter
            end
            object TypeDVC_box: TDBLookupComboBox
              Left = 110
              Top = 205
              Width = 145
              Height = 21
              DataField = 'id_typeDVC'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_typeDVC
              TabOrder = 12
              OnEnter = Numb1_editEnter
            end
            object RxDBLookupCombo3: TDBLookupComboBox
              Left = 110
              Top = 290
              Width = 145
              Height = 21
              DataField = 'id_manufactureTC'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_ManufactureTC
              TabOrder = 13
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox3: TGroupBox
            Left = 269
            Top = 161
            Width = 275
            Height = 320
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 3
            object Label16: TLabel
              Left = 8
              Top = 58
              Width = 80
              Height = 13
              Caption = #1058#1077#1093#1087#1072#1089#1087#1086#1088#1090' '#8470' *'
            end
            object Label19: TLabel
              Left = 8
              Top = 102
              Width = 64
              Height = 13
              Caption = #1058#1080#1087' '#1082#1091#1079#1086#1074#1072' *'
            end
            object Label20: TLabel
              Left = 8
              Top = 122
              Width = 84
              Height = 13
              Caption = #1058#1077#1093'. '#1089#1086#1089#1090#1086#1103#1085#1080#1077' *'
            end
            object Label24: TLabel
              Left = 8
              Top = 138
              Width = 70
              Height = 26
              Caption = #1043#1088#1091#1087#1087#1072#13#10#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
            end
            object Label25: TLabel
              Left = 8
              Top = 166
              Width = 88
              Height = 26
              Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1080#13#10#1085#1072' '#1091#1095#1077#1090' *'
            end
            object Label34: TLabel
              Left = 8
              Top = 190
              Width = 38
              Height = 13
              Caption = #1055#1088#1080#1082#1072#1079
            end
            object Label37: TLabel
              Left = 8
              Top = 79
              Width = 66
              Height = 13
              Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            end
            object Label38: TLabel
              Left = 8
              Top = 18
              Width = 64
              Height = 13
              Caption = #1055#1088#1077#1076'. '#1043#1086#1089' '#8470
            end
            object Label60: TLabel
              Left = 8
              Top = 39
              Width = 97
              Height = 13
              Caption = #1052#1086#1097#1085#1086#1089#1090#1100' ('#1083#1089'/'#1082#1042#1090')'
            end
            object Label64: TLabel
              Left = 8
              Top = 208
              Width = 70
              Height = 13
              Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1058#1057
            end
            object Label83: TLabel
              Left = 165
              Top = 42
              Width = 18
              Height = 13
              Caption = #1083'.'#1089'.'
            end
            object Label84: TLabel
              Left = 244
              Top = 42
              Width = 18
              Height = 13
              Caption = #1082#1042#1090
            end
            object TypeBody_box: TDBLookupComboBox
              Left = 110
              Top = 99
              Width = 155
              Height = 21
              DataField = 'id_type_body'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_type_b
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
            object Tech_box: TDBLookupComboBox
              Left = 110
              Top = 120
              Width = 155
              Height = 21
              DataField = 'id_tech'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_tech
              TabOrder = 2
              OnEnter = Numb1_editEnter
            end
            object Group_box: TDBLookupComboBox
              Left = 110
              Top = 141
              Width = 155
              Height = 21
              DataField = 'id_group'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_group
              TabOrder = 3
              OnEnter = Numb1_editEnter
            end
            object in_pr: TDBEdit
              Left = 110
              Top = 183
              Width = 156
              Height = 21
              DataField = 'in_pr'
              DataSource = dm.dss_avto
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object InAc_edit: TDBDateEdit
              Left = 110
              Top = 162
              Width = 156
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'in_account'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 4
              YearDigits = dyFour
              OnEnter = Numb1_editEnter
            end
            object date_texpasport: TDBDateEdit
              Left = 110
              Top = 78
              Width = 156
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'date_texpasport'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
              OnEnter = Numb1_editEnter
            end
            object TypeTc_box: TDBLookupComboBox
              Left = 110
              Top = 210
              Width = 155
              Height = 21
              DataField = 'id_typetc'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_typeTc
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
            object ElDBEdit4: TDBEdit
              Left = 110
              Top = 15
              Width = 155
              Height = 21
              Color = 15590358
              DataField = 'old_number'
              DataSource = dm.dss_avto
              ReadOnly = True
              TabOrder = 7
              OnEnter = Numb1_editEnter
            end
            object NPts_edit: TDBEdit
              Left = 110
              Top = 57
              Width = 155
              Height = 21
              DataField = 'n_pts'
              DataSource = dm.dss_avto
              TabOrder = 8
              OnEnter = Numb1_editEnter
            end
            object DBEdit_power_l: TDBEdit
              Left = 110
              Top = 36
              Width = 49
              Height = 21
              DataField = 'power_energy_l'
              DataSource = dm.dss_avto
              TabOrder = 9
              OnEnter = Numb1_editEnter
            end
            object DBEdit_power_k: TDBEdit
              Left = 189
              Top = 36
              Width = 49
              Height = 21
              DataField = 'power_energy_k'
              DataSource = dm.dss_avto
              TabOrder = 10
              OnEnter = Numb1_editEnter
            end
          end
          object GroupBox5: TGroupBox
            Left = 544
            Top = 161
            Width = 249
            Height = 320
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 4
            object PageControl2: TPageControl
              Left = 2
              Top = 15
              Width = 245
              Height = 303
              ActivePage = TabSheet8
              Align = alClient
              OwnerDraw = True
              TabOrder = 0
              OnDrawTab = PageControl2DrawTab
              object TabSheet8: TTabSheet
                Caption = #1054#1090#1089#1090#1086#1081' - '#1057#1087#1080#1089#1072#1085#1080#1077
                Highlighted = True
                object Panel5: TPanel
                  Left = 0
                  Top = 0
                  Width = 237
                  Height = 275
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'Panel5'
                  Color = 15590358
                  ParentBackground = False
                  TabOrder = 0
                  ExplicitLeft = 52
                  ExplicitTop = 234
                  ExplicitWidth = 185
                  ExplicitHeight = 41
                  object Label29: TLabel
                    Left = 5
                    Top = 48
                    Width = 38
                    Height = 13
                    Caption = #1055#1088#1080#1082#1072#1079
                  end
                  object Label28: TLabel
                    Left = 5
                    Top = 28
                    Width = 26
                    Height = 13
                    Caption = #1044#1072#1090#1072
                  end
                  object Label72: TLabel
                    Left = 5
                    Top = 70
                    Width = 36
                    Height = 13
                    Caption = #1054#1090#1089#1090#1086#1081
                  end
                  object Label68: TLabel
                    Left = 5
                    Top = 217
                    Width = 55
                    Height = 13
                    Caption = #1057#1088#1086#1082' '#1101#1082#1089#1087'.'
                  end
                  object Label33: TLabel
                    Left = 5
                    Top = 166
                    Width = 38
                    Height = 13
                    Caption = #1055#1088#1080#1082#1072#1079
                  end
                  object Label32: TLabel
                    Left = 5
                    Top = 142
                    Width = 26
                    Height = 13
                    Caption = #1044#1072#1090#1072
                  end
                  object date_state: TDBDateEdit
                    Left = 61
                    Top = 26
                    Width = 150
                    Height = 21
                    Margins.Left = 1
                    Margins.Top = 1
                    DataField = 'out_state'
                    DataSource = dm.dss_avto
                    NumGlyphs = 2
                    TabOrder = 0
                    YearDigits = dyFour
                  end
                  object state_box: TDBCheckBox
                    Left = 5
                    Top = 5
                    Width = 172
                    Height = 17
                    Caption = #1054#1090#1089#1090#1086#1081
                    Color = 15590358
                    DataField = 'out_state_ch'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 1
                    OnClick = state_boxClick
                  end
                  object RxDBLookupOutState: TDBLookupComboBox
                    Left = 61
                    Top = 70
                    Width = 150
                    Height = 21
                    DataField = 'out_state_state'
                    DataSource = dm.dss_avto
                    Enabled = False
                    KeyField = 'id_out_state'
                    ListField = 'out_state'
                    ListSource = dm.dss_out_state
                    TabOrder = 2
                    OnEnter = Numb1_editEnter
                  end
                  object pr_state: TDBEdit
                    Left = 61
                    Top = 47
                    Width = 150
                    Height = 21
                    DataField = 'out_state_pr'
                    DataSource = dm.dss_avto
                    TabOrder = 3
                  end
                  object date_life: TDBDateEdit
                    Left = 61
                    Top = 142
                    Width = 150
                    Height = 21
                    Margins.Left = 1
                    Margins.Top = 1
                    DataField = 'out_life'
                    DataSource = dm.dss_avto
                    NumGlyphs = 2
                    TabOrder = 4
                    YearDigits = dyFour
                  end
                  object DBCheckBox1: TDBCheckBox
                    Left = 5
                    Top = 188
                    Width = 172
                    Height = 17
                    Caption = #1053#1077' '#1091#1095#1077#1090' '#1040#1058#1061
                    Color = 15590358
                    DataField = 'notAtx'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 5
                    OnClick = life_boxClick
                  end
                  object expl_year: TDBEdit
                    Left = 60
                    Top = 211
                    Width = 151
                    Height = 21
                    DataField = 'expl_year'
                    DataSource = dm.dss_avto
                    TabOrder = 6
                    OnEnter = Numb1_editEnter
                  end
                  object life_box: TDBCheckBox
                    Left = 3
                    Top = 119
                    Width = 172
                    Height = 17
                    Caption = #1057#1087#1080#1089#1072#1085
                    Color = 15590358
                    DataField = 'out_life_ch'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 7
                    OnClick = life_boxClick
                  end
                  object pr_life: TDBEdit
                    Left = 61
                    Top = 163
                    Width = 150
                    Height = 21
                    DataField = 'out_life_pr'
                    DataSource = dm.dss_avto
                    TabOrder = 8
                  end
                end
              end
              object TabSheet9: TTabSheet
                Caption = #1057#1085#1103#1090#1080#1077' '#1089' '#1091#1095#1077#1090#1072
                Highlighted = True
                ImageIndex = 1
                object Panel6: TPanel
                  Left = 0
                  Top = 0
                  Width = 237
                  Height = 275
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'Panel6'
                  Color = 15590358
                  ParentBackground = False
                  TabOrder = 0
                  ExplicitLeft = 52
                  ExplicitTop = 234
                  ExplicitWidth = 185
                  ExplicitHeight = 41
                  object Label30: TLabel
                    Left = 5
                    Top = 32
                    Width = 26
                    Height = 13
                    Caption = #1044#1072#1090#1072
                  end
                  object out_account_box: TDBCheckBox
                    Left = 3
                    Top = 9
                    Width = 172
                    Height = 17
                    Caption = #1057#1085#1103#1090#1080#1077' '#1089' '#1091#1095#1077#1090#1072
                    Color = 15590358
                    DataField = 'out_account_ch'
                    DataSource = dm.dss_avto
                    ParentColor = False
                    TabOrder = 0
                    OnClick = out_account_boxClick
                  end
                  object date_out_account: TDBDateEdit
                    Left = 61
                    Top = 30
                    Width = 150
                    Height = 21
                    Margins.Left = 1
                    Margins.Top = 1
                    DataField = 'out_account'
                    DataSource = dm.dss_avto
                    NumGlyphs = 2
                    TabOrder = 1
                    YearDigits = dyFour
                  end
                end
              end
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
          ImageIndex = 1
          object GroupBox7: TGroupBox
            Left = 4
            Top = 9
            Width = 789
            Height = 280
            TabOrder = 0
            object Label23: TLabel
              Left = 304
              Top = 9
              Width = 75
              Height = 13
              Caption = #1056#1072#1076#1080#1086' '#1089#1090#1072#1085#1094#1080#1103
            end
            object Label21: TLabel
              Left = 304
              Top = 84
              Width = 63
              Height = 13
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            end
            object Label39: TLabel
              Left = 8
              Top = 28
              Width = 37
              Height = 13
              Caption = #8470' '#1048#1053#1042
            end
            object Label40: TLabel
              Left = 56
              Top = 15
              Width = 62
              Height = 13
              Caption = #1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
            end
            object Label41: TLabel
              Left = 56
              Top = 39
              Width = 48
              Height = 13
              Caption = #1090#1077#1093'.'#1086#1090#1076#1077#1083
            end
            object Label42: TLabel
              Left = 8
              Top = 63
              Width = 76
              Height = 13
              Caption = #1052#1077#1089#1090#1086' '#1089#1090#1086#1103#1085#1082#1080
            end
            object Label43: TLabel
              Left = 80
              Top = 79
              Width = 30
              Height = 13
              Caption = #1072#1076#1088#1077#1089
            end
            object Label44: TLabel
              Left = 24
              Top = 102
              Width = 88
              Height = 13
              Caption = #8470' '#1088#1072#1089#1087#1086#1088#1103#1078#1077#1085#1080#1103
            end
            object Label45: TLabel
              Left = 88
              Top = 123
              Width = 23
              Height = 13
              Caption = #1076#1072#1090#1072
            end
            object Label31: TLabel
              Left = 304
              Top = 66
              Width = 21
              Height = 13
              Caption = #1057#1043#1059
            end
            object Label22: TLabel
              Left = 19
              Top = 153
              Width = 86
              Height = 13
              Caption = #1057#1090#1088#1072#1093#1086#1074#1086#1081' '#1087#1086#1083#1080#1089
            end
            object Label35: TLabel
              Left = 19
              Top = 174
              Width = 81
              Height = 13
              Caption = #1044#1072#1090#1072' '#1089#1090#1088#1072#1093#1086#1074#1082#1080
            end
            object Label61: TLabel
              Left = 21
              Top = 195
              Width = 51
              Height = 13
              Caption = #1050#1086#1084#1087#1072#1085#1080#1103
            end
            object Label65: TLabel
              Left = 24
              Top = 240
              Width = 37
              Height = 13
              Caption = #1040#1088#1077#1085#1076#1072
            end
            object Label66: TLabel
              Left = 104
              Top = 232
              Width = 6
              Height = 13
              Caption = #1089
            end
            object Label67: TLabel
              Left = 104
              Top = 256
              Width = 12
              Height = 13
              Caption = #1087#1086
            end
            object DBDateEdit1: TDBDateEdit
              Left = 121
              Top = 120
              Width = 156
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'plase_sto_date'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 0
              YearDigits = dyFour
              OnEnter = Numb1_editEnter
            end
            object date_insur: TDBDateEdit
              Left = 121
              Top = 169
              Width = 156
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'date_insur'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 1
              YearDigits = dyFour
              OnEnter = Numb1_editEnter
            end
            object RxDBLookupCombo2: TDBLookupComboBox
              Left = 121
              Top = 191
              Width = 156
              Height = 21
              DataField = 'id_insure_company'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_insure_company
              TabOrder = 2
              OnEnter = Numb1_editEnter
            end
            object arend_d1: TDBDateEdit
              Left = 120
              Top = 224
              Width = 161
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'arenda_d1'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 3
            end
            object arend_d2: TDBDateEdit
              Left = 120
              Top = 248
              Width = 161
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              DataField = 'arenda_d2'
              DataSource = dm.dss_avto
              NumGlyphs = 2
              TabOrder = 4
            end
            object inv_b_edit: TDBEdit
              Left = 120
              Top = 11
              Width = 155
              Height = 21
              DataField = 'inv_b'
              DataSource = dm.dss_avto
              TabOrder = 5
              OnEnter = Numb1_editEnter
            end
            object inv_t_edit: TDBEdit
              Left = 121
              Top = 38
              Width = 155
              Height = 21
              DataField = 'inv_t'
              DataSource = dm.dss_avto
              TabOrder = 6
              OnEnter = Numb1_editEnter
            end
            object ElDBEdit1: TDBEdit
              Left = 121
              Top = 78
              Width = 155
              Height = 21
              DataField = 'plase_sto_address'
              DataSource = dm.dss_avto
              TabOrder = 7
              OnEnter = Numb1_editEnter
            end
            object ElDBEdit2: TDBEdit
              Left = 121
              Top = 99
              Width = 155
              Height = 21
              DataField = 'plase_sto_prikaz'
              DataSource = dm.dss_avto
              TabOrder = 8
              OnEnter = Numb1_editEnter
            end
            object Insur_edit: TDBEdit
              Left = 121
              Top = 147
              Width = 155
              Height = 21
              DataField = 'insur'
              DataSource = dm.dss_avto
              TabOrder = 9
              OnEnter = Numb1_editEnter
            end
            object ElDBEdit3: TDBEdit
              Left = 390
              Top = 62
              Width = 307
              Height = 21
              DataField = 'sgu'
              DataSource = dm.dss_avto
              TabOrder = 10
            end
            object Radio_memo: TDBMemo
              Left = 390
              Top = 11
              Width = 307
              Height = 49
              DataField = 'radio'
              DataSource = dm.dss_avto
              TabOrder = 11
            end
            object Comm_memo: TDBMemo
              Left = 390
              Top = 85
              Width = 307
              Height = 180
              DataField = 'comm'
              DataSource = dm.dss_avto
              TabOrder = 12
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = #1043#1057#1052
          ImageIndex = 2
          object GroupBox14: TGroupBox
            Left = 0
            Top = 0
            Width = 161
            Height = 217
            Caption = #1052#1072#1088#1082#1072' '#1043#1057#1052' '#1080' %'
            TabOrder = 0
            object Label48: TLabel
              Left = 8
              Top = 119
              Width = 61
              Height = 13
              Caption = #1053#1072#1076#1073#1072#1074#1082#1072' %'
            end
            object Label49: TLabel
              Left = 8
              Top = 18
              Width = 58
              Height = 13
              Caption = #1052#1072#1088#1082#1072' '#1043#1057#1052
            end
            object Label62: TLabel
              Left = 8
              Top = 66
              Width = 78
              Height = 13
              Caption = #1041#1072#1079#1086#1074#1072#1103' '#1085#1086#1088#1084#1072
            end
            object Label63: TLabel
              Left = 8
              Top = 167
              Width = 77
              Height = 13
              Caption = #1051#1080#1084#1080#1090' '#1087#1088#1086#1073#1077#1075#1072
            end
            object DBEdit1: TDBEdit
              Left = 8
              Top = 136
              Width = 145
              Height = 21
              DataField = 'procent_gsm'
              DataSource = dm.dss_avto
              TabOrder = 1
              OnEnter = Numb1_editEnter
            end
            object RxDBLookupCombo1: TDBLookupComboBox
              Left = 8
              Top = 37
              Width = 145
              Height = 21
              DataField = 'id_mark_gsm'
              DataSource = dm.dss_avto
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_markGsm
              TabOrder = 0
              OnClick = RxDBLookupCombo1Change
              OnCloseUp = RxDBLookupCombo1Change
              OnEnter = Numb1_editEnter
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 184
              Width = 145
              Height = 21
              DataField = 'norm_probeg'
              DataSource = dm.dss_avto
              TabOrder = 2
              OnEnter = Numb1_editEnter
            end
          end
          object RxDBLookupList1: TDBLookupComboBox
            Left = 8
            Top = 80
            Width = 145
            Height = 21
            DataField = 'id_base_norm'
            DataSource = dm.dss_avto
            TabOrder = 1
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1047#1072#1084#1077#1085#1072' '#1075#1086#1089'. '#1085#1086#1084#1077#1088#1072
          ImageIndex = 3
          object GroupBox8: TGroupBox
            Left = 0
            Top = 0
            Width = 799
            Height = 105
            Align = alTop
            Caption = #1047#1072#1084#1077#1085#1072' '#1075#1086#1089'. '#1085#1086#1084#1077#1088#1072
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object Label47: TLabel
              Left = 8
              Top = 56
              Width = 26
              Height = 13
              Caption = #1044#1072#1090#1072
            end
            object GosNumb_edit: TLabeledEdit
              Left = 9
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 92
              EditLabel.Height = 13
              EditLabel.Caption = #1053#1086#1074#1099#1081' '#1075#1086#1089'. '#1085#1086#1084#1077#1088
              TabOrder = 0
            end
            object DateEdit1: TDateEdit
              Left = 9
              Top = 72
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
            end
            object EnterGosNumb: TLbButton
              Left = 144
              Top = 70
              Width = 100
              Height = 25
              Caption = #1047#1072#1084#1077#1085#1080#1090#1100
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
              OnClick = EnterGosNumbClick
            end
          end
          object GroupBox9: TGroupBox
            Left = 0
            Top = 105
            Width = 799
            Height = 379
            Align = alClient
            Caption = #1048#1089#1090#1086#1088#1080#1103
            TabOrder = 1
            object DBGrid: TDBGrid
              Left = 2
              Top = 15
              Width = 795
              Height = 362
              Align = alClient
              Ctl3D = False
              DataSource = dm.dss_hist
              FixedColor = 13876122
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1055#1077#1088#1077#1076#1072#1095#1072' '#1072#1074#1090#1086'.'
          ImageIndex = 4
          object GroupBox10: TGroupBox
            Left = 0
            Top = 0
            Width = 799
            Height = 105
            Align = alTop
            Caption = #1055#1077#1088#1077#1076#1072#1095#1072' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
            Color = 15590358
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            object Label46: TLabel
              Left = 264
              Top = 16
              Width = 26
              Height = 13
              Caption = #1044#1072#1090#1072
            end
            object from_edit: TLabeledEdit
              Left = 9
              Top = 32
              Width = 248
              Height = 21
              EditLabel.Width = 39
              EditLabel.Height = 13
              EditLabel.Caption = #1054#1090' '#1082#1086#1075#1086
              TabOrder = 0
            end
            object DateEdit2: TDateEdit
              Left = 265
              Top = 32
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
            end
            object EnterPeredacha: TLbButton
              Left = 411
              Top = 70
              Width = 100
              Height = 25
              Caption = #1047#1072#1084#1077#1085#1080#1090#1100
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
              OnClick = EnterPeredachaClick
            end
            object to_edit: TLabeledEdit
              Left = 9
              Top = 72
              Width = 248
              Height = 21
              EditLabel.Width = 24
              EditLabel.Height = 13
              EditLabel.Caption = #1050#1091#1076#1072
              TabOrder = 3
            end
            object Nprok_edit: TLabeledEdit
              Left = 392
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 56
              EditLabel.Height = 13
              EditLabel.Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
              TabOrder = 4
            end
          end
          object GroupBox11: TGroupBox
            Left = 0
            Top = 105
            Width = 799
            Height = 379
            Align = alClient
            Caption = #1048#1089#1090#1086#1088#1080#1103
            TabOrder = 1
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 795
              Height = 362
              Align = alClient
              Ctl3D = False
              DataSource = dm.dss_pered
              FixedColor = 13876122
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid1DrawColumnCell
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1040#1050#1041
          ImageIndex = 5
          object Panel_AkbList: TPanel
            Left = 0
            Top = 0
            Width = 799
            Height = 484
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel_AkbList'
            Color = 15590358
            ParentBackground = False
            TabOrder = 2
            object DBGrid_Akb: TDBGrid
              Left = 0
              Top = 0
              Width = 799
              Height = 401
              Align = alTop
              DataSource = dm.dss_akb
              FixedColor = 13876122
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid_AkbDrawColumnCell
            end
            object LbButton1: TLbButton
              Left = 7
              Top = 416
              Width = 100
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButton1Click
            end
            object LbButton2: TLbButton
              Left = 111
              Top = 416
              Width = 100
              Height = 25
              Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
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
              OnClick = LbButton2Click
            end
            object LbButton23: TLbButton
              Left = 7
              Top = 447
              Width = 100
              Height = 25
              Caption = #1055#1077#1095#1072#1090#1100
              Color = clGreen
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
              OnClick = LbButton23Click
            end
            object LbButton3: TLbButton
              Left = 215
              Top = 416
              Width = 100
              Height = 25
              Caption = #1057#1087#1080#1089#1072#1090#1100
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
              TabOrder = 4
              UseHotTrackFont = False
              OnClick = LbButton3Click
            end
            object LbButton4: TLbButton
              Left = 317
              Top = 415
              Width = 100
              Height = 25
              Caption = #1055#1077#1088#1077#1079#1072#1082#1088#1077#1087#1080#1090#1100
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
              TabOrder = 5
              UseHotTrackFont = False
              OnClick = LbButton4Click
            end
            object LbButton7: TLbButton
              Left = 423
              Top = 416
              Width = 100
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Color = clMaroon
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
              TabOrder = 6
              UseHotTrackFont = False
              OnClick = LbButton7Click
            end
          end
          object Panel_Add_Akb: TPanel
            Left = 80
            Top = 0
            Width = 545
            Height = 169
            BevelInner = bvLowered
            Color = 15590358
            ParentBackground = False
            TabOrder = 0
            Visible = False
            object Label50: TLabel
              Left = 8
              Top = 56
              Width = 172
              Height = 13
              Caption = #1076#1072#1090#1072' '#1087#1088#1080#1074#1077#1076#1077#1085#1080#1103' '#1074' '#1088#1072#1073'.'#1089#1086#1089#1090#1086#1103#1085#1080#1077
            end
            object Label51: TLabel
              Left = 8
              Top = 104
              Width = 170
              Height = 13
              Caption = #1076#1072#1090#1072' '#1087#1086#1089#1083#1077#1076#1091#1102#1097#1077#1075#1086' '#1079#1072#1082#1088#1077#1087#1083#1077#1085#1080#1103
            end
            object LbButton5: TLbButton
              Left = 435
              Top = 136
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
              TabOrder = 0
              UseHotTrackFont = False
              OnClick = LbButton5Click
            end
            object LbButton6: TLbButton
              Left = 331
              Top = 136
              Width = 100
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1072
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButton6Click
            end
            object type_akb_edit: TLabeledEdit
              Left = 8
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 17
              EditLabel.Height = 13
              EditLabel.Caption = #1090#1080#1087
              TabOrder = 2
              OnChange = type_akb_editChange
            end
            object model_akb_edit: TLabeledEdit
              Left = 136
              Top = 24
              Width = 121
              Height = 21
              EditLabel.Width = 38
              EditLabel.Height = 13
              EditLabel.Caption = #1084#1086#1076#1077#1083#1100
              TabOrder = 3
              OnChange = type_akb_editChange
            end
            object year_akb_edit: TLabeledEdit
              Left = 264
              Top = 24
              Width = 65
              Height = 21
              EditLabel.Width = 63
              EditLabel.Height = 13
              EditLabel.Caption = #1075#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
              TabOrder = 4
              OnChange = type_akb_editChange
              OnKeyPress = year_akb_editKeyPress
            end
            object prod_num_akd_edit: TLabeledEdit
              Left = 336
              Top = 24
              Width = 201
              Height = 21
              EditLabel.Width = 68
              EditLabel.Height = 13
              EditLabel.Caption = #1079#1072#1074#1086#1076#1089#1082#1086#1081' '#8470
              TabOrder = 5
              OnChange = type_akb_editChange
            end
            object DateEdit3: TDateEdit
              Left = 8
              Top = 72
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 6
              OnChange = type_akb_editChange
            end
            object DateEdit4: TDateEdit
              Left = 8
              Top = 120
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 7
              OnChange = type_akb_editChange
            end
          end
          object Panel_spisan: TPanel
            Left = 191
            Top = 65
            Width = 361
            Height = 65
            BevelInner = bvLowered
            Color = 15590358
            ParentBackground = False
            TabOrder = 1
            Visible = False
            object Label53: TLabel
              Left = 8
              Top = 8
              Width = 74
              Height = 13
              Caption = #1076#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
            end
            object LbButton8: TLbButton
              Left = 251
              Top = 24
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
              TabOrder = 0
              UseHotTrackFont = False
              OnClick = LbButton8Click
            end
            object LbButton9: TLbButton
              Left = 147
              Top = 24
              Width = 100
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1072
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButton9Click
            end
            object DateEdit6: TDateEdit
              Left = 8
              Top = 24
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 2
              OnChange = DateEdit6Change
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1040#1074#1090#1086#1096#1080#1085#1099
          ImageIndex = 6
          object Panel_ShineList: TPanel
            Left = 0
            Top = 0
            Width = 799
            Height = 484
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel_ShineList'
            Color = 15590358
            ParentBackground = False
            TabOrder = 3
            object DBGrid_Shin: TDBGrid
              Left = 0
              Top = 0
              Width = 799
              Height = 433
              Align = alTop
              DataSource = dm.dss_shin
              FixedColor = 13876122
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid_ShinDrawColumnCell
              OnDblClick = DBGrid_ShinDblClick
            end
            object LbButton14: TLbButton
              Left = 7
              Top = 448
              Width = 100
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButton14Click
            end
            object LbButton15: TLbButton
              Left = 111
              Top = 448
              Width = 100
              Height = 25
              Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
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
              OnClick = LbButton15Click
            end
            object LbButton16: TLbButton
              Left = 215
              Top = 448
              Width = 100
              Height = 25
              Caption = #1057#1087#1080#1089#1072#1090#1100
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
              TabOrder = 3
              UseHotTrackFont = False
              OnClick = LbButton16Click
            end
            object LbButton17: TLbButton
              Left = 319
              Top = 448
              Width = 100
              Height = 25
              Caption = #1055#1077#1088#1077#1079#1072#1082#1088#1077#1087#1080#1090#1100
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
              TabOrder = 4
              UseHotTrackFont = False
              OnClick = LbButton17Click
            end
            object LbButton18: TLbButton
              Left = 423
              Top = 448
              Width = 100
              Height = 25
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Color = clMaroon
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
              TabOrder = 5
              UseHotTrackFont = False
              OnClick = LbButton18Click
            end
          end
          object Panel_Probeg: TPanel
            Left = 168
            Top = 0
            Width = 393
            Height = 257
            BevelInner = bvLowered
            Color = 15590358
            TabOrder = 0
            Visible = False
            object DBGrid_Probeg: TDBGrid
              Left = 2
              Top = 75
              Width = 389
              Height = 122
              Align = alClient
              DataSource = dm.dss_ShinProbegShort
              FixedColor = 13876122
              Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnColExit = DBGrid_ProbegColExit
              OnDrawColumnCell = DBGrid_ProbegDrawColumnCell
            end
            object Panel3: TPanel
              Left = 2
              Top = 2
              Width = 389
              Height = 73
              Align = alTop
              BevelOuter = bvNone
              Color = 15590358
              ParentBackground = False
              TabOrder = 1
              object Label57: TLabel
                Left = 80
                Top = 0
                Width = 41
                Height = 13
                Caption = #1082#1074#1072#1088#1090#1072#1083
              end
              object Label58: TLabel
                Left = 157
                Top = 0
                Width = 35
                Height = 13
                Caption = #1087#1088#1086#1073#1077#1075
              end
              object Label59: TLabel
                Left = 8
                Top = 0
                Width = 17
                Height = 13
                Caption = #1075#1086#1076
              end
              object LbButton19: TLbButton
                Left = 283
                Top = 13
                Width = 100
                Height = 25
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
                OnClick = LbButton19Click
              end
              object RxCalcEdit1: TRxCalcEdit
                Left = 157
                Top = 16
                Width = 121
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                AutoSize = False
                NumGlyphs = 2
                TabOrder = 1
                OnChange = year_edit_probeg1Change
              end
              object ComboBox_kv: TComboBox
                Left = 78
                Top = 16
                Width = 75
                Height = 21
                TabOrder = 2
                OnChange = year_edit_probeg1Change
                OnKeyPress = Model_edit1KeyPress
                Items.Strings = (
                  'I '#1082#1074#1072#1088#1090#1072#1083
                  'II '#1082#1074#1072#1088#1090#1072#1083
                  'III '#1082#1074#1072#1088#1090#1072#1083
                  'IV '#1082#1074#1072#1088#1090#1072#1083)
              end
              object ComboBox2: TComboBox
                Left = 8
                Top = 44
                Width = 65
                Height = 21
                TabOrder = 3
                OnChange = ComboBox2Change
                OnKeyPress = Model_edit1KeyPress
              end
              object year_edit_probeg: TRxSpinEdit
                Left = 8
                Top = 16
                Width = 65
                Height = 21
                Decimal = 0
                MaxValue = 2100.000000000000000000
                MinValue = 1900.000000000000000000
                Value = 2000.000000000000000000
                TabOrder = 4
                OnChange = year_edit_probeg1Change
              end
              object LbButton21: TLbButton
                Left = 283
                Top = 45
                Width = 100
                Height = 25
                Caption = #1054#1090#1084#1077#1085#1080#1090#1100
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
                TabOrder = 5
                UseHotTrackFont = False
                OnClick = LbButton21Click
              end
              object CheckBox1: TCheckBox
                Left = 80
                Top = 43
                Width = 193
                Height = 17
                Caption = #1085#1072' '#1090#1077#1082#1091#1097#1077#1084' '#1072#1074#1090#1086#1090#1088#1072#1085#1089#1087#1086#1088#1090#1077
                TabOrder = 6
                OnClick = ComboBox2Change
              end
            end
            object Panel4: TPanel
              Left = 2
              Top = 214
              Width = 389
              Height = 41
              Align = alBottom
              BevelOuter = bvNone
              Color = 15590358
              TabOrder = 2
              object LbButton_DelProbeg: TLbButton
                Left = 8
                Top = 8
                Width = 100
                Height = 25
                Caption = #1059#1076#1072#1083#1080#1090#1100
                Color = clMaroon
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
                OnClick = LbButton_DelProbegClick
              end
              object LbButton20: TLbButton
                Left = 283
                Top = 8
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
                TabOrder = 1
                UseHotTrackFont = False
                OnClick = LbButton20Click
              end
              object LbButton22: TLbButton
                Left = 147
                Top = 8
                Width = 100
                Height = 25
                Caption = #1055#1077#1095#1072#1090#1100
                Color = clGreen
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
                OnClick = LbButton22Click
              end
            end
            object StringGrid1: TStringGrid
              Left = 2
              Top = 197
              Width = 389
              Height = 17
              TabStop = False
              Align = alBottom
              BiDiMode = bdLeftToRight
              BorderStyle = bsNone
              Color = clWhite
              ColCount = 2
              Ctl3D = True
              DefaultRowHeight = 16
              FixedCols = 0
              RowCount = 1
              FixedRows = 0
              Options = [goVertLine]
              ParentBiDiMode = False
              ParentCtl3D = False
              ScrollBars = ssNone
              TabOrder = 3
              OnDrawCell = StringGrid1DrawCell
              ColWidths = (
                64
                64)
              RowHeights = (
                16)
            end
          end
          object Panel_Shin: TPanel
            Left = 103
            Top = 119
            Width = 545
            Height = 169
            BevelInner = bvLowered
            Color = 15590358
            ParentBackground = False
            TabOrder = 1
            Visible = False
            object Label54: TLabel
              Left = 186
              Top = 2
              Width = 64
              Height = 13
              Caption = #1082#1086#1085#1089#1090#1088#1091#1082#1094#1080#1103
            end
            object Label52: TLabel
              Left = 8
              Top = 104
              Width = 78
              Height = 13
              Caption = #1076#1072#1090#1072' '#1091#1089#1090#1072#1085#1086#1074#1082#1080
            end
            object Label56: TLabel
              Left = 144
              Top = 104
              Width = 73
              Height = 13
              Caption = #1076#1072#1090#1072' '#1087#1077#1088#1077#1076#1072#1095#1080
            end
            object Label70: TLabel
              Left = 350
              Top = 2
              Width = 17
              Height = 13
              Caption = #1090#1080#1087
            end
            object Label71: TLabel
              Left = 4
              Top = 2
              Width = 35
              Height = 13
              Caption = #1088#1072#1076#1080#1091#1089
            end
            object LabelCountShinAdd: TLabel
              Left = 135
              Top = 48
              Width = 34
              Height = 13
              Caption = #1050#1086#1083'-'#1074#1086
            end
            object LbButton10: TLbButton
              Left = 435
              Top = 136
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
              TabOrder = 0
              UseHotTrackFont = False
              OnClick = LbButton10Click
            end
            object LbButton11: TLbButton
              Left = 331
              Top = 136
              Width = 100
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1072
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButton11Click
            end
            object LabeledEdit1: TLabeledEdit
              Left = 86
              Top = 19
              Width = 76
              Height = 21
              EditLabel.Width = 38
              EditLabel.Height = 13
              EditLabel.Caption = #1088#1072#1079#1084#1077#1088
              TabOrder = 2
              OnChange = LabeledEdit1Change
            end
            object LabeledEdit2: TLabeledEdit
              Left = 8
              Top = 67
              Width = 121
              Height = 21
              EditLabel.Width = 85
              EditLabel.Height = 13
              EditLabel.Caption = #1089#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
              TabOrder = 3
              OnChange = LabeledEdit1Change
            end
            object DateEdit5: TDateEdit
              Left = 8
              Top = 120
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 4
              OnChange = LabeledEdit1Change
            end
            object DateEdit7: TDateEdit
              Left = 144
              Top = 120
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 5
              OnChange = LabeledEdit1Change
            end
            object Shina_R_Box: TDBLookupComboBox
              Left = 4
              Top = 19
              Width = 69
              Height = 21
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_sh_r
              TabOrder = 6
              OnCloseUp = LabeledEdit1Change
              OnExit = LabeledEdit1Change
            end
            object Shina_K_Box: TDBLookupComboBox
              Left = 186
              Top = 18
              Width = 145
              Height = 21
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_sh_k
              TabOrder = 7
              OnCloseUp = LabeledEdit1Change
              OnExit = LabeledEdit1Change
            end
            object Shina_T_Box: TDBLookupComboBox
              Left = 348
              Top = 18
              Width = 145
              Height = 21
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_sh_t
              TabOrder = 8
              OnCloseUp = LabeledEdit1Change
              OnExit = LabeledEdit1Change
            end
            object EditCountShinAdd: TEdit
              Left = 135
              Top = 67
              Width = 34
              Height = 21
              TabOrder = 9
              Text = '1'
            end
          end
          object Panel_Shin_Spisan: TPanel
            Left = 189
            Top = 66
            Width = 361
            Height = 65
            BevelInner = bvLowered
            Color = 15590358
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object Label55: TLabel
              Left = 8
              Top = 8
              Width = 74
              Height = 13
              Caption = #1076#1072#1090#1072' '#1089#1087#1080#1089#1072#1085#1080#1103
            end
            object LbButton12: TLbButton
              Left = 251
              Top = 24
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
              TabOrder = 0
              UseHotTrackFont = False
              OnClick = LbButton12Click
            end
            object LbButton13: TLbButton
              Left = 147
              Top = 24
              Width = 100
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1072
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButton13Click
            end
            object DateEdit8: TDateEdit
              Left = 8
              Top = 24
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 2
              OnChange = DateEdit8Change
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1044#1058#1055
          ImageIndex = 7
          object Panel_DTP: TPanel
            Left = 0
            Top = 0
            Width = 799
            Height = 484
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel'
            Color = 15590358
            ParentBackground = False
            TabOrder = 1
            object DBGrid_Dtp: TDBGrid
              Left = 0
              Top = 0
              Width = 799
              Height = 441
              Align = alTop
              DataSource = dm.dss_dtp
              FixedColor = 13876122
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid_DtpDrawColumnCell
              OnDblClick = LbButtonEdit_dtpClick
            end
            object LbButtonAdd_dtp: TLbButton
              Left = 7
              Top = 448
              Width = 100
              Height = 25
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
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
              TabOrder = 1
              UseHotTrackFont = False
              OnClick = LbButtonAdd_dtpClick
            end
            object LbButtonDel_dtp: TLbButton
              Left = 219
              Top = 448
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
              TabOrder = 2
              UseHotTrackFont = False
              OnClick = LbButtonDel_dtpClick
            end
            object LbButtonEdit_dtp: TLbButton
              Left = 113
              Top = 448
              Width = 100
              Height = 25
              Caption = #1054#1090#1082#1088#1099#1090#1100
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
              TabOrder = 3
              UseHotTrackFont = False
              OnClick = LbButtonEdit_dtpClick
            end
          end
          object Panel_Add_Dtp: TPanel
            Left = 201
            Top = 0
            Width = 385
            Height = 473
            BevelInner = bvLowered
            Color = 15590358
            ParentBackground = False
            TabOrder = 0
            Visible = False
            object Label78: TLabel
              Left = 8
              Top = 10
              Width = 50
              Height = 13
              Caption = #1076#1072#1090#1072' '#1044#1058#1055
            end
            object Label79: TLabel
              Left = 8
              Top = 61
              Width = 58
              Height = 13
              Caption = #1084#1077#1089#1090#1086' '#1044#1058#1055
            end
            object Label80: TLabel
              Left = 8
              Top = 295
              Width = 71
              Height = 13
              Caption = #1088#1077#1084#1086#1085#1090' '#1074' '#1057#1058#1054
            end
            object Label81: TLabel
              Left = 8
              Top = 349
              Width = 63
              Height = 13
              Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            end
            object Label82: TLabel
              Left = 8
              Top = 248
              Width = 110
              Height = 13
              Caption = #1084#1072#1090#1077#1088#1080#1072#1083#1100#1085#1099#1081' '#1091#1097#1077#1088#1073
            end
            object LbButtonDtp_Save: TLbButton
              Left = 275
              Top = 437
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
              TabOrder = 0
              UseHotTrackFont = False
              OnClick = LbButtonDtp_SaveClick
            end
            object LbButton26: TLbButton
              Left = 169
              Top = 437
              Width = 100
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1072
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
              TabOrder = 11
              UseHotTrackFont = False
              OnClick = LbButton26Click
            end
            object LabeledEdit_injured_dtp: TLabeledEdit
              Left = 68
              Top = 221
              Width = 50
              Height = 21
              Alignment = taRightJustify
              EditLabel.Width = 108
              EditLabel.Height = 13
              EditLabel.Caption = #1082#1086#1083'-'#1074#1086' '#1087#1086#1089#1090#1088#1072#1076#1072#1074#1096#1080#1093
              NumbersOnly = True
              TabOrder = 5
              Text = '0'
              OnChange = DateEdit_dtpChange
              OnKeyPress = year_akb_editKeyPress
            end
            object LabeledEditDriver_dtp: TLabeledEdit
              Left = 8
              Top = 152
              Width = 369
              Height = 21
              EditLabel.Width = 47
              EditLabel.Height = 13
              EditLabel.Caption = #1074#1086#1076#1080#1090#1077#1083#1100
              TabOrder = 3
              OnChange = DateEdit_dtpChange
            end
            object DateEdit_dtp: TDateEdit
              Left = 8
              Top = 29
              Width = 121
              Height = 21
              NumGlyphs = 2
              TabOrder = 1
              OnChange = DateEdit_dtpChange
            end
            object placeMemo_dtp: TMemo
              Left = 8
              Top = 80
              Width = 369
              Height = 49
              Lines.Strings = (
                'placeMemo_dtp')
              TabOrder = 2
              OnChange = DateEdit_dtpChange
            end
            object noteMemo_dtp: TMemo
              Left = 8
              Top = 368
              Width = 369
              Height = 49
              Lines.Strings = (
                'noteMemo_dtp')
              TabOrder = 10
              OnChange = DateEdit_dtpChange
            end
            object CheckBox_guilty_dtp: TCheckBox
              Left = 8
              Top = 179
              Width = 289
              Height = 17
              Caption = #1074#1080#1085#1086#1074#1077#1085'/'#1085#1077' '#1074#1080#1085#1086#1074#1077#1085
              TabOrder = 4
              OnClick = CheckBox_guilty_dtpClick
            end
            object LabeledEdit_wounded_dtp: TLabeledEdit
              Left = 124
              Top = 221
              Width = 50
              Height = 21
              Alignment = taRightJustify
              EditLabel.Width = 36
              EditLabel.Height = 13
              EditLabel.Caption = #1088#1072#1085#1077#1085#1086
              NumbersOnly = True
              TabOrder = 6
              Text = '0'
              OnChange = DateEdit_dtpChange
              OnKeyPress = year_akb_editKeyPress
            end
            object LabeledEdit_killed_dtp: TLabeledEdit
              Left = 180
              Top = 221
              Width = 51
              Height = 21
              Alignment = taRightJustify
              EditLabel.Width = 41
              EditLabel.Height = 13
              EditLabel.Caption = #1087#1086#1075#1080#1073#1083#1086
              NumbersOnly = True
              TabOrder = 7
              Text = '0'
              OnChange = DateEdit_dtpChange
              OnKeyPress = year_akb_editKeyPress
            end
            object RxDBLookupCombo_place_cto: TDBLookupComboBox
              Left = 8
              Top = 314
              Width = 369
              Height = 21
              DataField = 'id_rem_place'
              DataSource = dm.dss_dtp
              KeyField = 'id'
              ListField = 'name'
              ListSource = dm.dss_placerem
              TabOrder = 9
              OnCloseUp = DateEdit_dtpChange
            end
            object CurrencyEdit_Amount_dtp: TCurrencyEdit
              Left = 8
              Top = 268
              Width = 121
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              TabOrder = 8
              OnChange = DateEdit_dtpChange
            end
          end
        end
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 0
        Width = 807
        Height = 49
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 41
            Width = 801
          end>
        object ToolBar1: TToolBar
          Left = 11
          Top = 0
          Width = 792
          Height = 41
          ButtonWidth = 194
          Caption = 'ToolBar1'
          Images = Main.ImageList2
          List = True
          ShowCaptions = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 0
            Caption = #1069#1082#1089#1087#1083#1091#1090#1072#1094#1080#1086#1085#1085#1072#1103' '#1082#1072#1088#1090#1072
            ImageIndex = 15
            OnClick = LbB_ExplClick
          end
          object ToolButton2: TToolButton
            Left = 194
            Top = 0
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1101#1082#1089#1087#1091#1090#1072#1094#1080#1086#1085#1085#1091#1102' '#1082#1072#1088#1090#1091
            ImageIndex = 4
            OnClick = LbB_Expl_addClick
          end
          object ToolButton3: TToolButton
            Left = 388
            Top = 0
            Caption = #1056#1077#1084#1086#1085#1090#1085#1072#1103' '#1082#1072#1088#1090#1072
            ImageIndex = 16
            Wrap = True
            OnClick = CoolItemListRemontClick
          end
          object ToolButton4: TToolButton
            Left = 0
            Top = 22
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1077#1084#1086#1085#1090#1085#1091#1102' '#1082#1072#1088#1090#1091
            ImageIndex = 18
            OnClick = CoolItemAddRemontClick
          end
          object ToolButton5: TToolButton
            Left = 194
            Top = 22
            Caption = #1047#1072#1103#1074#1086#1095#1085#1099#1081' '#1083#1080#1089#1090
            ImageIndex = 17
            OnClick = ToolButton5Click
          end
        end
      end
      object LbButton25: TLbButton
        Left = 653
        Top = 567
        Width = 124
        Height = 25
        Caption = #1040#1082#1090' '#1079#1072#1082#1088#1077#1087#1083#1077#1085#1080#1103
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
        TabOrder = 5
        UseHotTrackFont = False
        OnClick = LbButton25Click
      end
      object LbButtonExport: TLbButton
        Left = 546
        Top = 598
        Width = 231
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1058#1057' '#1074' '#1041#1044' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
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
        TabOrder = 6
        UseHotTrackFont = False
        Visible = False
        OnClick = LbButtonExportClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 632
    Top = 200
  end
end

object frmFinGSM: TfrmFinGSM
  Left = 200
  Top = 106
  BorderIcons = [biSystemMenu]
  Caption = #1060#1080#1085#1072#1085#1089#1080#1088#1086#1074#1072#1085#1080#1077' '#1043#1057#1052
  ClientHeight = 412
  ClientWidth = 579
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 348
    Width = 579
    Height = 64
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object LbB_Del: TLbButton
      Left = 320
      Top = 35
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
      TabOrder = 0
      UseHotTrackFont = False
      OnClick = LbB_DelClick
    end
    object LbB_Last: TLbButton
      Left = 320
      Top = 3
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
      TabOrder = 1
      UseHotTrackFont = False
      OnClick = LbB_LastClick
    end
    object LbB_Next: TLbButton
      Left = 216
      Top = 3
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
    object LbB_Prior: TLbButton
      Left = 112
      Top = 3
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
      TabOrder = 3
      UseHotTrackFont = False
      OnClick = LbB_PriorClick
    end
    object LbB_First: TLbButton
      Left = 8
      Top = 3
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
      TabOrder = 4
      UseHotTrackFont = False
      OnClick = LbB_FirstClick
    end
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 193
    Width = 579
    Height = 155
    Align = alClient
    Ctl3D = False
    DataSource = dm.ds_libr2
    FixedColor = 15590358
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridDrawColumnCell
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 579
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    Color = 15590358
    TabOrder = 2
    object Label1: TLabel
      Left = 4
      Top = 0
      Width = 31
      Height = 13
      Caption = #1054#1090#1076#1077#1083
    end
    object Depart_box: TRxDBLookupCombo
      Left = 2
      Top = 15
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'id'
      LookupDisplay = 'name'
      LookupSource = dm.dss_dep
      TabOrder = 0
      OnChange = Depart_boxChange
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 40
    Width = 579
    Height = 120
    Align = alTop
    BevelOuter = bvNone
    Color = 15590358
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 579
      Height = 120
      Align = alClient
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      object Label2: TLabel
        Left = 4
        Top = 15
        Width = 58
        Height = 13
        Caption = #1052#1072#1088#1082#1072' '#1043#1057#1052
      end
      object Label5: TLabel
        Left = 4
        Top = 55
        Width = 48
        Height = 13
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077
      end
      object Label3: TLabel
        Left = 156
        Top = 15
        Width = 40
        Height = 13
        Caption = #1041#1102#1076#1078#1077#1090
      end
      object Label4: TLabel
        Left = 308
        Top = 15
        Width = 26
        Height = 13
        Caption = #1044#1072#1090#1072
      end
      object Label6: TLabel
        Left = 436
        Top = 15
        Width = 93
        Height = 13
        Caption = #1058#1080#1087' '#1087#1077#1088#1077#1095#1080#1089#1083#1077#1085#1080#1103
      end
      object MarkGsm_box: TRxDBLookupCombo
        Left = 2
        Top = 30
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.dss_markGsm
        TabOrder = 0
        OnChange = MarkGsm_boxChange
      end
      object RxCalcEdit1: TRxCalcEdit
        Left = 2
        Top = 71
        Width = 143
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        NumGlyphs = 2
        TabOrder = 1
      end
      object Budl_box: TRxDBLookupCombo
        Left = 154
        Top = 30
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.dss_source_f
        TabOrder = 2
      end
      object DateEdit1: TDateEdit
        Left = 305
        Top = 30
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 3
      end
      object RadioGroup1: TRadioGroup
        Left = 154
        Top = 55
        Width = 145
        Height = 59
        TabOrder = 4
      end
      object RadioButton1: TRadioButton
        Left = 168
        Top = 63
        Width = 113
        Height = 17
        Caption = #1088#1091#1073#1083#1080
        Checked = True
        TabOrder = 5
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 168
        Top = 79
        Width = 113
        Height = 17
        Caption = #1083#1080#1090#1088#1099
        TabOrder = 6
      end
      object RadioButton3: TRadioButton
        Left = 168
        Top = 95
        Width = 113
        Height = 17
        Caption = #1090#1086#1085#1085#1099
        TabOrder = 7
      end
      object LbB_Post: TLbButton
        Left = 325
        Top = 88
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
        TabOrder = 8
        UseHotTrackFont = False
        OnClick = LbB_PostClick
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 434
        Top = 30
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.dss_typePay
        TabOrder = 9
      end
    end
  end
  object LbStaticText2: TLbStaticText
    Left = 0
    Top = 160
    Width = 579
    Height = 33
    Align = alTop
    Caption = #1055#1077#1088#1080#1086#1076
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'MS Sans Serif'
    HotTrackFont.Style = []
    Style = bsModern
  end
  object RXD1: TDateEdit
    Left = 50
    Top = 166
    Width = 97
    Height = 21
    NumGlyphs = 2
    YearDigits = dyFour
    TabOrder = 5
  end
  object RXD2: TDateEdit
    Left = 153
    Top = 166
    Width = 97
    Height = 21
    NumGlyphs = 2
    YearDigits = dyFour
    TabOrder = 6
  end
  object Panel4: TPanel
    Left = 260
    Top = 163
    Width = 28
    Height = 28
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 7
    object LbSpeedButton4: TLbSpeedButton
      Left = 0
      Top = 0
      Width = 28
      Height = 28
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000430B0000430B00000000000000000000FFFF006B6B52
        636B73CEA584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00B5B5943A73A52173B57B8C8CD6A584FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF006394B53AA5FF218CEF2173B5849484D6A584FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF004AB5FF5ABDFF42A5FF218CEF2173
        B5849484D6A584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0031A5FF52BDFF
        5ABDFF42A5FF218CEF2173B5849484D6A584FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF0031A5FF52BDFF5ABDFF42A5FF218CEF2173B5949484D6A584FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF0031A5FF52BDFF5ABDFF42A5FF218CEF21
        73B5949484D6A584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0031A5FF52BD
        FF5ABDFF42A5FF218CEF2173B5949484FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF0031A5FF52BDFF5ABDFF3AA5FF3184D65A6B63FFFF00FFFF00AD7B
        5A528C3A006300007300088410007308427B31427B31FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF0031A5FF52BDFF7BC5FFCED6C5A5A58C
        947B5AB5947342843184A56384A55A639442107310109C2921AD42087B194A94
        42FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00EFEFCEC5ADADCEA594FFF7CEFFFFD6FFFFDEFFFFD6FFFFD6FFFFD6316B21
        21AD4231C563107B1952944AFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00CEB594CEA594FFEFBDFFE6BDFFF7CEFFFFD6FFFFD6FF
        FFD6FFFFDEFFFFDE1084213AD66B31BD52088419FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00C59C7BEFDEB50063008CB57BFFF7
        CEFFFFD6FFFFD6FFFFDEFFFFE6FFFFEF10841942DE734AE67B087B19AD8C6BFF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00D6BD9C006300
        108419198C219CBD8CFFFFD6FFFFD61084191084191084190884194AE67B4AE6
        84108421108419108419FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00CE
        A5840063001984215AF78C52EF84108419B5A584FFFFD6528C3A317B2121A542
        42D66B4AE68452F78C4AE67B29AD42218431FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00006300107B1952E67B5AF78C52F78C3ACE6B107310FFFFD6FF
        FFDE52943A1073103ACE6B52F78C5AF78C52E67B107B19529442FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF0000630021843129AD424AE67B52F78C4AE68442D6
        6B21A542317B21FFFFDEFFFFDE52943A10841952EF845AF78C198421529442BD
        9C8CFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00108419108419108419108421
        4AE6844AE67B108419108419108419108419FFFFDEFFFFD69CBD8C198C211084
        1952943AD6C5A5CEA584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00DEB594087B194AE67B42DE73108419F7CE9CF7D6A5F7E6BDFFF7CEFFFFD6
        FFFFD68CB57B9CB584FFFFD6C5A584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00C59C7B29945231BD523AD66B108421F7CE9CF7CE94F7
        C594F7D6ADF7E6BDF7E6BDFFEFC5FFFFD6EFDEBDB58463FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00CEA584107B1931C56321AD
        42316B21F7C594EFBD84F7BD8CF7C594F7D6ADFFEFBDFFEFC5C5A584FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        C5AD84087B1921AD42109C2910731063944284A55A84A563428431F7E6BDCEA5
        84FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00006300088410007308088410007300006300528C3A
        E6C5A5CEA584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00B5946BC59C8CCE
        A59CCEA59CCEA584FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00}
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
      NumGlyphs = 1
      ParentShowHint = False
      ShowHint = True
      Style = bsModern
      OnClick = LbSpeedButton4Click
    end
  end
end

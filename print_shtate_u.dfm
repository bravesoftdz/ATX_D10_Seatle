object Print_shtate: TPrint_shtate
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  Caption = #1055#1077#1095#1072#1090#1100' '#1096#1090#1072#1090#1085#1086#1075#1086' '#1088#1072#1089#1087#1080#1089#1072#1085#1080#1103
  ClientHeight = 327
  ClientWidth = 299
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 0
    Top = 283
    Width = 299
    Height = 44
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 324
    object LbB_Search: TLbButton
      Left = 7
      Top = 12
      Width = 100
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
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
      OnClick = LbB_SearchClick
    end
    object LbButton2: TLbButton
      Left = 113
      Top = 12
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
      OnClick = bclClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 299
    Height = 283
    Align = alClient
    Caption = #1050#1088#1080#1090#1077#1088#1080#1081' '#1087#1077#1095#1072#1090#1080
    TabOrder = 1
    ExplicitTop = 25
    ExplicitHeight = 299
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 15
      Width = 295
      Height = 266
      HorzScrollBar.Size = 15
      HorzScrollBar.Style = ssFlat
      VertScrollBar.Size = 15
      VertScrollBar.Style = ssFlat
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      ExplicitHeight = 282
      object serv_box: TCheckBox
        Left = 8
        Top = 112
        Width = 97
        Height = 17
        Caption = #1057#1083#1091#1078#1073#1072
        TabOrder = 8
        OnClick = serv_boxClick
      end
      object reg_box: TCheckBox
        Left = 8
        Top = 16
        Width = 121
        Height = 17
        Caption = #1043#1072#1088#1085#1080#1079#1086#1085'/'#1054#1073#1083#1072#1089#1090#1100
        TabOrder = 0
        OnClick = reg_boxClick
      end
      object pre_depart_box: TCheckBox
        Left = 8
        Top = 88
        Width = 97
        Height = 17
        Caption = #1055#1086#1076'-'#1086#1090#1076#1077#1083
        TabOrder = 6
        OnClick = pre_depart_boxClick
      end
      object div_box: TCheckBox
        Left = 8
        Top = 40
        Width = 97
        Height = 17
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077
        TabOrder = 2
        OnClick = div_boxClick
      end
      object depart_box: TCheckBox
        Left = 8
        Top = 64
        Width = 97
        Height = 17
        Caption = #1054#1090#1076#1077#1083
        TabOrder = 4
        OnClick = depart_boxClick
      end
      object db_serv: TRxDBLookupCombo
        Left = 128
        Top = 112
        Width = 145
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_serv
        TabOrder = 9
      end
      object db_reg: TRxDBLookupCombo
        Left = 128
        Top = 16
        Width = 145
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_reg
        TabOrder = 1
      end
      object db_pre: TRxDBLookupCombo
        Left = 128
        Top = 88
        Width = 145
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_pre
        TabOrder = 7
      end
      object db_div: TRxDBLookupCombo
        Left = 128
        Top = 40
        Width = 145
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_div
        TabOrder = 3
      end
      object db_depart: TRxDBLookupCombo
        Left = 128
        Top = 64
        Width = 145
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_depart
        TabOrder = 5
      end
      object RadioButton1: TRadioButton
        Left = 8
        Top = 176
        Width = 113
        Height = 17
        Caption = #1086#1073#1097#1080#1081
        Checked = True
        TabOrder = 10
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 192
        Width = 113
        Height = 17
        Caption = #1087#1086' '#1089#1083#1091#1078#1073#1077
        TabOrder = 11
      end
      object RadioButton3: TRadioButton
        Left = 8
        Top = 224
        Width = 113
        Height = 17
        Caption = #1087#1086' '#1096#1090#1072#1090#1091
        TabOrder = 12
      end
      object RadioButton4: TRadioButton
        Left = 8
        Top = 208
        Width = 113
        Height = 17
        Caption = #1087#1086' '#1089#1083#1091#1078#1073#1077' 2'
        TabOrder = 13
      end
      object preserv_box: TCheckBox
        Left = 8
        Top = 136
        Width = 97
        Height = 17
        Caption = #1055#1086#1076' '#1089#1083#1091#1078#1073#1072
        TabOrder = 14
        OnClick = preserv_boxClick
      end
      object db_preserv: TRxDBLookupCombo
        Left = 128
        Top = 136
        Width = 145
        Height = 21
        DropDownCount = 8
        Enabled = False
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.ds_preserv
        TabOrder = 15
      end
    end
  end
end

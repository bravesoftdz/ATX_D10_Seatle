object frmRemont: TfrmRemont
  Left = 266
  Top = 118
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1077#1084#1086#1085#1090
  ClientHeight = 453
  ClientWidth = 708
  Color = 15590358
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 416
    Width = 708
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    Color = 15590358
    TabOrder = 0
    object LbB_Cancel: TLbButton
      Left = 8
      Top = 7
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
      TabOrder = 0
      UseHotTrackFont = False
      OnClick = LbB_CancelClick
    end
    object LbB_Post: TLbButton
      Left = 112
      Top = 7
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
    object LbButton5: TLbButton
      Left = 592
      Top = 7
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
      OnClick = LbButton5Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    Color = 15590358
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 6
      Top = 0
      Width = 475
      Height = 129
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
      Color = 15590358
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 46
        Width = 41
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1086'*'
      end
      object Label2: TLabel
        Left = 240
        Top = 46
        Width = 59
        Height = 13
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077'*'
      end
      object Label3: TLabel
        Left = 8
        Top = 70
        Width = 69
        Height = 13
        Caption = #1042#1080#1076' '#1088#1077#1084#1086#1085#1090#1072'*'
      end
      object Label4: TLabel
        Left = 240
        Top = 70
        Width = 82
        Height = 13
        Caption = #1052#1077#1089#1090#1086' '#1088#1077#1084#1086#1085#1090#1072'*'
      end
      object Label10: TLabel
        Left = 8
        Top = 95
        Width = 48
        Height = 13
        Caption = #1052#1072#1089#1083#1086' ('#1083')'
      end
      object Label12: TLabel
        Left = 8
        Top = 19
        Width = 34
        Height = 13
        Caption = #1053#1086#1084#1077#1088
      end
      object DateEdit1: TDateEdit
        Left = 80
        Top = 45
        Width = 145
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
        OnChange = DateEdit1Change
      end
      object DateEdit2: TDateEdit
        Left = 324
        Top = 45
        Width = 145
        Height = 21
        NumGlyphs = 2
        TabOrder = 2
        OnChange = DateEdit1Change
      end
      object VidCombo1: TRxDBLookupCombo
        Left = 80
        Top = 69
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.dss_vidrem
        TabOrder = 3
        OnChange = DateEdit1Change
      end
      object PlaceCombo2: TRxDBLookupCombo
        Left = 324
        Top = 69
        Width = 145
        Height = 21
        DropDownCount = 8
        LookupField = 'id'
        LookupDisplay = 'name'
        LookupSource = dm.dss_placerem
        TabOrder = 4
        OnChange = DateEdit1Change
      end
      object RxCalcOil: TRxCalcEdit
        Left = 80
        Top = 94
        Width = 49
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 5
        OnChange = DateEdit1Change
      end
      object RxCalcEdit3: TRxCalcEdit
        Left = 80
        Top = 18
        Width = 49
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        DecimalPlaces = 0
        DisplayFormat = '#'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 0
        OnChange = DateEdit1Change
      end
    end
    object GroupBox2: TGroupBox
      Left = 487
      Top = 0
      Width = 204
      Height = 129
      Caption = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1087#1080#1076#1086#1084#1077#1090#1088#1072
      TabOrder = 1
      object Label5: TLabel
        Left = 8
        Top = 17
        Width = 81
        Height = 13
        Caption = #1085#1072#1095#1072#1083#1086' '#1088#1077#1084#1086#1085#1090#1072
      end
      object Label7: TLabel
        Left = 8
        Top = 57
        Width = 76
        Height = 13
        Caption = #1089#1083#1077#1076#1091#1102#1097#1077#1077' '#1058#1054
      end
      object RxCalcEdit1: TRxCalcEdit
        Left = 8
        Top = 32
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 0
        OnChange = DateEdit1Change
      end
      object RxCalcEdit2: TRxCalcEdit
        Left = 8
        Top = 72
        Width = 121
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        AutoSize = False
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 1
        OnChange = DateEdit1Change
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 137
    Width = 708
    Height = 279
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1084#1077#1085#1072' '#1072#1075#1088#1077#1075#1072#1090#1086#1074
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SG_AGR: TStringGrid
        Left = 0
        Top = 65
        Width = 700
        Height = 186
        Align = alClient
        ColCount = 3
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDrawCell = SG_AGRDrawCell
        OnSelectCell = SG_AGRSelectCell
        ColWidths = (
          295
          120
          118)
        RowHeights = (
          16)
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Color = 15590358
        TabOrder = 1
        object LabeledEdit1: TLabeledEdit
          Left = 0
          Top = 24
          Width = 297
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          TabOrder = 0
        end
        object LabeledEdit2: TLabeledEdit
          Left = 296
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 73
          EditLabel.Height = 13
          EditLabel.Caption = #1057#1090#1072#1088#1099#1081' '#1085#1086#1084#1077#1088
          TabOrder = 1
        end
        object LabeledEdit3: TLabeledEdit
          Left = 416
          Top = 24
          Width = 121
          Height = 21
          EditLabel.Width = 69
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1086#1074#1099#1081' '#1085#1086#1084#1077#1088
          TabOrder = 2
        end
        object LbButton1: TLbButton
          Left = 536
          Top = 21
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
          TabOrder = 3
          UseHotTrackFont = False
          OnClick = LbButton1Click
        end
      end
      object Button1: TLbButton
        Left = 520
        Top = 120
        Width = 17
        Height = 17
        Hint = #1059#1076#1072#1083#1080#1090#1100
        Caption = '<-'
        Color = 13876122
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -11
        HotTrackFont.Name = 'MS Sans Serif'
        HotTrackFont.Style = []
        ModalResult = 0
        ParentColor = False
        ParentShowHint = False
        ShowHint = True
        Style = bsModern
        TabOrder = 2
        UseHotTrackFont = False
        OnClick = N1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1077#1084#1086#1085#1090
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Color = 15590358
        TabOrder = 0
        object Label6: TLabel
          Left = 296
          Top = 8
          Width = 55
          Height = 13
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        end
        object LabeledEdit4: TLabeledEdit
          Left = 0
          Top = 24
          Width = 297
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          TabOrder = 0
        end
        object LbButton2: TLbButton
          Left = 416
          Top = 21
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
          TabOrder = 2
          UseHotTrackFont = False
          OnClick = LbButton2Click
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 296
          Top = 24
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          TabOrder = 1
        end
      end
      object SG_REM: TStringGrid
        Left = 0
        Top = 65
        Width = 700
        Height = 186
        Align = alClient
        ColCount = 2
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnDrawCell = SG_AGRDrawCell
        OnSelectCell = SG_AGRSelectCell
        ColWidths = (
          295
          120)
        RowHeights = (
          16)
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1047#1072#1087#1095#1072#1089#1090#1080#1103
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Color = 15590358
        TabOrder = 0
        object Label8: TLabel
          Left = 296
          Top = 8
          Width = 55
          Height = 13
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        end
        object LabeledEdit5: TLabeledEdit
          Left = 0
          Top = 24
          Width = 297
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          TabOrder = 0
        end
        object LbButton3: TLbButton
          Left = 416
          Top = 21
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
          TabOrder = 2
          UseHotTrackFont = False
          OnClick = LbButton3Click
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 296
          Top = 24
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          TabOrder = 1
        end
      end
      object SG_ZAP: TStringGrid
        Left = 0
        Top = 65
        Width = 700
        Height = 186
        Align = alClient
        ColCount = 2
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnDrawCell = SG_AGRDrawCell
        OnSelectCell = SG_AGRSelectCell
        ColWidths = (
          295
          120)
        RowHeights = (
          16)
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1058#1052#1062
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Color = 15590358
        TabOrder = 0
        object Label9: TLabel
          Left = 296
          Top = 8
          Width = 55
          Height = 13
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        end
        object LabeledEdit6: TLabeledEdit
          Left = 0
          Top = 24
          Width = 297
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          TabOrder = 0
        end
        object LbButton4: TLbButton
          Left = 416
          Top = 21
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
          TabOrder = 2
          UseHotTrackFont = False
          OnClick = LbButton4Click
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 296
          Top = 24
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          TabOrder = 1
        end
      end
      object SG_TMC: TStringGrid
        Left = 0
        Top = 65
        Width = 700
        Height = 186
        Align = alClient
        ColCount = 2
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnDrawCell = SG_AGRDrawCell
        OnSelectCell = SG_AGRSelectCell
        ColWidths = (
          295
          120)
        RowHeights = (
          16)
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1058#1052#1062' '#1089#1086' '#1089#1082#1083#1072#1076#1072
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Color = 15590358
        TabOrder = 0
        object Label11: TLabel
          Left = 296
          Top = 8
          Width = 55
          Height = 13
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        end
        object LabeledEdit7: TLabeledEdit
          Left = 0
          Top = 24
          Width = 297
          Height = 21
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          TabOrder = 0
        end
        object LbButton6: TLbButton
          Left = 416
          Top = 21
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
          TabOrder = 2
          UseHotTrackFont = False
          OnClick = LbButton6Click
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 296
          Top = 24
          Width = 121
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          TabOrder = 1
        end
      end
      object SG_TMC_SKLAD: TStringGrid
        Left = 0
        Top = 65
        Width = 700
        Height = 186
        Align = alClient
        ColCount = 2
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnDrawCell = SG_AGRDrawCell
        OnSelectCell = SG_AGRSelectCell
        ColWidths = (
          295
          120)
        RowHeights = (
          16)
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 273
    object N1: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = N1Click
    end
  end
  object ds_remont: TDataSource
    Left = 600
    Top = 241
  end
end

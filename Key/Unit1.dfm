object Form1: TForm1
  Left = 772
  Top = 178
  BorderStyle = bsToolWindow
  Caption = 'Activate ATX'
  ClientHeight = 139
  ClientWidth = 179
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000080000000000800000000000000000000077F7FF7F77000000000000
    00000007770000000000777000000000000000700077F7FF7F77000700000000
    00008707770000000000777070000000000080700077F7FF7F77000700000000
    00008707770000000000777070000000000080700077F7FF7F77000700000000
    000087077700000000007770700000000000807000CEECCCCCEE000700000000
    000087888CCCEECCCEECC880700000000000888887CCCEECEECC888800800000
    000088877077CCEEECC88888807800000000887800077CBBCC88888880070000
    000087008087CCEC800888888008000000000030007CCEECCBB0008800070000
    000003B30CCCCEECCCBBBB000008000000003BB30CCCEECCCCC8BBBB00070000
    0003BB3000888888880088BBBB000000003BB3000000000000000088BB000000
    03BB30000000000000000000888000003BB30000000000000000000000000003
    BB30000000000000000000000000003BB300000000000000000000000000000B
    3000000000000000000000000000DDF000000000000000000000000000000990
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFF8007FFFE0001FFFC0000FFF800007FF000003FF000003FF00
    0003FF000003FF000003FF000003FF000003FF000001FF000000FF000000FF00
    0000FF800000FF000000FE000000FC0C0301F81FFFC1F03FFFF1E07FFFFFC0FF
    FFFF81FFFFFF03FFFFFF07FFFFFF0FFFFFFF9FFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 10
    Width = 22
    Height = 13
    Caption = #1050#1086#1076':'
  end
  object Label2: TLabel
    Left = 8
    Top = 76
    Width = 29
    Height = 13
    Caption = #1050#1083#1102#1095':'
  end
  object Edit1: TEdit
    Left = 48
    Top = 8
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 40
    Width = 161
    Height = 25
    Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1082#1083#1102#1095
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 48
    Top = 72
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button3: TButton
    Left = 8
    Top = 104
    Width = 161
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = Button3Click
  end
end

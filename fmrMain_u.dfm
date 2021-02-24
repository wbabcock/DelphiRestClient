object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Delphi REST VCL'
  ClientHeight = 419
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 56
    Height = 13
    Caption = 'REST URL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 107
    Width = 58
    Height = 13
    Caption = 'Response:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 419
    ExplicitLeft = 408
    ExplicitTop = 64
    ExplicitHeight = 100
  end
  object Edit1: TEdit
    Left = 216
    Top = 13
    Width = 393
    Height = 21
    TabOrder = 0
    Text = 'posts/1'
  end
  object Button1: TButton
    Left = 615
    Top = 11
    Width = 75
    Height = 25
    Caption = 'RUN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RichEdit1: TRichEdit
    Left = 86
    Top = 104
    Width = 611
    Height = 299
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
    Zoom = 100
  end
  object cboRestMethods: TComboBox
    Left = 94
    Top = 13
    Width = 99
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'GET'
      'POST'
      'PUT'
      'DELETE')
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 12
    Top = 373
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = dmREST.rstRequest
      FieldName = 'Resource'
      Control = Edit1
      Track = True
    end
    object LinkPropertyToFieldLinesText: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = dmREST.rstResponse
      FieldName = 'JSONText'
      Component = RichEdit1
      ComponentProperty = 'Lines.Text'
    end
  end
end

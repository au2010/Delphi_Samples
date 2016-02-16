object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 253
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 32
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object CheckBox1: TCheckBox
    Left = 32
    Top = 43
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 1
    OnClick = Edit1Change
  end
  object Edit2: TEdit
    Left = 32
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 32
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object PrototypeBindSource1: TPrototypeBindSource
    AutoActivate = True
    AutoPost = True
    FieldDefs = <
      item
        Name = 'InputString1'
        ReadOnly = False
      end
      item
        Name = 'InputString2'
        ReadOnly = False
      end
      item
        Name = 'InputBool'
        FieldType = ftBoolean
        ReadOnly = False
      end>
    ScopeMappings = <>
    OnCreateAdapter = PrototypeBindSource1CreateAdapter
    Left = 208
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = PrototypeBindSource1
      FieldName = 'InputString1'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = PrototypeBindSource1
      FieldName = 'InputString2'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = PrototypeBindSource1
      FieldName = 'InputBool'
      Control = CheckBox1
      Track = True
    end
  end
end

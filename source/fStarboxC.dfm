object Form1: TForm1
  Left = 264
  Top = 193
  Caption = 'Starbox C'
  ClientHeight = 515
  ClientWidth = 864
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 512
    Width = 864
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 339
    ExplicitWidth = 502
  end
  object GLSceneViewer1: TGLSceneViewer
    Left = 0
    Top = 0
    Width = 632
    Height = 512
    Camera = GLCamera1
    Buffer.BackgroundColor = clBlack
    Buffer.ColorDepth = cd24bits
    FieldOfView = 157.897079467773400000
    PenAsTouch = False
    Align = alClient
    OnMouseDown = GLSceneViewer1MouseDown
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 632
    Top = 0
    Width = 232
    Height = 512
    Align = alRight
    TabOrder = 1
    object ButtonStars: TButton
      Left = 22
      Top = 16
      Width = 75
      Height = 25
      Caption = #1047#1074#1105#1079#1076#1099
      TabOrder = 0
      OnClick = ButtonStarsClick
    end
    object gbStars: TGroupBox
      Left = 6
      Top = 194
      Width = 202
      Height = 271
      Caption = 'Stars'
      TabOrder = 1
      object shO: TShape
        Left = 134
        Top = 28
        Width = 40
        Height = 24
      end
      object shB: TShape
        Left = 134
        Top = 61
        Width = 40
        Height = 24
      end
      object shA: TShape
        Left = 134
        Top = 95
        Width = 40
        Height = 24
      end
      object shG: TShape
        Left = 134
        Top = 162
        Width = 40
        Height = 24
      end
      object shK: TShape
        Left = 134
        Top = 196
        Width = 40
        Height = 24
      end
      object shF: TShape
        Left = 134
        Top = 129
        Width = 40
        Height = 24
      end
      object shM: TShape
        Left = 134
        Top = 230
        Width = 40
        Height = 24
      end
      object Panel2: TPanel
        Left = 70
        Top = 29
        Width = 40
        Height = 24
        Color = clHotLight
        ParentBackground = False
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 70
        Top = 62
        Width = 40
        Height = 24
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 70
        Top = 96
        Width = 40
        Height = 24
        Color = clCream
        ParentBackground = False
        TabOrder = 2
      end
      object Panel5: TPanel
        Left = 70
        Top = 130
        Width = 40
        Height = 24
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 16
        Top = 34
        Width = 34
        Height = 17
        Caption = 'O'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 4
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 68
        Width = 34
        Height = 17
        Caption = 'B'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 5
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 102
        Width = 34
        Height = 17
        Caption = 'A'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 6
      end
      object CheckBox4: TCheckBox
        Left = 16
        Top = 135
        Width = 34
        Height = 17
        Caption = 'F'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 7
      end
      object CheckBox5: TCheckBox
        Left = 16
        Top = 169
        Width = 34
        Height = 17
        Caption = 'G'
        Checked = True
        Color = clYellow
        ParentColor = False
        State = cbChecked
        TabOrder = 8
      end
      object CheckBox6: TCheckBox
        Left = 16
        Top = 203
        Width = 34
        Height = 17
        Caption = 'K'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 9
      end
      object CheckBox7: TCheckBox
        Left = 16
        Top = 237
        Width = 34
        Height = 17
        Caption = 'M'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 10
      end
      object Panel6: TPanel
        Left = 70
        Top = 163
        Width = 40
        Height = 24
        Color = clYellow
        ParentBackground = False
        TabOrder = 11
      end
      object Panel7: TPanel
        Left = 70
        Top = 197
        Width = 40
        Height = 24
        Color = clFuchsia
        ParentBackground = False
        TabOrder = 12
      end
      object Panel8: TPanel
        Left = 70
        Top = 231
        Width = 40
        Height = 24
        Color = clMaroon
        ParentBackground = False
        TabOrder = 13
      end
      object chbAll: TCheckBox
        Left = 72
        Top = 0
        Width = 41
        Height = 17
        Caption = 'All'
        TabOrder = 14
        OnClick = chbAllClick
      end
    end
    object SpinEdit: TSpinEdit
      Left = 24
      Top = 47
      Width = 63
      Height = 22
      MaxValue = 100000
      MinValue = 1000
      TabOrder = 2
      Value = 1000
    end
    object rgStyle: TRadioGroup
      Left = 6
      Top = 82
      Width = 203
      Height = 90
      Caption = 'Star Style'
      ItemIndex = 0
      Items.Strings = (
        'Square'
        'Smooth')
      TabOrder = 3
    end
  end
  object GLScene1: TGLScene
    Left = 32
    Top = 8
    object GLLightSource1: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000004000000000000000000000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLLightSource2: TGLLightSource
      Ambient.Color = {0000803F0000803F0000803F0000803F}
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {000000000000A040000000000000803F}
      LightStyle = lsOmni
      Specular.Color = {0000803F0000803F0000803F0000803F}
      SpotCutOff = 180.000000000000000000
    end
    object GLDummyCube1: TGLDummyCube
      Direction.Coordinates = {000000000000803F0000000000000000}
      ShowAxes = True
      Up.Coordinates = {0000000000000000000080BF00000000}
      CubeSize = 1.000000000000000000
      VisibleAtRunTime = True
    end
    object GLCamera1: TGLCamera
      DepthOfView = 100.000000000000000000
      FocalLength = 50.000000000000000000
      TargetObject = GLDummyCube1
      Position.Coordinates = {0000004000000000000000000000803F}
    end
  end
  object GLSimpleNavigation1: TGLSimpleNavigation
    Form = Owner
    GLSceneViewer = GLSceneViewer1
    FormCaption = 'Starbox C - %FPS'
    KeyCombinations = <
      item
        ShiftState = [ssLeft, ssRight]
        Action = snaZoom
      end
      item
        ShiftState = [ssLeft]
        Action = snaMoveAroundTarget
      end
      item
        ShiftState = [ssRight]
        Action = snaMoveAroundTarget
      end>
    Left = 174
    Top = 58
  end
  object GLCadencer1: TGLCadencer
    Left = 32
    Top = 64
  end
  object MatLibColors: TGLMaterialLibrary
    Materials = <
      item
        Name = 'ClassO'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Diffuse.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Emission.Color = {00000000000000000000803F0000803F}
        Material.FrontProperties.Specular.Color = {00000000000000000000803F0000803F}
      end
      item
        Name = 'ClassB'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {AE47613ED7A3303F52B85E3F0000803F}
        Material.FrontProperties.Diffuse.Color = {AE47613ED7A3303F52B85E3F0000803F}
        Material.FrontProperties.Emission.Color = {AE47613ED7A3303F52B85E3F0000803F}
        Material.FrontProperties.Specular.Color = {AE47613ED7A3303F52B85E3F0000803F}
      end
      item
        Name = 'ClassA'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
        Material.FrontProperties.Diffuse.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
        Material.FrontProperties.Emission.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
        Material.FrontProperties.Specular.Color = {EAEA6A3FEAEA6A3FA7AD2D3F0000803F}
      end
      item
        Name = 'ClassF'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
        Material.FrontProperties.Diffuse.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
        Material.FrontProperties.Emission.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
        Material.FrontProperties.Specular.Color = {DCD6D63E938E0E3F938C0C3E0000803F}
      end
      item
        Name = 'ClassG'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {0000803F0000803F000000000000803F}
        Material.FrontProperties.Diffuse.Color = {0000803F0000803F000000000000803F}
        Material.FrontProperties.Emission.Color = {0000803F0000803F000000000000803F}
        Material.FrontProperties.Specular.Color = {0000803F0000803F000000000000803F}
      end
      item
        Name = 'ClassK'
        Tag = 0
        Material.FrontProperties.Ambient.Color = {0000803F0000003F000000000000803F}
      end
      item
        Name = 'ClassM'
        Tag = 0
      end>
    Left = 162
    Top = 17
  end
end

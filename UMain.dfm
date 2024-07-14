object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = 'Private public Key finder'
  ClientHeight = 473
  ClientWidth = 873
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Lucida Console'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 12
  object pcMain: TPageControl
    Left = 0
    Top = 25
    Width = 873
    Height = 448
    ActivePage = tsWords
    Align = alClient
    TabOrder = 0
    OnChanging = pcMainChanging
    object tsAbout: TTabSheet
      Caption = 'About'
      ImageIndex = 1
      object mabout: TMemo
        Left = 0
        Top = 0
        Width = 865
        Height = 420
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Lucida Console'
        Font.Style = []
        Lines.Strings = (
          
            'Private Key Finder, a tool for enhancing cryptocurrency security' +
            '!'
          ' By leveraging the 24-word mnemonic from BIP44, '
          
            'it allows users to manage multiple accounts and various cryptocu' +
            'rrencies securely.'
          
            'Running the software on an offline computer adds an extra layer ' +
            'of protection, '
          'ensuring that private keys are never exposed to the internet. '
          
            'This approach is particularly useful for generating alternate ad' +
            'dresses that can be accessed with the 24 words, '
          'while keeping the private key safe on a mobile device or wallet.'
          
            ' The inclusion of a password in BIP44 further strengthens securi' +
            'ty, '
          'making it even harder for unauthorized access.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object tsWords: TTabSheet
      AlignWithMargins = True
      Caption = 'Words'
      ImageIndex = 1
      object cxLabel12: TLabel
        Left = 0
        Top = 0
        Width = 859
        Height = 12
        Align = alTop
        Caption = 'Path'
        ExplicitWidth = 28
      end
      object GridPanel1: TGridPanel
        Left = 0
        Top = 32
        Width = 859
        Height = 382
        Align = alClient
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 15.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 15.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 15.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = cb1
            Row = 0
          end
          item
            Column = 3
            Control = cb2
            Row = 0
          end
          item
            Column = 5
            Control = cb3
            Row = 0
          end
          item
            Column = 1
            Control = cb4
            Row = 1
          end
          item
            Column = 3
            Control = cb5
            Row = 1
          end
          item
            Column = 5
            Control = cb6
            Row = 1
          end
          item
            Column = 1
            Control = cb7
            Row = 2
          end
          item
            Column = 3
            Control = cb8
            Row = 2
          end
          item
            Column = 5
            Control = cb9
            Row = 2
          end
          item
            Column = 1
            Control = cb10
            Row = 3
          end
          item
            Column = 3
            Control = cb11
            Row = 3
          end
          item
            Column = 5
            Control = cb12
            Row = 3
          end
          item
            Column = 1
            Control = cb13
            Row = 4
          end
          item
            Column = 3
            Control = cb14
            Row = 4
          end
          item
            Column = 5
            Control = cb15
            Row = 4
          end
          item
            Column = 1
            Control = cb16
            Row = 5
          end
          item
            Column = 3
            Control = cb17
            Row = 5
          end
          item
            Column = 5
            Control = cb18
            Row = 5
          end
          item
            Column = 1
            Control = cb19
            Row = 6
          end
          item
            Column = 3
            Control = cb20
            Row = 6
          end
          item
            Column = 5
            Control = cb21
            Row = 6
          end
          item
            Column = 1
            Control = cb22
            Row = 7
          end
          item
            Column = 3
            Control = cb23
            Row = 7
          end
          item
            Column = 5
            Control = cb24
            Row = 7
          end
          item
            Column = 0
            Control = Label1
            Row = 0
          end
          item
            Column = 2
            Control = Label2
            Row = 0
          end
          item
            Column = 4
            Control = Label3
            Row = 0
          end
          item
            Column = 0
            Control = Label5
            Row = 1
          end
          item
            Column = 2
            Control = Label6
            Row = 1
          end
          item
            Column = 4
            Control = Label7
            Row = 1
          end
          item
            Column = 0
            Control = Label9
            Row = 2
          end
          item
            Column = 2
            Control = Label10
            Row = 2
          end
          item
            Column = 4
            Control = Label11
            Row = 2
          end
          item
            Column = 0
            Control = Label13
            Row = 3
          end
          item
            Column = 2
            Control = Label14
            Row = 3
          end
          item
            Column = 4
            Control = Label15
            Row = 3
          end
          item
            Column = 0
            Control = Label17
            Row = 4
          end
          item
            Column = 2
            Control = Label18
            Row = 4
          end
          item
            Column = 4
            Control = Label19
            Row = 4
          end
          item
            Column = 0
            Control = Label21
            Row = 5
          end
          item
            Column = 2
            Control = Label22
            Row = 5
          end
          item
            Column = 4
            Control = Label23
            Row = 5
          end
          item
            Column = 0
            Control = Label25
            Row = 6
          end
          item
            Column = 2
            Control = Label26
            Row = 6
          end
          item
            Column = 4
            Control = Label27
            Row = 6
          end
          item
            Column = 0
            Control = Label29
            Row = 7
          end
          item
            Column = 2
            Control = Label30
            Row = 7
          end
          item
            Column = 4
            Control = Label31
            Row = 7
          end
          item
            Column = 3
            Control = bNextInput39
            Row = 8
          end
          item
            Column = 6
            Control = ePassword
            Row = 8
          end
          item
            Column = 5
            Control = Label4
            Row = 8
          end
          item
            Column = 6
            Control = bCopywordsToClipoard
            Row = 0
          end
          item
            Column = 6
            Control = cbSugestedWords
            Row = 7
          end
          item
            Column = 6
            Control = Label8
            Row = 6
          end>
        RowCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 24.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          859
          382)
        object cb1: TComboBox
          Left = 21
          Top = 3
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 0
        end
        object cb2: TComboBox
          Left = 136
          Top = 3
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 1
        end
        object cb3: TComboBox
          Left = 251
          Top = 3
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 2
        end
        object cb4: TComboBox
          Left = 21
          Top = 27
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 3
        end
        object cb5: TComboBox
          Left = 136
          Top = 27
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 4
        end
        object cb6: TComboBox
          Left = 251
          Top = 27
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 5
        end
        object cb7: TComboBox
          Left = 21
          Top = 51
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 6
        end
        object cb8: TComboBox
          Left = 136
          Top = 51
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 7
        end
        object cb9: TComboBox
          Left = 251
          Top = 51
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 8
        end
        object cb10: TComboBox
          Left = 21
          Top = 75
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 9
        end
        object cb11: TComboBox
          Left = 136
          Top = 75
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 10
        end
        object cb12: TComboBox
          Left = 251
          Top = 75
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 11
        end
        object cb13: TComboBox
          Left = 21
          Top = 99
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 12
        end
        object cb14: TComboBox
          Left = 136
          Top = 99
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 13
        end
        object cb15: TComboBox
          Left = 251
          Top = 99
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 14
        end
        object cb16: TComboBox
          Left = 21
          Top = 123
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 15
        end
        object cb17: TComboBox
          Left = 136
          Top = 123
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 16
        end
        object cb18: TComboBox
          Left = 251
          Top = 123
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 17
        end
        object cb19: TComboBox
          Left = 21
          Top = 147
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 18
        end
        object cb20: TComboBox
          Left = 136
          Top = 147
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 19
        end
        object cb21: TComboBox
          Left = 251
          Top = 147
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 20
        end
        object cb22: TComboBox
          Left = 21
          Top = 171
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 21
        end
        object cb23: TComboBox
          Left = 136
          Top = 171
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 22
        end
        object cb24: TComboBox
          Left = 251
          Top = 171
          Width = 90
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 23
        end
        object Label1: TLabel
          Left = 9
          Top = 1
          Width = 7
          Height = 24
          Align = alRight
          Caption = '1'
          ExplicitHeight = 12
        end
        object Label2: TLabel
          Left = 124
          Top = 1
          Width = 7
          Height = 24
          Align = alRight
          Caption = '2'
          ExplicitHeight = 12
        end
        object Label3: TLabel
          Left = 239
          Top = 1
          Width = 7
          Height = 24
          Align = alRight
          Caption = '3'
          ExplicitHeight = 12
        end
        object Label5: TLabel
          Left = 9
          Top = 25
          Width = 7
          Height = 24
          Align = alRight
          Caption = '4'
          ExplicitHeight = 12
        end
        object Label6: TLabel
          Left = 124
          Top = 25
          Width = 7
          Height = 24
          Align = alRight
          Caption = '5'
          ExplicitHeight = 12
        end
        object Label7: TLabel
          Left = 239
          Top = 25
          Width = 7
          Height = 24
          Align = alRight
          Caption = '6'
          ExplicitHeight = 12
        end
        object Label9: TLabel
          Left = 9
          Top = 49
          Width = 7
          Height = 24
          Align = alRight
          Caption = '7'
          ExplicitHeight = 12
        end
        object Label10: TLabel
          Left = 124
          Top = 49
          Width = 7
          Height = 24
          Align = alRight
          Caption = '8'
          ExplicitHeight = 12
        end
        object Label11: TLabel
          Left = 239
          Top = 49
          Width = 7
          Height = 24
          Align = alRight
          Caption = '9'
          ExplicitHeight = 12
        end
        object Label13: TLabel
          Left = 2
          Top = 73
          Width = 14
          Height = 24
          Align = alRight
          Caption = '10'
          ExplicitHeight = 12
        end
        object Label14: TLabel
          Left = 117
          Top = 73
          Width = 14
          Height = 24
          Align = alRight
          Caption = '11'
          ExplicitHeight = 12
        end
        object Label15: TLabel
          Left = 232
          Top = 73
          Width = 14
          Height = 24
          Align = alRight
          Caption = '12'
          ExplicitHeight = 12
        end
        object Label17: TLabel
          Left = 2
          Top = 97
          Width = 14
          Height = 24
          Align = alRight
          Caption = '13'
          ExplicitHeight = 12
        end
        object Label18: TLabel
          Left = 117
          Top = 97
          Width = 14
          Height = 24
          Align = alRight
          Caption = '14'
          ExplicitHeight = 12
        end
        object Label19: TLabel
          Left = 232
          Top = 97
          Width = 14
          Height = 24
          Align = alRight
          Caption = '15'
          ExplicitHeight = 12
        end
        object Label21: TLabel
          Left = 2
          Top = 121
          Width = 14
          Height = 24
          Align = alRight
          Caption = '16'
          ExplicitHeight = 12
        end
        object Label22: TLabel
          Left = 117
          Top = 121
          Width = 14
          Height = 24
          Align = alRight
          Caption = '17'
          ExplicitHeight = 12
        end
        object Label23: TLabel
          Left = 232
          Top = 121
          Width = 14
          Height = 24
          Align = alRight
          Caption = '18'
          ExplicitHeight = 12
        end
        object Label25: TLabel
          Left = 2
          Top = 145
          Width = 14
          Height = 24
          Align = alRight
          Caption = '19'
          ExplicitHeight = 12
        end
        object Label26: TLabel
          Left = 117
          Top = 145
          Width = 14
          Height = 24
          Align = alRight
          Caption = '20'
          ExplicitHeight = 12
        end
        object Label27: TLabel
          Left = 232
          Top = 145
          Width = 14
          Height = 24
          Align = alRight
          Caption = '21'
          ExplicitHeight = 12
        end
        object Label29: TLabel
          Left = 2
          Top = 169
          Width = 14
          Height = 24
          Align = alRight
          Caption = '22'
          ExplicitHeight = 12
        end
        object Label30: TLabel
          Left = 117
          Top = 169
          Width = 14
          Height = 24
          Align = alRight
          Caption = '23'
          ExplicitHeight = 12
        end
        object Label31: TLabel
          Left = 232
          Top = 169
          Width = 14
          Height = 24
          Align = alRight
          Caption = '24'
          ExplicitHeight = 12
        end
        object bNextInput39: TButton
          Left = 131
          Top = 193
          Width = 100
          Height = 25
          Align = alBottom
          Caption = 'Next'
          TabOrder = 24
          OnClick = bNextInput39Click
        end
        object ePassword: TEdit
          Left = 358
          Top = 195
          Width = 121
          Height = 20
          Anchors = []
          TabOrder = 25
        end
        object Label4: TLabel
          Left = 268
          Top = 199
          Width = 56
          Height = 12
          Anchors = []
          Caption = 'Password'
          ExplicitLeft = 292
        end
        object bCopywordsToClipoard: TButton
          Left = 346
          Top = 0
          Width = 145
          Height = 25
          Align = alBottom
          Caption = 'To Clipboard'
          TabOrder = 26
          OnClick = bCopywordsToClipoardClick
        end
        object cbSugestedWords: TComboBox
          Left = 346
          Top = 171
          Width = 145
          Height = 20
          Style = csDropDownList
          Anchors = []
          TabOrder = 27
        end
        object Label8: TLabel
          AlignWithMargins = True
          Left = 349
          Top = 148
          Width = 98
          Height = 18
          Align = alLeft
          Caption = 'Sugested words'
          ExplicitHeight = 12
        end
      end
      object cxBIP32Path: TEdit
        Left = 0
        Top = 12
        Width = 859
        Height = 20
        Align = alTop
        TabOrder = 1
        Text = 'm/44H/60H/0H/0'
      end
    end
    object tsKeys: TTabSheet
      Caption = 'Key'
      ImageIndex = 2
      object mKeys: TMemo
        Left = 0
        Top = 0
        Width = 865
        Height = 420
        Align = alClient
        TabOrder = 0
        WordWrap = False
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 873
    Height = 25
    Align = alTop
    TabOrder = 1
  end
end

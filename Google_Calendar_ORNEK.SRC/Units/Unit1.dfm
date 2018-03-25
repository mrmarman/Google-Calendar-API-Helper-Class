object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    'Google Calendar API Helper Class - Kullan'#305'm '#214'rne'#287'i ( Muharrem AR' +
    'MAN - muharrem.arman@trt.net.tr )'
  ClientHeight = 661
  ClientWidth = 1184
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    1184
    661)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 320
    Top = 8
    Width = 856
    Height = 645
    Caption = 'Panel7'
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
    DesignSize = (
      856
      645)
    object Panel4: TPanel
      Tag = 4
      Left = 4
      Top = 7
      Width = 848
      Height = 149
      Anchors = [akLeft, akTop, akRight]
      Color = 10440704
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        848
        149)
      object Label13: TLabel
        Left = 17
        Top = 8
        Width = 127
        Height = 19
        Caption = 'Yeni Olay Kayd'#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnFace
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 34
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ba'#351'lama Tarih / Saat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 57
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Biti'#351' Tarih / Saat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Shape2: TShape
        Left = 334
        Top = 33
        Width = 102
        Height = 21
      end
      object Label21: TLabel
        Left = 436
        Top = 34
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ba'#351'l'#305'k'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 436
        Top = 57
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Konum'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 436
        Top = 80
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bilgi Notu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 376
        Top = 108
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Color Id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 144
        Top = 33
        Width = 97
        Height = 21
        Date = 43179.580538379630000000
        Format = 'dd.MM.yyyy'
        Time = 43179.580538379630000000
        TabOrder = 0
        OnChange = DateTimePicker1Change
      end
      object DateTimePicker2: TDateTimePicker
        Left = 247
        Top = 33
        Width = 82
        Height = 21
        Date = 43179.580538379630000000
        Format = 'HH:mm'
        Time = 43179.580538379630000000
        Kind = dtkTime
        TabOrder = 1
        Visible = False
      end
      object CheckBox2: TCheckBox
        Left = 342
        Top = 35
        Width = 91
        Height = 17
        Caption = 'T'#252'm G'#252'n'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = CheckBox2Click
      end
      object DateTimePicker3: TDateTimePicker
        Left = 144
        Top = 56
        Width = 97
        Height = 21
        Date = 43179.580538379630000000
        Format = 'dd.MM.yyyy'
        Time = 43179.580538379630000000
        TabOrder = 2
      end
      object DateTimePicker4: TDateTimePicker
        Left = 247
        Top = 56
        Width = 82
        Height = 21
        Date = 43179.580538379630000000
        Format = 'HH:mm'
        Time = 43179.580538379630000000
        Kind = dtkTime
        TabOrder = 3
        Visible = False
      end
      object Edit16: TEdit
        Left = 499
        Top = 56
        Width = 342
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
        Text = 'Edit1'
      end
      object Edit17: TEdit
        Left = 499
        Top = 33
        Width = 342
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        Text = 'Edit1'
      end
      object SpinEdit1: TSpinEdit
        Left = 442
        Top = 106
        Width = 54
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 7
        Value = 1
      end
      object BitBtn7: TBitBtn
        Tag = 2
        Left = 334
        Top = 54
        Width = 102
        Height = 26
        Caption = 'G'#252'ncelle'
        TabOrder = 8
        OnClick = BitBtn7Click
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000000000000C384520065A4
          FF00FAF4F10064A3FF00E9C6AA00C7F7FD00F9F3EF0075B57A00F9F3F000EBBD
          9B003D7FFF00ECBF9E00EBBC9A005899FF00E9C7AD00F1C8AC003B7DFF00E8C7
          AC00DDA98000DFAA8200F9F2EF0062A2FF00F7E1D200F9F3EE00509AD90075BB
          FF007AD6F200C58B5E0091C9F90057A58E005F9FFF00E8C4A900E3EDF5005D9E
          FF002E6682002B6289007BD4F100B4D2F000E6B59000EACCB300D0A17D004997
          DA00E3B18C00C4F6FD00B2E3F900A7C5D900DFB49300F8F2ED004B98DB00E0F2
          FF00EBD2BE00478BFF00EDC09F00D9A47A00DCA57D00EACBB200E9C9B0002466
          A6005CB3950070A9CC0060A0FF0058A5D800AED3F600FAF5F2006599C90063DF
          F700E9C3A600E7B79400EAC7AC00ACD2EF00D7A175001A7ABE00EFC6A8005996
          CC006AB9A4007CD4ED005496FF00B1E6F500C4E0FC004D90FF004C8ABE0079D3
          EE00E4B28C0077CBE700F7F0EA0068B3FF00D59D7400EBD0BA00EACEB7005AAB
          FF0054A7FF0074B579005EDCF5006DB8FF0063A3D700D8D8DB00C68C5F00DAD9
          DB005798FF00E1AE87005C9DFF005DE2F8005A9AFF0078D0ED00E5B48F00E5EF
          F70071B9FF0079D3F0004284FF00EBD0BB00D49B6F004185C9005BDFF500E9CB
          B3006BA2D400D19668006CDDF600D8A37800E0AC84004998C500478BC200E9BA
          9800FAF6F1008BC0E70094C7F9007AB6D50085B1DB00C1EBF700469DD000E9C9
          AE0061B0FF0064A4FF00C68A5C00E7B79300FAF4F000549AD800AC876B00E2AF
          8800E9C6AC00A882650090B7D1007ED4EB00B1D8EE00EAC9B00079BDFF0053B2
          970073B8D400EBBE9D00D1976A00CCD4DC005AE1F7005BE2F7004389AA001843
          5A00E9BA96006DCAED00C88D5F00FAF6F200499EF400E2B6960061A1FF0055C9
          E40077BEE700C2F6FD00E5F3FF004F9FDD00EAC9AE005FDCF500D2D5DA00DDA8
          7E00FBF7F400FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ACACACAC9923
          503B20ACACACACACACACAC2E5673227C1C6F398B0000000028ACAC462F549831
          87477778A802083F1BACAC3517322D7D8CA17067185F081460ACACA906576D1D
          92A341656B29610284ACAC130658AB074A53055C962430959CACAC6386372707
          5B3A5105A7971AA588ACAC2A7AA6AB8FAB717F4B2B749B5E4069AC689D048A44
          0E8138918D2C7B3E4E72AC43AA42AB1FAB04AB114DA225A44549AC79AA010315
          A01E6466629E3D7E808EAC09AA8390196A5D5582595A10AA94ACAC0BAA01033C
          210D4C4F336C0AAA6EACAC48AAAAAAAAAAAAAAAAAAAAAAAA75ACAC160F34930C
          9A852652897612369FACACACACACACACACACACACACACACACACAC}
      end
      object Memo2: TMemo
        Left = 499
        Top = 79
        Width = 342
        Height = 67
        Lines.Strings = (
          'Memo2')
        TabOrder = 9
      end
    end
    object Panel5: TPanel
      Tag = 5
      Left = 4
      Top = 159
      Width = 848
      Height = 263
      Anchors = [akLeft, akTop, akRight]
      Color = clGray
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        848
        263)
      object Label16: TLabel
        Left = 17
        Top = 8
        Width = 140
        Height = 19
        Caption = 'Kat'#305'l'#305'mc'#305'lar Giri'#351'i'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnFace
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 4
        Top = 33
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'eposta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 4
        Top = 56
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Ad/Soyad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 4
        Top = 79
        Width = 60
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Bilgi Notu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape3: TShape
        Left = 67
        Top = 100
        Width = 130
        Height = 21
        Visible = False
      end
      object Edit10: TEdit
        Left = 67
        Top = 32
        Width = 192
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit11: TEdit
        Left = 67
        Top = 55
        Width = 192
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        Text = 'Edit1'
      end
      object Edit12: TEdit
        Left = 67
        Top = 78
        Width = 192
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        Text = 'Edit1'
      end
      object CheckBox3: TCheckBox
        Left = 71
        Top = 101
        Width = 118
        Height = 17
        Caption = 'Organizasyondan'
        TabOrder = 3
        Visible = False
      end
      object ListView1: TListView
        Left = 288
        Top = 33
        Width = 457
        Height = 194
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Width = 22
          end
          item
            Alignment = taCenter
            Caption = 'eposta'
            Width = 150
          end
          item
            Alignment = taCenter
            Caption = 'Ad/Soyad'
            Width = 150
          end
          item
            Alignment = taCenter
            Caption = 'Tercih'
            Width = 120
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 5
        ViewStyle = vsReport
      end
      object BitBtn3: TBitBtn
        Left = 67
        Top = 127
        Width = 192
        Height = 25
        Caption = 'Ki'#351'ilere Ekle'
        TabOrder = 4
        OnClick = BitBtn3Click
        Glyph.Data = {
          D6000000424DD60000000000000076000000280000000E0000000C0000000100
          0400000000006000000000000000000000001000000010000000040204000486
          0C00FCFEFC0004CC140004E90E0018EE240004FE060004AE0E0004E01200043E
          040064423C0022FE2600049E0C0004BE0C003CFE3C0009FD1700009887900000
          0000096647390AAA00000966D9990A2A0001096644CAAA2AAAFF9D66643A2222
          2A009666B5DAAA2AAA0196BBBFF89A2A00009B5999790AAA0000099C71900000
          0001009B839000000000009E6890000000000009990000000000}
      end
      object BitBtn2: TBitBtn
        Tag = 1
        Left = 67
        Top = 168
        Width = 190
        Height = 58
        Anchors = [akLeft, akBottom]
        Caption = 'Takvim Yay'#305'nla'
        TabOrder = 6
        OnClick = BitBtn2Click
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B0000000100000000000075B57A002070
          3D00F9F3EF0064BA8D0095D2B20065A4FF0064A3FF002573410081AE910084B0
          9400288C5300EACEB70067BC8F00E9C6AA0074B57900196B3700EACCB300E8C8
          B00071B9FF0061B0FF00EBD2BE00F9F3EE00D59D7400EBBD9B00BAE6D000DDA9
          8000DFAA8200E9C6AC005294FF005899FF0064A4FF00E6B5900062A2FF005495
          FF0061A1FF0068AD6D0068B3FF00D19668005AABFF00EDC09F0061AB810075BB
          FF00FAF4F0006DB8FF00EFC6A800F8F2ED002D8F5700EBD1BD0049885F004F8E
          6600DDA87E00E4B28C004989600054A7FF00E2AF88006BAF6F0094D49B00D9A4
          7A008ED29500D49B6F00EAC7AC0060A0FF00E9BA9600D7A175007B7F4F00EACB
          B200EAC9B000E8CCB500F0E2D80079BDFF00317B4C00CE92630095D4B400C98A
          5B00CB8E5E00EBBE9D00EAC9AE006B77440060B98700CB8F5F00E9BA9800F7F1
          EB00E9C9AE00EBBC9A003B7DFF00EBD3C000D1976A00E9C7AD00E8C7AC00F7E1
          D20073B478005D9EFF006CB071005C9DFF00F2E7DE00FAF6F200C78756009CD4
          B600FAF6F100E3B18C0092D6B1006FB17300E5B48F00F1E4DB005A9AFF0064A3
          72006AAF6E00DCA57D005798FF00F4EAE200DFB49300F1C8AC00E9C9B00090D3
          B10062BA8B00F3E7DE00ECBF9E00216F3D00EBD0BA00E0AC8400E9CBB300E1AE
          87004284FF00E7B79300C3845200478BFF00F6EDE6004D90FF00D8A37800E7B7
          9400EBD0BB006ABB8F00EBD3BF005496FF00C6865500E8C4A9005F9FFF0065BC
          8C003D7FFF00F7F0EA0070B37500E2B6960059956E00F1E5DB00CE936400C88A
          590060BA87009DAF9100E9C3A600FBF7F400FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000979797979797
          9797979709070F070997976E1625474A49607C4D0A0304030A08973F2D8B7E6D
          736744757292964E0C019739151496849655964661969696040F973202768200
          00002F34716496890C01971A020B9600380E9693284818832E0897792A411000
          0E5A0B8C698E313040979763624C9642967896653A37968F869797665F0D1B3C
          5752705C6A23435E9197978195949687960D9658961196514F97975095050620
          22885D686C211C9590979717951E4529122B241326355495569797749505063D
          5B1D857F7D7A8A953B97972C959595959595959595959595809797596F274B53
          3E7B1F333677196B8D9797979797979797979797979797979797}
      end
      object BitBtn6: TBitBtn
        Left = 635
        Top = 230
        Width = 110
        Height = 25
        Caption = 'Ki'#351'ileri Temizle'
        TabOrder = 7
        OnClick = BitBtn6Click
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B000000010000000000000543BC001F59
          C10095B0E30086A6DD008DB5F7000579EA001E59C0000076EE000076F800187F
          FF0088A7DE00187FEF002A62C7001177FF008CABE1003D76D2000164DD002866
          CA002186FF00255DC200245CC2008DB5F6002177E6002F6DCC00639DF400235C
          C20094AFE2004D92FF0072A8F50096B1E3000368E100B8D6FE00408AEB00074F
          BE00205AC100AECDFE00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000252525252525
          2525252525252525252525252525252525252525252525252525252525252525
          2525252525252525252525252525252525252525252525252525252525252502
          19000103252525252525252525250E1116051021032525252525252525250118
          0908071E0625252525252525252500232424240B002525252525252525251315
          1B0D1220142525252525252525251D0F041F1C171A2525252525252525252502
          0C00220A25252525252525252525252525252525252525252525252525252525
          2525252525252525252525252525252525252525252525252525252525252525
          2525252525252525252525252525252525252525252525252525}
      end
    end
    object Panel6: TPanel
      Tag = 6
      Left = 4
      Top = 428
      Width = 848
      Height = 209
      Anchors = [akLeft, akTop, akRight]
      Color = 10440704
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        848
        209)
      object Label28: TLabel
        Left = 17
        Top = 8
        Width = 158
        Height = 19
        Caption = 'Takvim Olay Listesi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnFace
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 17
        Top = 181
        Width = 82
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tarih Aral'#305#287#305
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape4: TShape
        Left = 515
        Top = 180
        Width = 162
        Height = 21
        Visible = False
      end
      object ListView2: TListView
        Left = 17
        Top = 33
        Width = 824
        Height = 140
        Anchors = [akLeft, akTop, akRight, akBottom]
        Columns = <
          item
            Width = 22
          end
          item
            Alignment = taCenter
            Caption = 'Cal ID'
            Width = 200
          end
          item
            Alignment = taCenter
            Caption = 'Ba'#351'l'#305'k'
            Width = 250
          end
          item
            Alignment = taCenter
            Caption = 'Ba'#351'tar'
            Width = 150
          end
          item
            Alignment = taCenter
            Caption = 'Bittar'
            Width = 150
          end>
        ReadOnly = True
        RowSelect = True
        TabOrder = 1
        ViewStyle = vsReport
        OnDblClick = ListView2DblClick
      end
      object BitBtn5: TBitBtn
        Left = 321
        Top = 178
        Width = 190
        Height = 25
        Anchors = [akLeft, akBottom]
        Caption = 'Olay Listesi Getir'
        TabOrder = 0
        OnClick = BitBtn5Click
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B0000000100000000000075B57A00F1E4
          DB0065A4FF0074B57900EACEB700E9C6AA00FAF4F000F9F3EF0064A3FF00FAF4
          F100F9F3F00061A1FF00EBBC9A003B7DFF00E9C9B000EACDB500EBD3BF00EAD6
          C800C88A5900C98A5B00D1966800ECBF9E00EBD2BE00E9BA96006FB17300E9C7
          AD00E9C6AC00E4B28C00F7E1D200EBD0BA00F9F2EF00EDC09F00D1976A00F9F3
          EE00C6865500F1E5DB00E1AE87005294FF0068B3FF00C68C5F003D7FFF00C787
          560062A2FF00E8C4A90070B37500EBD9CC006CB07100C88D5F005D9EFF00C68A
          5C00DFB4930075BBFF006DB8FF005C9DFF00E3B18C00D7A17500EACCB300E0AC
          840054A7FF00F8F2ED00F6EDE600E7B79400E9C3A60064A4FF00D9A47A004284
          FF00F1C8AC0094D49B00DCA57D00EACBB200E6B5900061B0FF00DFAA8200EAC9
          B000CB8E5E00EAC7AC006EB17200CE926300FBF6F200EBD0BB00E8C8B000F2E7
          DE0060A0FF0068AD6D00F7F0EA00E8C7AC00EBBE9D005899FF00E2B69600EBD3
          C000EAD7C900E7B79300ECD9CD00EACFBA005A9AFF00EBD1BD005798FF00F3E7
          DE00E5B48F0071B9FF00478BFF00F2E5DC00E8CCB500E9CBB300D49B6F0073B4
          7800E8C8AE00D59D7400DDA87E005496FF00CB8F5F006BAF6F00FAF6F200C58B
          5E00FAF3F000EAC9AE00EFC6A8005F9FFF00F0E2D800C4865400F4EAE200CE93
          6400F2E6DD004D90FF00E9BA98005495FF0079BDFF00D8A378006FB27400DDA9
          8000EBD8CB006AAF6E00E2AF88005AABFF00D0A17D00EAC7AD00FAF6F100F7F1
          EB00E9C9AE008ED29500FAF5F200EBBD9B00C3845200FBF7F400FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000919191919191
          9191919191919191919191326B144D4A13298E8E8E8E8E8E869191373B543C78
          6101761165090A8C7191914021169010905990875C010A1E2791916C071D4F00
          00005F0F062D010931919148070490004303905D4E72827A2F91912406453800
          0369042C804C6A5A7791913688739049906790188B6F90232291916270051A4B
          198A0E2E835366511291913D8F3E902B90059055905090896E91917C8F02082A
          0B75355E607D258F7991918D8F3F7E3363342647853A0D8F209191158F020852
          30576D7B6441288F689191748F8F8F8F8F8F8F8F8F8F8F8F7F91911C421F560C
          175B461B84398144589191919191919191919191919191919191}
      end
      object CheckBox_SilinmisKayitlar: TCheckBox
        Left = 520
        Top = 182
        Width = 153
        Height = 17
        Caption = 'Silinimi'#351' Kay'#305'tlar Dahil'
        TabOrder = 2
      end
      object DateTimePicker5: TDateTimePicker
        Left = 105
        Top = 180
        Width = 97
        Height = 21
        Date = 43179.580538379630000000
        Format = 'dd.MM.yyyy'
        Time = 43179.580538379630000000
        TabOrder = 3
        OnChange = DateTimePicker5Change
      end
      object DateTimePicker6: TDateTimePicker
        Left = 208
        Top = 180
        Width = 97
        Height = 21
        Date = 43179.580538379630000000
        Format = 'dd.MM.yyyy'
        Time = 43179.580538379630000000
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 297
    Height = 153
    Color = 4210816
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 164
      Height = 19
      Caption = 'Gmail Login Bilgileri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 43
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Gmail Hesab'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 70
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Gmail Parolas'#305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 128
      Top = 42
      Width = 140
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 128
      Top = 69
      Width = 140
      Height = 21
      TabOrder = 1
      Text = 'Edit2'
    end
    object BitBtn4: TBitBtn
      Left = 32
      Top = 103
      Width = 236
      Height = 32
      Caption = 'Login ve API Bilgilerini Kaydet'
      TabOrder = 2
      OnClick = BitBtn4Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000000000000DDDDDD00E0E0
        E000ECECEC00EAEAEA00C3BDBB00C0C0C000E9E9E900C1BBB90092919100C7F7
        FD00BBBBBB00B0B0B000DFDFDF00DEDEDE00DAD9D900C8C3C200D9D8D800F1F1
        F1008F8F8F007BD4F100C3BCBB0079D3EE00949393002064A700C6C6C60091C9
        F900EBEBEB00C5BFBE00C6BFBE0077CBE70069A2D500E3EDF50077BEE700C0B9
        B700469DD00075B8D500DDDCDC00DCDCDC0079D3F00070A9CC00C2BBBA00DFDC
        DC0085B1DB00C0B9B80095B1C500A1A1A100CBCBCB005BDFF500B3B3B300E2E1
        E10086A6B600CAC4C300DCEAF6002B62890096959500549AD80063A3D70090B7
        D10063DFF7009E9E9E00C2F6FD00B6B6B600A2A2A200E6F1FA00E5F3FF007979
        7900D4D2D2005996CC00D1D1D100DCD9D8007AD6F2008BC0E700E6E3E300E5EF
        F7004C8ABE00FCFCFC00B4D2F000F0F0F000C4E0FC00448AC200C8C3C100C7C1
        C1005FDCF500C7C1C0005BE2F700CBC6C500DAD6D50088A5B500646464002D67
        84005C6A7600D4D4D40051A2E200C4BEBC0055C9E400DBD7D6004C9ADE00DEDB
        DB008A8A8A004E99D900C4F6FD004494D700C9D5E200C8C8C8008BB8C600D6E8
        F700AFAFAF0078D0ED0098989800626D7700E0F2FF001A7ABE00B2E3F90058A5
        D8006DCAED004998C500D5D4D300C8C2C100729BAA00C1BAB900CBC6C4009897
        9700ACD2EF00DFDCDB00D7D5D500EFEFEF004185C9005DE2F800C6C1BF00A8A8
        A800B5B5B500A5A5A50091B5C100AED3F600E1E1E1006CDDF6006363630094C7
        F900E1DEDC008D8D8D00EEECEC007AB6D5007DC3B600C4C4C40018435A005EDC
        F500B1D8EE007CD4ED00CACACA0098CAD9004389AA0080D5ED005AE1F700CFCA
        C9006BA2D400FFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009B9B9B9B9035
        4A271F9B9B9B9B9B9B9B9B9B9B9B5989197E175A88419B9B9B9B9B9B0D2D966E
        376F734F66589B9B9B9B9B0B305B2C8D395E2F6B636D9B9B9B9B9B3E4D014257
        233C3A7F26653F9B9B9B9B8103007421321D0991981360699B9B9B6A1A007C07
        2B8415095254465C349B9B82020D100428778E93648772381E499B0A020C0E1C
        5D140768977047854E9A9B050201245308128B6295204C407A439B187D86000F
        75801B045676712A22929B2E06063178793616085F6C9B9B9B9B9B11440C0399
        55335051453B9B9B9B9B9B9B4B0025488A297B618C839B9B9B9B9B9B9B9B0194
        8F050A3D0B679B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B}
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 167
    Width = 297
    Height = 315
    Color = 4210816
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      297
      315)
    object Label4: TLabel
      Left = 6
      Top = 8
      Width = 238
      Height = 19
      Caption = 'Google Calendar API Bilgileri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 34
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'API Key'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 24
      Top = 131
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Client_Id'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 160
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Client_Secret'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 24
      Top = 59
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Scopes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 24
      Top = 187
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Auth_Uri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 214
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Token_Uri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 24
      Top = 241
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Redirect_Uris'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit3: TEdit
      Left = 128
      Top = 33
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit4: TEdit
      Left = 128
      Top = 130
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit5: TEdit
      Left = 128
      Top = 159
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Text = 'Edit1'
    end
    object Edit6: TEdit
      Left = 128
      Top = 58
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      Text = 'Edit2'
    end
    object Edit7: TEdit
      Left = 128
      Top = 186
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      Text = 'Edit1'
    end
    object Edit8: TEdit
      Left = 128
      Top = 213
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      Text = 'Edit2'
    end
    object Edit9: TEdit
      Left = 128
      Top = 240
      Width = 140
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
      Text = 'Edit2'
    end
    object BitBtn_OAuth: TBitBtn
      Left = 79
      Top = 267
      Width = 140
      Height = 41
      Anchors = [akTop]
      Caption = 'OAuth 2.0'
      TabOrder = 7
      OnClick = BitBtn_OAuthClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000000000000D9ECFF00D8ED
        FF0060C97100F4F8FF00F8FCFF0095B9F100B0CAF40084ADEF0072BAFF00A7E3
        B200B1D5FF009ADCA40057A8FD0066CD780074AA7B005EB2FE006AD07D0071A2
        FF0064CC760054A7FC004AAAFF0089CF910052A5FD004CA8FE0073A0FF0073A2
        ED0059C4690071A1EC0067CE7A0069B2FD0072A0ED00E8F3FF00C1D6FF003B88
        41003F8E47005BB0FE0062AFFC00699CEB004CB883004F91F7004C97F9005A98
        FF0058B1630080ABEE003BA0BE003D8FFF003F9FFF005DB1FE00A2CBA60075A2
        FF0067B0FC003C8AFF003D8BFA009DDEA80046A5EA00BCD6F9002688FF006BD1
        7F008FB5F0008CBAF500349FFD0041AADB003C85F700A7E4B30036813C00AFD1
        F800317B37005CB767009ADBA300AAD2FF0054AB5E00DAEEFF001E6EFF00B1E3
        B90064A5F50055BE9E005DC76D00F2F7FF0064BACA0060BC6B00C0D7FF0065CC
        770095B9970085C2FD00F4F9FF003984FF0068CE7A004680FF0068AFFF0087C2
        FC0082BB88008FB2FF006FD3830094C6FB006DD2800062C7700040ACCC00C4D8
        F80088C38F00A9E5B5003A86FF00397DFF00D9E9FF007BAEF2006CA5F400378C
        FC0074A0ED008CB2F00076A4ED009AC2FF00A0BFF3002A8FF30070D0810075A6
        F000BDD2FF00DFEDFF008DC0FA00D9E6FA005F93FF003585FB009BBDF20055A8
        FD0063CB750072A4F00068CF7C005DB2FF0076AB7A006497EB008BB3F00082AC
        EF00589AF800A6D1AB00BADAFF002E7EFF00B3CCF50063C5880084C2FD008BBF
        B4005F9DF3006DACBF0094B99700B8D0F6009ABDF200C6E2FF003999FD00B5CF
        F6007FA9EF009CBEF20079A2ED0095C3F900A9D5FF005BC66B0094D79E0061CA
        73006DB3FC00A6DAAC0088B2F300FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009D9D9D456472
        9D9D9D9D4D31579D9D9D9D9D9D8F137718039D505527299D9D9D9D9D9D042E91
        2865113468826D9D9D9D9D9D9D9D089505674A6A9469669D9D9D9D9D9D9D969A
        0592197F7B339D9D9D9D9D9D9D5458748E076C257185209D9D9D9D9D732D1D8D
        6E3A2B1E1B8A485B9D9D9D843888756106788007816B9C3E76039D147D0F2F23
        5D06933B32790C16900A9D0447010189364186248B0000001F9D9D9D9D9D305A
        4E53376F0E8C9D9D9D9D9D9D9D836298873C592C157E529D9D9D9D9D9D464970
        023D17265F9B429D9D9D9D9D9D2A0956124B60971A44409D9D9D9D9D9D433F39
        7C0D7A024C0B219D9D9D9D9D9D4F635C5E101C519935229D9D9D}
    end
    object BitBtn8: TBitBtn
      Left = 128
      Top = 101
      Width = 140
      Height = 25
      Anchors = [akTop]
      Caption = 'JSON'#39'dan AL'
      TabOrder = 8
      OnClick = BitBtn8Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000000000000F8DCC200F8F3
        ED00FDE7D600BC6B3600CA905500FDFBFA00F7B24F00FBBE6500FAF3EB00FCE3
        CD00FBE1C900EAB57100FAE0C700BC6A3600F7B35200FADFC700FCBE6400FAF2
        EA00BB6A3500F6EADC00FDFBF800E8AA6A00F7F2EC00FAE0C800C7804500FCF8
        F400F9E0C800DC986B00FBE2CB00CA925A00DC966900D5A88400E5A45800FFD6
        9500C8844800FCE2CD00E9B27500C8864B00FCF9F500FCE6CD00FCE4CF00ECB6
        6500FEE8D600ECB26500F9DDC400F8F2EC00E2B68400D7814000F6DABD00EEB6
        9400FFD8A000E0926000FEFEFD00C8874C00EFBA9300F9F5F100C6864C00E7A8
        6800F4D5B700F9DDC300FFD49300C77E4400E2C0AA00CF9D6900FBE3CE00F8F4
        EE00CA8D4F00E59D5C00FAF4ED00FBE0C900FEE8D800FDFAF700FBBD6300FBE4
        D000FDC26E00FBE2C900E1B07D00F2D8C400FBE0C800E3975F00F7ECDF00E39B
        5600E8A75C00E5A05D00E08C4C00FBDDC500E6A25A00FCE6D400FCE2CE00F7ED
        E300F5EFE900DE984900FFD79E00BD6E3B00E9AB6100C37A4D00ECBB7600C98F
        5500E8A66300C88D5100FADFC600FCBC6200C88D5200FBE1CB00F8DBC100F6EB
        DE00FAE1CA00ECB26900E8AC6000FDE5D300F9DEC400F9DAC100FBBC6100F8F4
        F000CC945B00FCE2CC00CA8B6300FBE1C800FFD69600F9DBC300FEE8D700FFD7
        9800C1743C00F6AD5000F6D9BC00FCF7F300C2774000E39B5D00FCBD6700C37C
        4200E9B16E00FDBF6800F5D6BB00F2CFB400C3804800CB905500BC6B3700F9DF
        C500E1915800FFFBF800CA915500FBF7F300F7B45600E8CEB900DDB19000FADB
        C500E8AE5F00E2894100F3D4B500F6D1B300F6D8B400FFD59400FAF4EF00E3C2
        AE00C57C4D00EAAE6000C0714000E8A76100E5A36500FCBD6200FCF4EF00F4D6
        B800FBF7F400ECB87900FDF6F000F8F4ED00FAE5C900FFD69B00F4E9DF00E2B2
        7D00BB693500F1D2B300D7AA7C00FBE3CD00EAAC6700E6A65A00C37A4100FBF7
        F200F5D6BA00EBB67200FCBE6000F6D8BB00FAF6F200CC8D6600F2E6D700D2A2
        7400E2964F00F7B25100F9DAC400F8EFE600F8F2EB00BD6C3700F5EBDF00E49D
        5800F6EADE00F9D8C300FCE3CF00FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000C5C53EB79C03
        03030D0D1212AA5D7499C5C59ABE5069C213130808117D19345FC5C57EC08380
        0710109F4870B4651488C5C581594A325CA7797621973C07A2BFC5C53D33548E
        BA937B0E0EBB0606267AC5A02F9E8A6D43394FBC5873457547B08556157FC302
        775315513123670AB1186CA3204D2A780295AF24C1170F6411223A9B0B629146
        555E0B52360C3B004425C5A45BB39D022B60AE6F0F0030B59835C5C542829257
        296B6E17008494AB7138C5C563BDC44928096A2C7CA8168D5A86C5C566370940
        AD1C1A00B21427A62E1FC5C51DB60C0A4B4E8968A18B964C1E05C5C5B90141A5
        0101012D16B8A91B05C5C5C58FAC720404048C87613F9005C5C5}
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 488
    Width = 297
    Height = 165
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 10440704
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      297
      165)
    object Label7: TLabel
      Left = 6
      Top = 8
      Width = 98
      Height = 19
      Caption = 'LOG Verileri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 117
      Top = 7
      Width = 176
      Height = 24
      Anchors = [akTop, akRight]
    end
    object Memo1: TMemo
      Left = 3
      Top = 33
      Width = 290
      Height = 128
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 124
      Top = 10
      Width = 161
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Debug (Explorer A'#231#305'k G'#246'zlem)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 648
    Top = 264
    object miSeciliKisiSil: TMenuItem
      Bitmap.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        040000000000600000000000000000000000100000001000000004020400FCFE
        FC00041284000414D0001A3CFC00042AFC000414B0000420F8002C4EFC006442
        3C0004063C00041BE1001C36F40004129C003058FC000418BC0000ABB6A00000
        00000A55B63A000000000A55FAAA000028000A5579999999FFFFAF5759111119
        0000A575499999990000A5484773A0002800AECAAA6A000000000AAD62A00000
        000000ACB3A00000000000AE5BA000002800000AAA000000DA00}
      Caption = 'Se'#231'ili Ki'#351'iyi Sil'
      OnClick = miSeciliKisiSilClick
    end
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 392
    Top = 520
    object miOlaySil: TMenuItem
      Bitmap.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100000000000075B57A000543
        BC00F9F3EF0065A4FF0064A3FF0086A6DD00E9C6AA00EACEB70074B57900CB8F
        5F00EBD0BA00F1E5DB00C6865500C787560060A0FF000368E1005F9FFF00DDA9
        8000EBD2BE004D92FF004D90FF00EBBD9B00F7F0EA00F9F3EE003B7DFF005A9A
        FF00E8C7AC001177FF00D1976A00E9BA960061B0FF006CB07100E1AE870064A4
        FF00E6B59000DFB49300E7B79300E8C4A90068AD6D00D7A175002186FF00D59D
        74005C9DFF00E0AC8400FAF4F00071B9FF00ECBF9E006BAF6F00E8CCB5003D76
        D200E9C9B000E2AF8800E4B28C00F8F2ED002765C70069678400F6EDE6001E59
        C000DCA57D00F1C8AC008B97BF0094D49B005496FF0049889A006DB8FF0094AF
        E200EAC9B0008ED29500EBD3C0005899FF000076EE00DFAA8200EFC6A80095B0
        E300EBBE9D00E9BA9800DDA87E00E2B696001F59C100245CC200EDC09F00C88A
        5900187FEF001C55BB005495FF008DB5F600F2E7DE0061A1FF00EBD3BF0068B3
        FF00C3845200F1E4DB00E9C7AD003D7FFF00CE9263000076F8000579EA00E9C9
        AE005D9EFF00E9C3A6006AAF6E000164DD0072A8F500F3E7DE00E5B48F002177
        E600639DF40073B47800F4EAE200F7E1D200D9A47A00D49B6F002256B800E7B7
        940079BDFF0062A2FF0054A7FF005798FF00D1966800064EBC00EACBB200235C
        C200478BFF00EBBC9A00F7F1EB00E9C6AC00408AEB005294FF0075BBFF00EAC9
        AE00EACCB300D8A37800E3B18C006FB173002F6BCA00E9CBB300AECDFE00FAF6
        F1006E6D8B00CE936400B8D6FE00C98A5B00EAC7AC004284FF001959B700187F
        FF00EBD0BB00F0E2D8008DB5F70070B37500FAF6F200EBD1BD00E8C8B000CB8E
        5E005AABFF001D56BB00FBF7F400FFFFFF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000009E9E9E9E9E9E
        9E9E9E9E4979014E059E9E2329765E998D0D5A8A3669606577059E273516386C
        675B93536A915F460F399E6E17129D589D449D01889D9D9D52019E4C020A9200
        0000977055131B287E4F9E4702079D003D089D3C31948C6686419E202C788200
        086B07953F90019B379E9E8489819D429D879D85432F9D0B0C9E9E6896067D8E
        5C61321F64263056519E9E719C639D259D069D1A9D989D7C099E9E4B9C030473
        57102A1975547F9C8B9E9E159C2172802D40591E9A74189C1C9E9E2E9C03040E
        62453E147A8F5D9C6F9E9E489C9C9C9C9C9C9C9C9C9C9C9C839E9E6D3B504A7B
        1D242234332B113A4D9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E}
      Caption = 'Se'#231'ili Olay'#305' Sil'
      OnClick = miSeciliKisiSilClick
    end
  end
  object ImageList1: TImageList
    Left = 432
    Top = 520
    Bitmap = {
      494C010103000800100010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000095B0E300235C
      C2000543BC001F59C10086A6DD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FC091003B8D3F00257A2900257729003B853F008FB99100E0EB
      E0000000000000000000000000000000000000000000DFB49300D59D7400D196
      6800CE926300CB8E5E00C98A5B00C7875600C3845200C3845200C3845200C384
      5200C3845200C3845200D0A17D000000000000000000DFB49300D59D7400D196
      6800CE926300CB8E5E00C98A5B00C7875600C38452006E6D8B002765C7002177
      E6000579EA000164DD00064EBC0086A6DD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5D9
      B700318F350042A0520087CA9A009BD3AB009BD2AB0083C796003D974C00307C
      3400B5D0B60000000000000000000000000000000000D7A17500F8F2ED00F7F0
      EA00F6EDE600F4EAE200F3E7DE00F1E4DB00F0E2D800EAD6C800F2E5DC00FAF4
      F100F9F3F000FAF5F200C58B5E000000000000000000D7A17500F8F2ED00F7F0
      EA00F6EDE600F4EAE200F3E7DE00F1E4DB00F0E2D8001C55BB00639DF400187F
      FF000076F8000076EE000368E1001E59C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5DBBA00258F
      2A006DBE8300A8DBB50087CC980066BC7D0064BA7C0086CB9800A5D9B40066B7
      7D0024722700B5D1B600000000000000000000000000D9A47A00F9F3EE00EBD2
      BE0000000000EBD3BF0000000000EBD3C00000000000EAC7AD00ECD9CD00F1E4
      DB00F9F3F000F9F2EF00C68C5F000000000000000000D9A47A00F9F3EE00EBD2
      BE0000000000EBD3BF0000000000EBD3C000000000000543BC00AECDFE000000
      00000000000000000000187FEF000543BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1F2E40033A1440072C2
      8700A8DBB20060BC77005CBA730059B8700059B56F0058B56F005BB77400A5D9
      B30069B87F00317F3500E1ECE1000000000000000000DDA87E00F9F3EF00EBD0
      BA00EBD0BB0075B57A0075B57A0075B57A00EBD1BD00EACDB500FAF4F000EBD9
      CC00F1E4DB00FAF4F100C68A5C000000000000000000DDA87E00F9F3EF00EBD0
      BA00EBD0BB0075B57A0075B57A0075B57A00EBD1BD002256B8008DB5F6004D92
      FF001177FF002186FF00408AEB00245CC2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090D29F004CB06400AADD
      B40064C179005FBE710075C58500D4ECD9008ACD990056B66C0058B56E005CB7
      7400A6DAB400419B4E008EBC90000000000000000000DFAA8200F9F3EF00EACE
      B7000000000075B57A0094D49B0074B5790000000000EACFBA00FBF6F200FAF3
      F000EBD8CB00F2E6DD00C88D5F000000000000000000DFAA8200F9F3EF00EACE
      B7000000000075B57A0094D49B0074B57900000000008B97BF003D76D2008DB5
      F700B8D6FE0072A8F5002F6BCA0094AFE2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003FB55D0091D29F008DD4
      9A0064C3740079C98700F2FAF40000000000FDFEFD0086CB960057B76D005BB9
      720085CC970087C79A003B8B3F000000000000000000E1AE8700FAF4F000EACB
      B200EACCB30075B57A0074B5790073B47800EACEB70070B375006FB274006EB1
      7200E8C8AE00EAD7C900C48654000000000000000000E1AE8700FAF4F000EACB
      B200EACCB30075B57A0074B5790073B47800EACEB70070B3750049889A001959
      B7000543BC001D56BB0069678400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027B04900A6DCAF0070CA
      7F0073CA8000F0F9F10000000000EBF7ED0000000000FBFDFC0088CD96005BB9
      710067BE7D00A0D7AF00237F26000000000000000000E3B18C00FAF6F100EAC9
      AE0000000000EAC9B00000000000E9CBB300000000006FB173008ED295006BAF
      6F0000000000F1E5DB00C68655000000000000000000E3B18C00FAF6F100EAC9
      AE0000000000EAC9B00000000000E9CBB300000000006FB173008ED295006BAF
      6F0000000000F1E5DB00C6865500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002EB75100A7DDB10072CC
      800066C77300B0E1B700D2EED60063C17000B8E3BF0000000000FBFDFC008CD0
      990069C17E00A1D7AE00238426000000000000000000E5B48F00FAF6F200E9C6
      AA00E9C6AC00EAC7AC00E9C7AD00E9C9AE00E9C9B0006CB071006AAF6E0068AD
      6D00E8CCB500F2E7DE00C88A59000000000000000000E5B48F00FAF6F200E9C6
      AA00E9C6AC00EAC7AC00E9C7AD00E9C9AE00E9C9B0006CB071006AAF6E0068AD
      6D00E8CCB500F2E7DE00C88A5900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004BC56C0095D7A10091D7
      9B0069C9760064C66F0061C46E0061C36F0061C26F00B9E4C00000000000E3F4
      E6008BD199008BCE9D003C993F000000000000000000E7B79400FBF7F400E9C3
      A60000000000E8C4A90000000000E9C6AA0000000000E8C7AC0000000000E8C8
      B00000000000F7F1EB00CB8F5F000000000000000000E7B79400FBF7F400E9C3
      A60000000000E8C4A90000000000E9C6AA0000000000E8C7AC0000000000E8C8
      B00000000000F7F1EB00CB8F5F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009BDFAD0057BF7000AFE1
      B7006DCC7A0068C8720065C7700063C56E0062C46E0063C47100B6E3BE006FC7
      7E00ACDFB50048A95E008FC894000000000000000000E9BA9800FBF7F40065A4
      FF0064A3FF0062A2FF0061A1FF005F9FFF005C9DFF005A9AFF005798FF005495
      FF005294FF00FBF7F400CE9364000000000000000000E9BA9800FBF7F40065A4
      FF0064A3FF0062A2FF0061A1FF005F9FFF005C9DFF005A9AFF005798FF005495
      FF005294FF00FBF7F400CE936400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5F7E90049C566007FCE
      9000AEE1B5006DCC7A006ACA760068C8720068C8740068C875006BC97900ACDF
      B40076C4890033A14200E1F1E3000000000000000000EBBD9B00FBF7F40064A4
      FF0079BDFF0075BBFF0071B9FF006DB8FF0068B3FF0061B0FF005AABFF0054A7
      FF003B7DFF00FBF7F400D1976A000000000000000000EBBD9B00FBF7F40064A4
      FF0079BDFF0075BBFF0071B9FF006DB8FF0068B3FF0061B0FF005AABFF0054A7
      FF003B7DFF00FBF7F400D1976A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFECCB003DC3
      5C007FCE9000AFE1B70092D89D0077CE830077CE830092D89D00AEE1B50078C8
      8B0027A13B00B5DFBE00000000000000000000000000ECBF9E00FBF7F40065A4
      FF0064A3FF0060A0FF005D9EFF005899FF005496FF004D90FF00478BFF004284
      FF003D7FFF00FBF7F400D49B6F000000000000000000ECBF9E00FBF7F40065A4
      FF0064A3FF0060A0FF005D9EFF005899FF005496FF004D90FF00478BFF004284
      FF003D7FFF00FBF7F400D49B6F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0ED
      CB004AC8690059C2740096D7A300A5DCAE00A5DCAE0095D6A10050B96A0035B3
      5500B6E3C10000000000000000000000000000000000EFC6A800FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400D8A378000000000000000000EFC6A800FBF7F400FBF7
      F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7F400FBF7
      F400FBF7F400FBF7F400D8A37800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5F8E9009FE3B00055CB72003BC05C0037BE5A0049C36A0097DCAA00E1F5
      E7000000000000000000000000000000000000000000F7E1D200F1C8AC00EDC0
      9F00EBBE9D00EBBC9A00E9BA9600E7B79300E6B59000E4B28C00E2AF8800E0AC
      8400DDA98000DCA57D00E2B696000000000000000000F7E1D200F1C8AC00EDC0
      9F00EBBE9D00EBBC9A00E9BA9600E7B79300E6B59000E4B28C00E2AF8800E0AC
      8400DDA98000DCA57D00E2B69600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFC10000F00F800180000000
      E007800180000000C0038A818A9C000080018001800000008001888188800000
      810180018001000082818A898A890000804180018001000080218AA98AA90000
      80018001800100008001800180010000C003800180010000E007800180010000
      F00F800180010000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Menus, Spin;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    Shape1: TShape;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    miSeciliKisiSil: TMenuItem;
    Panel7: TPanel;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape2: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox2: TCheckBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Edit16: TEdit;
    Edit17: TEdit;
    SpinEdit1: TSpinEdit;
    Panel5: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Shape3: TShape;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    CheckBox3: TCheckBox;
    ListView1: TListView;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Label28: TLabel;
    ListView2: TListView;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    PopupMenu2: TPopupMenu;
    miOlaySil: TMenuItem;
    BitBtn7: TBitBtn;
    Memo2: TMemo;
    BitBtn8: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure miSeciliKisiSilClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure ListView2DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    procedure PanelReadOnly(boolReadOnly: Boolean);
    procedure OlayJSONParse(strIcerik:String; ListView: TListView );
    procedure EkraniTemizle;
    procedure GoogleCalHazirla( boolINIYukle : boolean  );
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Uses INIFiles, GoogleCalendar_Helper;

procedure TForm1.GoogleCalHazirla( boolINIYukle : boolean );
Var
  INI : TINIFile;
begin
  if boolINIYukle then begin
    INI := TINIFile.Create( ChangeFileExt(Application.Exename, '.ini') );
      Edit1.Text        := INI.ReadString( 'GMAIL', 'GmailLogin', '' );
      Edit2.Text        := INI.ReadString( 'GMAIL', 'GmailPass',  '' );
      Edit3.Text        := INI.ReadString( 'API', 'Api_Key',      '' );
      Edit4.Text        := INI.ReadString( 'API', 'Client_Id',    '' );
      Edit5.Text        := INI.ReadString( 'API', 'Client_Secret','' );
      Edit6.Text        := INI.ReadString( 'API', 'Scopes',       '' );
      Edit7.Text        := INI.ReadString( 'API', 'Auth_Uri',     '' );
      Edit8.Text        := INI.ReadString( 'API', 'Token_Uri',    '' );
      Edit9.Text        := INI.ReadString( 'API', 'Redirect_Uris','' );
      CheckBox1.Checked := INI.ReadBool  ( 'APPLICATION', 'DebugMode', False );
    INI.Free;
  end;

    With xGoogleCal do begin
      Api_Key       := Edit3.Text;
      Client_Id     := Edit4.Text;
      Client_Secret := Edit5.Text;
      Scopes        := Edit6.Text;
      Auth_Uri      := Edit7.Text;
      Token_Uri     := Edit8.Text;
      Redirect_Uris := Edit9.Text;
      CalendarID    := Edit1.Text; // 'delphicanapi@gmail.com'
    end;
  xGoogleCal.Log           := Memo1.Lines;
  xGoogleCal.DebugMode     := CheckBox1.Checked; // Explorer penceresi açýk kalsýn vs.
  xGoogleCal.LoginGmail    := Edit1.Text;
  xGoogleCal.LoginPass     := Edit2.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
Var
  i   : Integer;
begin
  PanelReadOnly(True);

  for i := 0 to self.ComponentCount - 1 do
    if self.Components[i] is TEdit
      then TEdit( self.Components[i] ).text := '';
  DateTimePicker1.DateTime := INT(now);
  DateTimePicker2.DateTime := INT(now);
  DateTimePicker3.DateTime := INT(now);
  DateTimePicker4.DateTime := INT(now);

  Edit2.PasswordChar := '*';

  Memo1.Lines.Clear;
  ListView1.PopupMenu      := PopupMenu1;
  ListView2.PopupMenu      := PopupMenu2;
  self.Position            := poDesktopCenter;
//self.WindowState := wsMaximized;

  GoogleCalHazirla( true );
end;

procedure TForm1.EkraniTemizle();
Var
  i : Integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TEdit)
      AND ( TEdit(self.Components[i]).parent.Tag in [4, 5, 6] )
      then TEdit(self.Components[i]).Text := '';
    if (self.Components[i] is TDateTimePicker)
      AND ( TDateTimePicker(self.Components[i]).parent.Tag in [4, 5, 6] )
      then TDateTimePicker(self.Components[i]).DateTime := Int(Now);
    if (self.Components[i] is TMemo)
      AND ( TMemo(self.Components[i]).parent.Tag in [4, 5, 6] )
      then TMemo(self.Components[i]).Lines.Text := '';
  end;
end;
procedure TForm1.PanelReadOnly( boolReadOnly : Boolean );
Var
  i : Integer;
begin
  if boolReadOnly then begin
    Panel4.Color   := clGray;
    Panel5.Color   := clGray;
    Panel6.Color   := clGray;
    Panel7.Color   := clGray;
    Panel7.Enabled := False; // OAuth olana kadar giriþ yapýlmasýn.
  end else begin
    Panel4.Color   := $009F5000;
    Panel5.Color   := $009F5000;
    Panel6.Color   := $009F5000;
    Panel7.Color   := clGreen;
    Panel7.Enabled := True;
  end;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TEdit)
      AND ( TEdit(self.Components[i]).parent.Tag in [4, 5, 6] )
      then TEdit(self.Components[i]).Enabled := NOT boolReadOnly;
    if (self.Components[i] is TDateTimePicker)
      AND ( TDateTimePicker(self.Components[i]).parent.Tag in [4, 5, 6] )
      then TDateTimePicker(self.Components[i]).Enabled := NOT boolReadOnly;
    if (self.Components[i] is TBitBtn)
      AND ( TBitBtn(self.Components[i]).parent.Tag in [4, 5, 6] )
      then TBitBtn(self.Components[i]).Enabled := NOT boolReadOnly;
  end;
  BitBtn2.Enabled          := ListView1.Items.Count > 0;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  // Güncel bilgilerler ile
  GoogleCalHazirla( false );
  PanelReadOnly(True);

  xGoogleCal.GoogleOAUTH_01();
  if xGoogleCal.AccessToken <> '' then
  begin
    PanelReadOnly(False);
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
Var
  YeniEvent : pCalEventRecord;
  Kisi      : pAttendeesRecord;
  i         : Integer;
begin
  if CheckBox2.Checked then
  begin // Tam Gün (AllDay Event)
    DateTimePicker1.Time := 0;
    DateTimePicker3.Time := 0;
  end else
  begin
    DateTimePicker1.Time := DateTimePicker2.Time; // Saatleri sola attýk
    DateTimePicker3.Time := DateTimePicker4.Time; // Saatleri sola attýk
  end;

// Yeni EVENT ekleme iþlemi
// Paketi Hazýrlýyoruz
  New(YeniEvent);

  YeniEvent.BasTar       :=  DateTimePicker1.DateTime;
  YeniEvent.BitTar       :=  DateTimePicker3.DateTime;
  YeniEvent.TimeZone     := 'GMT+03:00';
  YeniEvent.boolTumGun   :=  CheckBox2.Checked;
  YeniEvent.summary      :=  Edit17.Text;
  YeniEvent.description  :=  Memo2.Lines.Text;
  YeniEvent.location     :=  Edit16.Text;
  //YeniEvent.creaDispName :=  Edit14.Text;
  //YeniEvent.creaEmail    :=  Edit18.Text;
  //YeniEvent.creaId       :=  Edit19.Text;
  YeniEvent.colorId      :=  SpinEdit1.Value;

  for i := 0 to ListView1.Items.Count - 1 do
  begin
    SetLength( YeniEvent.Attendees, i+1 );
    New(Kisi); // pointer'lar hedefte dispose edilecek
      Kisi.attEmail    := ListView1.Items[i].SubItems[0];
      Kisi.attDispName := ListView1.Items[i].SubItems[1];
      Kisi.attComment  := ListView1.Items[i].SubItems[2];
      //Kisi.attOrganizer:= ListView1.Items[i].SubItems[3] = 'Evet';
      //Kisi.attId       := IntToStr( High(YeniEvent.Attendees) );
    YeniEvent.Attendees[ High(YeniEvent.Attendees) ] := Kisi;
  end;
// Paketi Helper Class'a yolluyoruz.
  Case TBitBtn(Sender).Tag of
  1: xGoogleCal.CalEventEkle  ( YeniEvent );
  2: xGoogleCal.CalEventUPDATE( ListView2.Selected.SubItems[0], YeniEvent );
  End;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  With ListView1.Items.Add do begin
    SubItems.Add(Edit10.Text);
    SubItems.Add(Edit11.Text);
    SubItems.Add(Edit12.Text);
    if CheckBox3.Checked  then SubItems.Add('Evet')
                          else SubItems.Add('Hayýr');
  end;
  BitBtn2.Enabled := ListView1.Items.Count > 0;

end;

procedure TForm1.BitBtn4Click(Sender: TObject);
Var
  INI : TINIFile;
begin
  INI := TINIFile.Create( ChangeFileExt(Application.Exename, '.ini') );
    INI.WriteString( 'GMAIL', 'GmailLogin', Edit1.Text );
    INI.WriteString( 'GMAIL', 'GmailPass',  Edit2.Text );
    INI.WriteBool  ( 'APPLICATION', 'DebugMode', CheckBox1.Checked );
    INI.WriteString( 'API', 'Api_Key',      Edit3.Text );
    INI.WriteString( 'API', 'client_id',    Edit4.Text );
    INI.WriteString( 'API', 'client_secret',Edit5.Text );
    INI.WriteString( 'API', 'Scopes',       Edit6.Text );
    INI.WriteString( 'API', 'auth_uri',     Edit7.Text );
    INI.WriteString( 'API', 'token_uri',    Edit8.Text );
    INI.WriteString( 'API', 'redirect_uris',Edit9.Text );
  INI.Free;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
Var
  strGelen : String;
begin
  strGelen := xGoogleCal.CalEventList();
  if strGelen <> '' then Memo1.Lines.Add( strGelen );
  ListView1.Items.Clear;
  ListView2.Items.Clear;
  OlayJSONParse( strGelen, ListView2 );
  EkraniTemizle();
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  ListView1.Items.Clear;
  BitBtn2.Enabled := ListView1.Items.Count > 0;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  BitBtn2Click( BitBtn7 );
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
Var
  APIClientInfo: pAPIClientInfo;
  strJSON      : String;
begin
  With Dialogs.TOpenDialog.Create(nil) do
  begin
    InitialDir := ExtractFilePath( Application.ExeName );
    Filter     := 'JSON File *.json|*.JSON|Tüm Dosyalar|*.*';
    Try
      if Execute then
      begin
        With TStringList.Create do begin
          Try
            LoadFromFile( FileName );
            strJSON := Text;
          Finally
            Free;
          End;
        end;
        APIClientInfo := xGoogleCal.APIClientInfo( strJSON );
        if APIClientInfo <> nil then begin
          Edit4.Text := APIClientInfo.Client_Id;
          Edit5.Text := APIClientInfo.Client_Secret;
          Edit7.Text := APIClientInfo.Auth_Uri;
          Edit8.Text := APIClientInfo.Token_Uri;
          Edit9.Text := APIClientInfo.Redirect_Uris;
          Dispose( APIClientInfo ); // Hafýzaya ayrýlan kýsmý boþalttýk...
        end;
      end;
    Finally
      Free;
    End;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  xGoogleCal.DebugMode := TCheckBox(Sender).Checked;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  DateTimePicker2.Visible := NOT TCheckBox(Sender).Checked;
  DateTimePicker4.Visible := NOT TCheckBox(Sender).Checked;
end;

procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
  DateTimePicker3.DateTime := DateTimePicker1.DateTime;
end;

procedure TForm1.miSeciliKisiSilClick(Sender: TObject);
begin
  xGoogleCal.CalEventSil( ListView2.Selected.SubItems[0] );
  BitBtn5Click(BitBtn5); // Listeyi Gerçek Haliyle Tazele
  BitBtn6Click(BitBtn6); // Kiþileri Temizle
end;

procedure TForm1.PopupMenu1Popup(Sender: TObject);
begin
  miSeciliKisiSil.Enabled := TListView( TPopupMenu( TMenuItem(Sender) ).PopupComponent ).Selected <> nil;
end;

procedure TForm1.PopupMenu2Popup(Sender: TObject);
begin
  miOlaySil.Enabled := TListView( TPopupMenu( TMenuItem(Sender) ).PopupComponent ).Selected <> nil;
end;

Procedure TForm1.OlayJSONParse( strIcerik:String; ListView: TListView );
Var
  strBlok, str : String;
  CId, Baslik, BasTar, BitTar, Bilgi : String;
begin
  strBlok := strIcerik;
  while Pos('"id": "', strBlok) > 0 do
  begin
    CId    := xGoogleCal.AradanSec( strBlok, '"id": "'     , '"', True  );
    Baslik := xGoogleCal.AradanSec( strBlok, '"summary": "', '"', False );
    Bilgi  := xGoogleCal.AradanSec( strBlok, '"description": "', '"', False );

    str := strBlok;
    xGoogleCal.AradanSec( str, '"start": {', '"date', True );
    BasTar := xGoogleCal.AradanSec( str, ': "', '"' , True );

    str := strBlok;
    xGoogleCal.AradanSec( str, '"end": {', '"date', True );
    BitTar := xGoogleCal.AradanSec( str, ': "', '"' , True );

    With ListView.Items.Add do begin
      SubItems.Add( CId );
      SubItems.Add( Baslik );
      SubItems.Add( BasTar);
      SubItems.Add( BitTar );
      SubItems.Add( Bilgi );
    end;
  end; // While
end;

procedure TForm1.ListView2DblClick(Sender: TObject);
Var
  aEvent    : pCalEventRecord;
  strIcerik : String;
  i : Integer;
begin
  if ListView2.Selected = nil then Exit;

  strIcerik := xGoogleCal.CalEventFromID( ListView2.Selected.SubItems[0] );
  Memo1.Lines.Text := strIcerik;
  aEvent    := xGoogleCal.ParseEvent( strIcerik );

  Edit17.Text               := aEvent.summary;
  Edit16.Text               := aEvent.location;
  Memo2.Lines.Text          := aEvent.description;
  //Edit14.Text               := aEvent.creaDispName;
  //Edit19.Text               := aEvent.creaId;
  //Edit18.Text               := aEvent.creaEmail;
  checkBox2.Checked         := aEvent.boolTumGun;
  DateTimePicker1.DateTime  := Int(aEvent.BasTar);
  DateTimePicker2.DateTime  := Frac(aEvent.BasTar);
  DateTimePicker3.DateTime  := Int(aEvent.BitTar);
  DateTimePicker4.DateTime  := Frac(aEvent.BitTar);
  ListView1.Items.Clear;

  for i := low(aEvent.Attendees) to high(aEvent.Attendees) do
  begin
    With ListView1.Items.Add do begin
      SubItems.Add( aEvent.Attendees[i].attEmail     );
      SubItems.Add( aEvent.Attendees[i].attDispName  );
      SubItems.Add( aEvent.Attendees[i].attResponses );
      //if aEvent.Attendees[i].attOrganizer
      //  then SubItems.Add( 'Evet'  )
      //  else SubItems.Add( 'Hayýr' );
      Dispose(aEvent.Attendees[i]);
    end;
  end;
  Dispose( aEvent );
  BitBtn2.Enabled          := ListView1.Items.Count > 0;
end;

end.


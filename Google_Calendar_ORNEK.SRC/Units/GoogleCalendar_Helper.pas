{***************************************************************************}
{                                                                           }
{                         Google Calendar API Class                         }
{                                                                           }
{                    Copyright (C) 2018 Muharrem ARMAN                      }
{                         muharrem.arman@trt.net.tr                         }
{                                                                           }
{***************************************************************************}
{                                                                           }
{  Google Calendar API Servisinden Yardým alarak                            }
{  Yaygýnlaþan Mobil cihazlarýn Takvim varsayýlaný olan Google Takvim       }
{  otomatik Event oluþturmak / silmek / güncellemek vb. iþlemler için       }
{  kullanýlmaktadýr.                                                        }
{                                                                           }
{  USES listesine bu UNIT'in eklenmesi yeterlidir.                          }
{  Ekstra bir tanýmlamaya gerek yoktur.                                     }
{  kendiliðinden nesneyi Create edecek, çýkarken de FREE edecektir          }
{                                                                           }
{  Kullanýmý :                                                              }
{ (1) Formunuzun OnCreate olayýna da aþaðýdaki size özel tanýmlarý yapýnýz. }
{                                                                           }
{                                                                           }
{  xGoogleCal.Api_Key       := 'AIzaSy...........................uPW5lM';   }
{  xGoogleCal.Client_Id     := '705649...........................umcrfnb0fam}
{  xGoogleCal.Client_secret := 'gMhN.................GtX';                  }
{  xGoogleCal.Scopes        := 'https://www.googleapis.com/auth/calendar';  }
{  xGoogleCal.Auth_Uri      := 'https://accounts.google.com/o/oauth2/auth'; }
{  xGoogleCal.Token_Uri     := 'https://accounts.google.com/o/oauth2/token';}
{  xGoogleCal.Redirect_Uris := 'urn:ietf:wg:oauth:2.0:oob';                 }
{  xGoogleCal.CalendarID    := 'delphicanapi@gmail.com';                    }
{                                                                           }
{  xGoogleCal.Log           := Memo1.Lines; // LOG Kaydý Lazým olursa       }
{                                                                           }
{  Üzerinde deðiþiklik yapmak serbesttir ancak lütfen bu etiket bloðu       }
{  içine yaptýðýnýz deðiþikliði ve künyenizi yazmayý ihmal etmeyiniz.       }
{                                                                           }
{***************************************************************************}
{  Deðiþikliði Yapan,  Yapýlan Ekleme/Deðiþiklik bilgisi :                  }
{                                                                           }
{                                                                           }
{                                                                           }
{***************************************************************************}

unit GoogleCalendar_Helper;

interface
Uses
//  ShareMem, // Indy Bileþen olmayan ama varmýþ gibi rapor edilen Memory Leak
              // Sorununa kökten çözüm oluyordu...
              // Ancak bilgisayarlarda "Borlndmm.dll" ihtiyacý doðuyor ondan kaldýrdým.
    Windows, Forms, Graphics, Controls, GifImg, Dialogs, SysUtils, Classes, Variants,
    ShellApi, SHDocVw, DateUtils, MSHTML, ComObj,
    IdHttp, IdGlobal, IdSSLOpenSSL, IdAntiFreeze, IdThread;

Type
  pAttendeesRecord = ^tAttendeesRecord;
  tAttendeesRecord = Record
      attEmail     : String;
      attDispName  : String;
      attComment   : String;
      attId        : String;
      attOrganizer : Boolean;
end;

Type
  pCalEventRecord = ^tCalEventRecord;
  tCalEventRecord = Record
     BasTar      : TDateTime;
     BitTar      : TDateTime;
     TimeZone    : String;
     boolTumGun  : Boolean;
     description : String;
     colorId     : Integer;
     location    : String;
     summary     : String;
     creaDispName: String;
     creaEmail   : String;
     creaId      : String;
     Attendees   : Array of pAttendeesRecord;
end;

Type
  TSorguTipi = ( stGET, stPOST, stDELETE, stGET_KEYParam, stPOST_KEYParam, stDELETE_KEYParam );

Type
  TGoogleCal_Helper = Class(TObject)
  private
    Const
      FCalendarUri  = 'https://www.googleapis.com/calendar/v3/calendars/';
    Var
      Fapi_Key                      : String;
      Fclient_id                    : String;
      Fclient_secret                : String;
      FScopes                       : String;
      Fauth_uri                     : String;
      Ftoken_uri                    : String;
      Fredirect_uris                : String;

      FAuth20_Code                  : String;
      FLog                          : TStrings;
      FAccess_Token                 : String;
      FExpires_In                   : String;
      FRefresh_Token                : String;
      FToken_Type                   : String;
      FCalendarID                   : String;
      FLoginGmail                   : string;
      FLoginPass                    : string;
      FDebugMode                    : boolean;

    function  EncodeURI(const ASrc: string): UTF8String;
    function  WEBIslemler( aType: TSorguTipi; aUrl : String; boolJSON:boolean = false; slParam: TStringList = nil ): String;
    procedure LOGla( strIcerik: String );
  public
    constructor Create;
    destructor  Destroy; Override;
    function    GoogleOAUTH_01: string;
    function    GoogleOAUTH_02: string;
    property    CalendarID    : string read FCalendarID Write FCalendarID;
    property    Api_Key       : string read FApi_Key Write FApi_Key;
    property    Client_Id     : string read Fclient_id Write Fclient_id;
    property    Client_Secret : string read FClient_Secret Write FClient_Secret;
    property    Scopes        : string read FScopes Write FScopes;
    property    Auth_Uri      : string read FAuth_Uri Write FAuth_Uri;
    property    Token_Uri     : string read FToken_Uri Write FToken_Uri;
    property    Redirect_Uris : string read FRedirect_Uris Write FRedirect_Uris;
    property    LoginGmail    : string read FLoginGmail Write FLoginGmail;
    property    LoginPass     : string read FLoginPass Write FLoginPass;
    property    DebugMode     : boolean read FDebugMode Write FDebugMode;
    function    ReferansKontol: String;
    property    Log           : TStrings read FLog Write FLog;
    property    AccessToken   : string read FAccess_Token;
    function    CalEventList  : String;
    procedure   CalEventIDs   ( Liste : TStrings );
    function    CalEventEkle  ( aEvent: pCalEventRecord ): String;
    function    CalEventSil( aEventId: String ): String;
    function    CalEventFromID(aEventId: String): String;
    function    ParseEvent(strIcerik: String): pCalEventRecord;
    function    AradanSec(var strIcerik: String; strBas, strSon: String; boolTrim:boolean=false ): string;
  end;

type
{ TIdHTTP } // DoRequest() TIdHttp sýnýfýnýn "Private" alanda olduðundan
            // bu þekilde kullanabildik. Public yeni bir procedure elde ettik.
  TIdHTTP = class(IdHTTP.TIdHTTP)
  public
    procedure DeleteEx(AURL: string; AResponseContent: TStream);
  end;


Var
  xGoogleCal : TGoogleCal_Helper;

implementation

// {$R RES\RES.RES} // SSL DLL'leri Resource olarak saklandýðýnda lazým...
                    // Lisans sorunu olmasýn diye projeden çýkardým....
                    // OpenSSL kütüphanesi sonuçta nette her yerde var.

{ TIdHTTP } // DoRequest() TIdHttp sýnýfýnýn "Private" alanda olduðundan
            // bu þekilde kullanabildik. Public yeni bir procedure elde ettik.
procedure TIdHTTP.DeleteEx(AURL: string; AResponseContent: TStream);
begin      // Ne için ekledik, GET, POST, PUT gibi bir de DELETE metodunu istiyoruz.
  DoRequest(Id_HTTPMethodDelete, AURL, nil, AResponseContent, []);
end;

function TGoogleCal_Helper.ReferansKontol(): String;
begin
  Result := '';
  if FLoginGmail     = ''  then Result := Result + #13 + 'LoginGmail bilgisi Tanýmlanmamýþ';
  if FLoginPass      = ''  then Result := Result + #13 + 'LoginPass bilgisi Tanýmlanmamýþ';
  if FApi_Key        = ''  then Result := Result + #13 + 'Api_Key bilgisi Tanýmlanmamýþ';
  if Fclient_id      = ''  then Result := Result + #13 + 'Client_Id     bilgisi Tanýmlanmamýþ';
  if Fclient_secret  = ''  then Result := Result + #13 + 'Client_Secret bilgisi Tanýmlanmamýþ';
  if FScopes         = ''  then Result := Result + #13 + 'Scopes        bilgisi Tanýmlanmamýþ';
  if Fauth_uri       = ''  then Result := Result + #13 + 'Auth_Uri      bilgisi Tanýmlanmamýþ';
  if Ftoken_uri      = ''  then Result := Result + #13 + 'Token_Uri     bilgisi Tanýmlanmamýþ';
  if Fredirect_uris  = ''  then Result := Result + #13 + 'Redirect_Uris bilgisi Tanýmlanmamýþ';
end;

constructor TGoogleCal_Helper.Create;
begin
  Inherited;  // Create'de  daima baþta call edicez...
  //...
  FCalendarID := 'primary'; // Varsayýlan Takvim
end;

destructor TGoogleCal_Helper.Destroy;
begin
  //...
  // Indy paketi aslýnda MemoryLeak OLMAYAN Leak Warning için... Ref: "Remy Lebeau"
  if GThreadCount <> Nil then GThreadCount.Free;
  Inherited;  // Destroy'da daima sonda call edicez...
end;

function TGoogleCal_Helper.EncodeURI(const ASrc: string): UTF8String;
const
  HexMap: UTF8String = '0123456789ABCDEF';
  function IsSafeChar(ch: Integer): Boolean;
  begin
         if (ch >= 48) and (ch <=  57) then Result := True  // 0-9
    else if (ch >= 65) and (ch <=  90) then Result := True  // A-Z
    else if (ch >= 97) and (ch <= 122) then Result := True  // a-z
    else if (ch =  33) then Result := True // !
    else if (ch >= 39) and (ch <=  42) then Result := True  // '()*
    else if (ch >= 45) and (ch <=  46) then Result := True  // -.
    else if (ch =  95) then Result := True // _
    else if (ch = 126) then Result := True // ~
    else Result := False;
  end;
var
  I, J    : Integer;
  ASrcUTF8: UTF8String;
begin
  Result := '';
  ASrcUTF8 := UTF8Encode(ASrc);
  // UTF8Encode gerekli deðil, dönüþtürme uyarýsýný vermesin diye eklendi

  I := 1; J := 1;
  SetLength(Result, Length(ASrcUTF8) * 3); // her byte için %xx yer ayrýlýyor

  while I <= Length(ASrcUTF8) do
  begin
    if IsSafeChar(Ord(ASrcUTF8[I])) then
    begin
      Result[J] := ASrcUTF8[I];
      Inc(J);
    end
    else if ASrcUTF8[I] = ' ' then
    begin
      Result[J] := '+';
      Inc(J);
    end
    else
    begin
      Result[J  ] := '%';
      Result[J+1] := HexMap[(Ord(ASrcUTF8[I]) shr  4) + 1];
      Result[J+2] := HexMap[(Ord(ASrcUTF8[I]) and 15) + 1];
      Inc(J,3);
    end;
    Inc(I);
  end;

  SetLength(Result, J-1);
end;

function SetDllDirectory(lpPathName:PWideChar): Bool; stdcall; external 'kernel32.dll' name 'SetDllDirectoryW';

function TGoogleCal_Helper.WEBIslemler( aType: TSorguTipi; aUrl : String; boolJSON:boolean = false; slParam: TStringList = nil ): String;
  function GetTempDir: string;
  var
    TempDir:     DWORD;
  begin
    SetLength(Result, MAX_PATH);
    TempDir := GetTempPath(MAX_PATH, PChar(Result));
    SetLength(Result, TempDir);
  end;
Var
  OpenSSL          : TIdSSLIOHandlerSocketOpenSSL;
  IdHttp           : TIdHttp;
  AResponseContent : TStringStream;
  Req_Json         : TStream;
//a,b : Integer;
begin
  Result := '';
  if (aType = stPost) and (slParam = nil) then Exit;

  if Pos('https', aUrl ) > 0  then
  begin // HTTPS eriþim yapýlacak...
        // OpenSSL kütüphaneleri Gerekli.
        
(* // SSL Kütüphaneleri lisans sorunu yaratmasýn diye RESOURCE altýndan çýkardým. 
    {$IF CompilerVersion >= 22.0} a := 3; b := 4;  // XE
    {$ELSE}                       a := 1; b := 2;  // D7 = 15.0
    {$IFEND}
      With TResourceStream.Create(HInstance, Format('ssl_%.2d', [a]), RT_RCDATA) do
      begin
        Try
          SaveToFile( GetTempDir + 'ssleay32.dll' );
        Except
          // Dosya Açýk
        End;
        Free;
      end;

    //if NOT FileExists(GetTempDir + 'libeay32.dll') then
      With TResourceStream.Create(HInstance, Format('ssl_%.2d', [b]), RT_RCDATA) do
      begin
        Try
          SaveToFile( GetTempDir + 'libeay32.dll' );
        Except
          // Dosya Açýk
        End;
        Free;
      end;
 // Bendeki Indy sürümü ile uyumsuzdu... Alttaki þekilde deðiþtirdim...
 // IdSSLOpenSSLHeaders.IdOpenSSLSetLibPath( GetTempDir );
 // IdSSLOpenSSLHeaders.Load;

 // SSL DLL'lerini RES içinden TempDir'e aldýk...
    SetDllDirectory( StringToOLEStr(GetTempDir) );
*)

  end;

  OpenSSL := TIdSSLIOHandlerSocketOpenSSL.Create(Nil);
  With OpenSSL do begin
    MaxLineAction          := IdGlobal.maSplit;
    ConnectTimeout         := 15000;
    SSLOptions.Method      := sslvSSLv23;
    SSLOptions.Mode        := sslmUnassigned;
    SSLOptions.VerifyMode  := [];
    SSLOptions.VerifyDepth := 0;
  end;

  IdHttp  := TIdHttp.Create(nil);
  With IdHTTP do begin
    ConnectTimeout         := 10000;
    ReadTimeout            := 10000;
    IOHandler              := OpenSSL;
    Request.ContentType    := 'application/x-www-form-urlencoded';
    Request.Accept         := 'Accept=text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
    Request.UserAgent      := 'Mozilla/3.0 (compatible; Indy Library)';
    Request.BasicAuthentication     := False;
    ProxyParams.BasicAuthentication := False;
    ProxyParams.ProxyPort  := 0;
    HTTPOptions            := [hoForceEncodeParams];
    HandleRedirects        := True;
  end;

  AResponseContent := TStringStream.Create('');
  Try
    if aType in [stGET_KEYParam, stPOST_KEYParam, stDELETE_KEYParam] then
    begin
      IdHttp.Request.CustomHeaders.Values['Authorization'] := 'Bearer' + ' ' + FAccess_Token;

      if boolJSON then With IdHttp do
      begin
        HTTPOptions                         := [hoForceEncodeParams];
        AllowCookies                        := True;
        HandleRedirects                     := True;
        ProxyParams.BasicAuthentication     := False;
        ProxyParams.ProxyPort               := 0;
        Request.ContentLength               := -1;
        Request.ContentRangeEnd             := 0;
        Request.ContentRangeStart           := 0;
        Request.ContentRangeInstanceLength  := 0;
        Request.ContentType         := 'application/json';
        Request.Accept              := 'application/json;odata=verbose;';
        Request.BasicAuthentication := False;
        Request.UserAgent           := 'Mozilla/3.0 (compatible; Indy Library)';
        Request.CustomHeaders.Values['DataServiceVersion'] := '2.0';
      end;

    end;

    case aType of
    stDELETE, stDELETE_KEYParam:
      begin
        Try
          IdHttp.DeleteEx( aUrl, AResponseContent );
        Except on E : Exception do
          begin
            if Pos('404 Not Found', E.Message) > 0
            then MessageDlg( 'Hatalý Giriþ veya Event Bulunamadý...', mtError, [mbOk], 0 )
            else
            if Pos('410 Gone', E.Message) > 0
            then MessageDlg( 'Event Zaten Silinmiþ...', mtError, [mbOk], 0 )
            else InputBox('stDELETE','Hata', E.Message );
          end;
        End;
      end;
    stGET, stGET_KEYParam:
      begin
        Try
          LOGLa( 'stGET, stGET_KEYParam : ' + aURL );
          IdHttp.Get ( aUrl, AResponseContent );
        Except on E : Exception do
          if Pos('401 Unauthorized', E.Message) > 0
          then MessageDlg( 'Önce Login Olmalýsýnýz...', mtError, [mbOk], 0 )
          else InputBox('stGET','Hata', E.Message );
        End;
      end;
    stPOST, stPOST_KEYParam:
      begin
        if boolJSON
        then begin
          Req_Json := TStringStream.Create( slParam.Text );
          try
            Req_Json.Position := 0;
            FLog.LoadFromStream( Req_Json );
            Req_Json.Position := 0;
            Try
              IdHttp.Post( aUrl, Req_Json, AResponseContent );
            Except on E : Exception do
              if Pos('401 Unauthorized', E.Message) > 0
              then MessageDlg( 'Önce Login Olmalýsýnýz...', mtError, [mbOk], 0 )
              else InputBox('stPOST','Hata', E.Message );
            End;
          finally
            Req_Json.Free;
          end;
        end
        else begin
          try
            IdHttp.Post( aUrl, slParam, AResponseContent );
          Except on E : Exception do
            if Pos('401 Unauthorized', E.Message) > 0
            then MessageDlg( 'Önce Login Olmalýsýnýz...', mtError, [mbOk], 0 )
            else InputBox('stPOST_ELSE','Hata', E.Message );
          End;
        end;
      end;
    end; // case
    Result := AResponseContent.DataString;
  Finally
    IdHttp.Free;
    IdHttp.IOHandler := nil;
    OpenSSL.Free;
    AResponseContent.Free;
  End;
end;

function TGoogleCal_Helper.GoogleOAUTH_01(): String;
// Uses SHDocVw, MSHTML;
  function IEButonaBas( IEBrowser : SHDocVw.InternetExplorer; strButtonId: String ):boolean;
  Var
    Browser      : IWebBrowser2;
    Doc          : MSHTML.IHtmlDocument2;
    Document     : IHTMLDocument3;
    Element      : IHTMLElement;
  begin
    Result := False;
    if Supports( IEBrowser , IWebBrowser2, Browser ) then
    begin
      Browser.Document.QueryInterface(IHtmlDocument2, Doc);
      Document := Browser.Document as IHTMLDocument3;
      Element  := Document.GetElementById( strButtonID ) as IHTMLElement;
      LOGLa( Format('%s : %s', [ Element.tagName, Element.Id ]) );
      if Assigned( Element ) then
      if Element.Id = strButtonId then
      begin
        Element.Click;
        Result := True;
      end;
    end;
  end;

  function IEVeriGir( IEBrowser : SHDocVw.InternetExplorer; strInputNameOrId, strVeri: String ):boolean;
  Var
    Browser      : IWebBrowser2;
    Doc          : MSHTML.IHtmlDocument2;
    Document     : IHTMLDocument3;
    Element      : IHTMLElement;
    Collection   : IHTMLElementCollection;
    i            : Integer;
  begin
    Result := False;
    if Supports( IEBrowser , IWebBrowser2, Browser ) then
    begin
      Browser.Document.QueryInterface(IHtmlDocument2, Doc);
      Document := Browser.Document as IHTMLDocument3;
      Collection := Document.getElementsByTagName( 'INPUT' );
      i := 0;
      while (NOT Result) and (i < Collection.length) do
      begin
        Element := Collection.item(i, Variants.EmptyParam) as IHTMLElement;
        LOGLa( Format('%s : %s', [ Element.tagName, (Element as IHTMLInputElement).name ]) );
        if ( (Element as IHTMLInputElement).name = strInputNameOrId )
        or ( Element.id = strInputNameOrId )
        then
        begin
          (Element as IHTMLInputElement).value := strVeri;
          Result := True;
        end;
        inc(i);
      end;
    end;
  end;

var
  IE                : IWebBrowser2;
  Flags,
  TargetFrameName,
  PostData, Headers : Olevariant;
  aURL              : String;
  Zaman             : Cardinal;
  sil, str          : String;
begin
  Result := '';
  aURL := ''
          + FAuth_Uri
          +'?'
          +'response_type=code'
          +'&scope='        + FScopes
          +'&redirect_uri=' + FRedirect_Uris
          +'&client_id='    + FClient_Id
          +'&user_id='      + FLoginGmail
          ;

  LOGla( aURL );
  Flags           := 0;
  TargetFrameName := 0;
  Postdata        := 0;
  Headers         := 0;


  IE := CreateOleObject('InternetExplorer.Application') as IWebBrowser2;
LogLa( 'MainUrl: ' + aUrl );
  IE.Navigate( aURL, Flags, TargetFrameName, PostData, Headers );

  IE.Visible := FDebugMode;

  // 2 saniye Butonun aktifleþmesini bekliyoruz...
  Zaman := GetTickCount + 2000;
  while GettickCount < Zaman do begin
    Application.ProcessMessages;
    Sleep(10);
  end;

  str := ( IE.Document as iHTMLDocument2).body.innerHTML;
  if Pos('submit_approve_access', str) <= 0 then
  begin // Login Ekraný Gelmiþ Demektir.

    if Pos('identifierNext', str) > 0 then
    begin // eposta isteniyor Demektir.
      if IEVeriGir  ( IE, 'identifier', FLoginGmail )
        then IEButonaBas( IE, 'identifierNext' );

      // 2 saniye Butonun aktifleþmesini bekliyoruz...
      Zaman := GetTickCount + 2000;
      while GettickCount < Zaman do begin
        Application.ProcessMessages;
        Sleep(10);
      end;
    end;

    str := ( IE.Document as iHTMLDocument2).body.innerHTML;
    if Pos('passwordNext', str) > 0 then
    begin // Password isteniyor Demektir.
      if IEVeriGir( IE, 'password', FLoginPass )
        then IEButonaBas( IE, 'passwordNext' );

      // 2 saniye Butonun aktifleþmesini bekliyoruz...
      Zaman := GetTickCount + 2000;
      while GettickCount < Zaman do begin
        Application.ProcessMessages;
        Sleep(10);
      end;
    end;
  end;

  str := ( IE.Document as iHTMLDocument2).body.innerHTML;
  if Pos('submit_approve_access', str) > 0 then
  begin
    if NOT IEButonaBas( IE, 'submit_approve_access' ) then
    begin
      ShowMessage('Login Baþarýsýz.');
      Exit;
    end;
  end else begin
    ShowMessage('Login Baþarýsýz.');
    Exit;
  end;

  Zaman := GetTickCount + 2000;
  while GettickCount < Zaman do begin
    Application.ProcessMessages;
    Sleep(10);
  end;

  while (IE.Busy) do
  begin
    Sleep(1);
    Application.ProcessMessages;
    LOGLa( TimeToStr(now));
  end;

  str := ( IE.Document as iHTMLDocument2).body.innerHTML;

  if ( Pos('id="code"', str) > 0 ) // Pos('Bu kodu kopyalayýn', str ) > 0
  then begin
    sil := 'value="';
      System.Delete(str, 1, Pos(sil, str) + Length( sil )-1 );
    FAuth20_Code := Copy( str, 1, pos('"', str)-1 );
      LOGla( 'OAuth 2.0 iþlemi Baþarýlý...' );
      LOGla( 'Token Almak için AuthCode = ' + FAuth20_Code );
  end;
  IE.Quit;
  IE := nil;
  GoogleOAUTH_02();
end;

function TGoogleCal_Helper.GoogleOAUTH_02(): string;
Var
  slParam  : TStringList;
  strGelen, str, sil : String;
begin
  slParam := TStringList.create;
  Try
    slParam.Add('grant_type=authorization_code'      );
    slParam.Add('code='         + FAuth20_Code );
    slParam.Add('client_id='    + FClient_Id          );
    slParam.Add('client_secret='+ FClient_Secret      );
    slParam.Add('redirect_uri=' + FRedirect_Uris      );

    LOGla( slParam.text );
    LOGla( 'Access Token için Baþvuru Aþamasýndayýz...' );
    strGelen := WEBIslemler( stPOST, FToken_uri, false, slParam );

    str := strGelen;
    sil := '"access_token" : "';
      System.Delete(str, 1, pos(sil, str) + length(sil)-1 );
      FAccess_Token := trim( Copy(str, 1, pos('"', str)-1) );
    sil := '"expires_in" : ';
      System.Delete(str, 1, pos(sil, str) + length(sil)-1 );
      Fexpires_in   := trim( Copy(str, 1, pos(',', str)-1) );
    sil := '"refresh_token" : "';
      System.Delete(str, 1, pos(sil, str) + length(sil)-1 );
      Frefresh_token:=  trim( Copy(str, 1, pos('"', str)-1) );
    sil := '"token_type" : "';
      System.Delete(str, 1, pos(sil, str) + length(sil)-1 );
      Ftoken_type   := trim( Copy(str, 1, pos('"', str)-1) );
    Result := strGelen;
  Finally
    slParam.Free;
    LOGla('Access_Token Geldi : ' + FAccess_Token );
  End;
end;

procedure TGoogleCal_Helper.LOGla( strIcerik: String );
begin
  if (FLog = nil) then Exit;
  if strIcerik = '!!!! TEMÝZLE !!!!' then
  begin
    FLog.Clear;
    Exit;
  end;
  FLog.Add( strIcerik );
end;

function TGoogleCal_Helper.AradanSec(var strIcerik: String; strBas, strSon: String; boolTrim:boolean=false ): string;
Var
  strOrjKaynak : String;
begin
  Result := '';
  strOrjKaynak := strIcerik;
  if Pos( strBas, strIcerik ) > 0 then
  begin
    System.Delete( strIcerik, 1, Pos( strBas, strIcerik )+ Length( strBas )-1 );
    if strSon <> ''
      then Result := Trim( Copy(strIcerik, 1, Pos( strSon, StrIcerik ) -1) )
      else Result := Trim( strIcerik );
  end;
  if NOT boolTrim then strIcerik := strOrjKaynak;
end;

function TGoogleCal_Helper.CalEventEkle(aEvent: pCalEventRecord ): String;
const
  jsonDateFmt   = '  "dateTime": "%.4d-%.2d-%.2dT%.2d:%.2d:%.2d.000Z",';
  jsonAllDayFmt = '  "date": "%.4d-%.2d-%.2d",';
Var
  strEkle  : String;
  slParam  : TStringList;
  i        : Integer;
begin
  slParam := TStringList.Create;

  With slParam do begin
    Add( '{'                                          );
    Add( '  "start": {'                                );

    if aEvent.boolTumGun then begin
      strEkle := Format( jsonAllDayFmt, [ YearOf(aEvent.BasTar), MonthOf(aEvent.BasTar), DayOf(aEvent.BasTar) ] );
    end else begin
      strEkle := Format( jsonDateFmt, [ YearOf(aEvent.BasTar), MonthOf(aEvent.BasTar), DayOf(aEvent.BasTar), HourOf(aEvent.BasTar), MinuteOf(aEvent.BasTar), SecondOf(aEvent.BasTar) ] );
    end;
    Add( strEkle                                      );

    if aEvent.TimeZone <> ''
    then
    Add( '  "timeZone": "'+aEvent.TimeZone+'"'        );
    Add( ' },'                                        );
    Add( '  "end": {'                                  );
    if aEvent.boolTumGun then begin
      strEkle := Format( jsonAllDayFmt, [ YearOf(aEvent.BitTar), MonthOf(aEvent.BitTar), DayOf(aEvent.BitTar) ] );
    end else begin
      strEkle := Format( jsonDateFmt,   [ YearOf(aEvent.BitTar), MonthOf(aEvent.BitTar), DayOf(aEvent.BitTar), HourOf(aEvent.BitTar), MinuteOf(aEvent.BitTar), SecondOf(aEvent.BitTar) ] );
    end;
    Add( strEkle                                      );
    if aEvent.TimeZone <> ''
    then
    Add( '  "timeZone": "'+aEvent.TimeZone+'"'        );
    Add( ' },'                                        );
    if aEvent.description <> ''
    then
    Add( ' "description": "'+ UTF8Encode(aEvent.description)+'",'  );
    if aEvent.colorId > 0
    then
    Add( ' "colorId": "'+IntToStr(aEvent.colorId)+'",'             );
    if aEvent.location <> ''
    then
    Add( ' "location": "'+ UTF8Encode(aEvent.location) + '",'      );
    if aEvent.summary <> ''
    then
    Add( ' "summary": "'+ UTF8Encode(aEvent.summary) + '",'        );
    Add( ' "creator": {'                                          );
    if aEvent.creaDispName <> ''
    then
    Add( '  "displayName": "'+ UTF8Encode(aEvent.creaDispName)+'",');
    if aEvent.creaEmail <> ''
    then
    Add( '  "email": "'+ UTF8Encode(aEvent.creaEmail)+'",'         );
    if aEvent.creaId <> ''
    then
    Add( '  "id": "'+ UTF8Encode(aEvent.creaId)+'"'                );
    Add( ' },'                                                    );
    Add( ' "attendees": ['                                        );
    for i := low(aEvent.Attendees) to high(aEvent.Attendees) do
    begin
      Add( '  {'                                                                    );
      if aEvent.Attendees[i].attEmail <> ''
      then
      Add( '   "email": "'+aEvent.Attendees[i].attEmail+'",'                        );
      if aEvent.Attendees[i].attDispName <> ''
      then
      Add( '   "displayName": "'+ UTF8Encode( aEvent.Attendees[i].attDispName )+'",' );
      if aEvent.Attendees[i].attComment <> ''
      then
      Add( '   "comment": "'+ UTF8Encode( aEvent.Attendees[i].attComment )+'",'      );
      if aEvent.Attendees[i].attId <> ''
      then
      Add( '   "id": "'+ UTF8Encode( aEvent.Attendees[i].attId )+'",'                );
      if aEvent.Attendees[i].attOrganizer
        then Add( '   "organizer": true'                     )
        else Add( '   "organizer": false'                    );
      Add( '  }'                                             );

      if i < high(aEvent.Attendees)
        then Add( '  ,'                                      );

      Dispose( aEvent.Attendees[i] ) // Hafýzadan uçurduk
    end;
    Add( ' ],'                                               );
    Add( '"visibility": "default"'                           );
    Add( '}'                                                    );
  end;

  Dispose( aEvent ); // Hafýzadan uçurduk
  try
    Result := WEBIslemler( stPOST_KEYParam,  FCalendarUri
                                          +  EncodeURI( FCalendarID )
                                          + '/events'
                                          + '?key='
                                          +  EncodeURI( FApi_Key ), True, slParam );
  finally
    slParam.Free;
  end;
end;

procedure TGoogleCal_Helper.CalEventIDs( Liste : TStrings );
var
  strGelen : String;
begin
  strGelen := CalEventList();
  if pos( '"items":', strGelen ) <= 0 then Exit;
  AradanSec( strGelen, '', '"kind": "calendar#event"', True );
  while Pos('"id": "', strGelen) > 0 do begin
    Liste.Add( AradanSec( strGelen, '"id": "', '"', True ) );
  end;
end;

function TGoogleCal_Helper.CalEventList: String;
Var
  strRes : String;
begin
     LOGla(  FCalendarUri
          + EncodeURI( FCalendarID )
          + '/events'
          + '?key='+ EncodeURI( FApi_Key ) );
  strRes := UTF8Decode( WEBIslemler( stGET_KEYParam, FCalendarUri
                                                  +  EncodeURI( FCalendarID )
                                                  + '/events'
                                                  + '?key='
                                                  + EncodeURI( FApi_Key ) ));
  Result := strRes; 
end;

function TGoogleCal_Helper.CalEventSil(aEventId: String): String;
begin
  Result := WEBIslemler( stDELETE_KEYParam,  FCalendarUri
                                          +  EncodeURI( FCalendarID )
                                          + '/events'
                                          + '/' + aEventId
                                          +'?sendNotifications=false&key='
                                          + FApi_Key )
end;

function TGoogleCal_Helper.CalEventFromID(aEventId: String): String;
begin
  Result := WEBIslemler( stGET_KEYParam,  FCalendarUri
                                          +  EncodeURI( FCalendarID )
                                          + '/events'
                                          + '/' + aEventId );

end;

function TGoogleCal_Helper.ParseEvent( strIcerik : String ): pCalEventRecord;
Var
  str: String;
  aEvent    : pCalEventRecord;
  aKisiList : pAttendeesRecord;
  strBlok, dummy   : String;
  CId       : String;
  Tar1, Tar2: String;
  i         : Integer;
begin
  Result := nil;
  strBlok := strIcerik;
  if pos('"id": "', strBlok) > 0 then
  begin // Event gelmiþ... :)
    CId    := xGoogleCal.AradanSec( strBlok, '"id": "'     , '"', True  );
    new( aEvent );
    aEvent.summary      := UTF8Decode( xGoogleCal.AradanSec( strBlok, '"summary": "', '"', False ) );
    aEvent.location     := UTF8Decode( xGoogleCal.AradanSec( strBlok, '"location": "', '"', False ) );
    aEvent.description  := UTF8Decode( xGoogleCal.AradanSec( strBlok, '"description": "', '"', False ) );

    str := strBlok;
    xGoogleCal.AradanSec( str, '"start": {', '"date', True );
    Tar1 := xGoogleCal.AradanSec( str, ': "', '"' , True );
    if Pos('T', Tar1) > 0 then
    begin // DateTime 1111-11-11 11:11
      aEvent.boolTumGun := False;
      Tar2 := Copy(Tar1, 9, 2) + DateSeparator
            + Copy(Tar1, 6, 2) + DateSeparator
            + Copy(Tar1, 1, 4)
            + ' '
            + Copy(Tar1, 12, 2) + TimeSeparator
            + Copy(Tar1, 15, 2) + TimeSeparator
    end else
    begin // Date     1111-11-11
      aEvent.boolTumGun := True;
      Tar2 := Copy(Tar1, 9, 2) + DateSeparator
            + Copy(Tar1, 6, 2) + DateSeparator
            + Copy(Tar1, 1, 4);
    end;
    aEvent.BasTar := StrToDateTime( Tar2 );

    str := strBlok;
    xGoogleCal.AradanSec( str, '"end": {', '"date', True );
    Tar1 := xGoogleCal.AradanSec( str, ': "', '"' , True );
    if Pos('T', Tar1) > 0 then
    begin // DateTime
      aEvent.boolTumGun := False;
      Tar2 := Copy(Tar1, 9, 2) + DateSeparator
            + Copy(Tar1, 6, 2) + DateSeparator
            + Copy(Tar1, 1, 4)
            + ' '
            + Copy(Tar1, 12, 2) + TimeSeparator
            + Copy(Tar1, 15, 2) + TimeSeparator
    end else
    begin // Date
      aEvent.boolTumGun := True;
      Tar2 := Copy(Tar1, 9, 2) + DateSeparator
            + Copy(Tar1, 6, 2) + DateSeparator
            + Copy(Tar1, 1, 4);
    end;
    aEvent.BitTar := StrToDateTime( Tar2 );

    str := strBlok;
    xGoogleCal.AradanSec( str, '"attendees":', '[', True );
    i := -1;
    while pos('"email": "', str) > 0 do
    begin
      inc(i);
      New(aKisiList);
      aKisiList.attEmail    := xGoogleCal.AradanSec( str, '"email": "',       '"', True  );
      Dummy := Copy( str, 1, Pos( '}', str )-1); // olmayan baþlýk için diðer epostaya sarkmasýn diye
        aKisiList.attDispName := xGoogleCal.AradanSec( Dummy, '"displayName": "', '"', False );
        aKisiList.attComment  := xGoogleCal.AradanSec( Dummy, '"comment": "',     '"', False );
        aKisiList.attId       := xGoogleCal.AradanSec( Dummy, '"id": "',          '"', False );
        if xGoogleCal.AradanSec( Dummy, '"organizer": "',   '"', False ) = 'true'
          then aKisiList.attOrganizer := True
          else aKisiList.attOrganizer := False;
      SetLength( aEvent.Attendees, i+1 );
      aEvent.Attendees[i] := aKisiList;
    end;
    Result := aEvent;
  end;
end;

initialization
  xGoogleCal := TGoogleCal_Helper.Create;

finalization
  FreeAndNil(xGoogleCal);

end.






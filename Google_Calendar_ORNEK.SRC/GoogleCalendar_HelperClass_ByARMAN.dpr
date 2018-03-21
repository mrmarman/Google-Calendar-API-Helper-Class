program GoogleCalendar_HelperClass_ByARMAN;

uses
  Forms,
  Unit1 in 'Units\Unit1.pas' {Form1},
  GoogleCalendar_Helper in 'Units\GoogleCalendar_Helper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Google Calendar Helper by Muharrem ARMAN';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

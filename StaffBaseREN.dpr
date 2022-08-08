program StaffBaseREN;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Unit2 in 'Unit2.pas' {UniForm2: TUniForm},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Title := 'Staff.Bestrpofi.Test';
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

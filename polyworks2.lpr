program polyworks2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, tool_window, display_window;

{$R *.res}

begin
  Application.Title := 'Soldat PolyWorks 2';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TMainWindow, MainWindow);
  Application.CreateForm(TToolWindow, ToolWindow);
  Application.CreateForm(TDisplayWindow, DisplayWindow);
  Application.Run;
end.


unit display_window;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TDisplayWindow = class(TForm)
    WaypointsCheckBox: TCheckBox;
    ObjectsCheckBox: TCheckBox;
    SketchCheckBox: TCheckBox;
    SceneryCheckBox: TCheckBox;
    PointsCheckBox: TCheckBox;
    WireframeCheckBox: TCheckBox;
    TextureCheckBox: TCheckBox;
    PolygonsCheckBox: TCheckBox;
    BackgroundCheckBox: TCheckBox;
    GridCheckBox: TCheckBox;
    LightsCheckBox: TCheckBox;
    procedure FormShow(Sender: TObject);
  private
  public
  end;

var
  DisplayWindow: TDisplayWindow;

implementation

uses
  main;

{$R *.lfm}

{ TDisplayWindow }

procedure TDisplayWindow.FormShow(Sender: TObject);
begin
  self.Top := MainWindow.Top;
  self.Left := MainWindow.Left + MainWindow.Width;
end;

end.


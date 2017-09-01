unit display_window;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TDisplayWindow }

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
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DisplayWindow: TDisplayWindow;

implementation

{$R *.lfm}

end.


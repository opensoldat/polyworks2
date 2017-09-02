unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus, StdCtrls, Arrow, LMessages,

  tool_window, display_window;

type

  { TMainWindow }

  TMainWindow = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    FileMenu: TMenuItem;
    EditMenu: TMenuItem;
    CompileToPMSAsMenu: TMenuItem;
    ExportMenu: TMenuItem;
    ImportMenu: TMenuItem;
    MenuItem1: TMenuItem;
    CopyMenu: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MapSettingsMenu: TMenuItem;
    ClearSketchMenu: TMenuItem;
    BringToFrontMenu: TMenuItem;
    BringForwardMenu: TMenuItem;
    FixTextureMenu: TMenuItem;
    ApplyLightToVerticesMenu: TMenuItem;
    BackMenu: TMenuItem;
    LoadWorkspaceMenu: TMenuItem;
    HelpMenu: TMenuItem;
    SaveWorkspaceMenu: TMenuItem;
    ResetWindowLocationsMenu: TMenuItem;
    WorkspaceMenu: TMenuItem;
    ShowAllMenu: TMenuItem;
    HideAllMenu: TMenuItem;
    MenuItem22: TMenuItem;
    ToolsMenu: TMenuItem;
    DisplayMenu: TMenuItem;
    PaletteMenu: TMenuItem;
    WaypointsMenu: TMenuItem;
    SceneryMenu: TMenuItem;
    PropertiesMenu: TMenuItem;
    WindowTextureMenu: TMenuItem;
    MiddleMenu: TMenuItem;
    FrontMenu: TMenuItem;
    ShowGridMenu: TMenuItem;
    SnapToGridMenu: TMenuItem;
    SnapToVerticesMenu: TMenuItem;
    MenuItem21: TMenuItem;
    BlendWireframeMenu: TMenuItem;
    BlendPolysMenu: TMenuItem;
    ShowSceneryLayersMenu: TMenuItem;
    MenuItem26: TMenuItem;
    RefreshMenu: TMenuItem;
    ZoomInMenu: TMenuItem;
    ZoomOutMenu: TMenuItem;
    FitOnScreenMenu: TMenuItem;
    ActualSizeMenu: TMenuItem;
    ResetViewMenu: TMenuItem;
    MenuItem23: TMenuItem;
    TextureFlipVerticalMenu: TMenuItem;
    TextureRotate180Menu: TMenuItem;
    MenuItem15: TMenuItem;
    FixedTextureMenu: TMenuItem;
    TextureRotate90CWMenu: TMenuItem;
    TextureRotate90CCWMenu: TMenuItem;
    MenuItem20: TMenuItem;
    TextureFlipHorizontalMenu: TMenuItem;
    UserDefindedXMenu: TMenuItem;
    UserDefindedYMenu: TMenuItem;
    UntextureMenu: TMenuItem;
    TransFormTextureMenu: TMenuItem;
    MenuItem18: TMenuItem;
    AverageVertexColorsMenu: TMenuItem;
    Rotate180Menu: TMenuItem;
    Rotate90CWMenu: TMenuItem;
    Rotate90CCWMenu: TMenuItem;
    MenuItem17: TMenuItem;
    FlipHorizontalMenu: TMenuItem;
    FlipVerticalMenu: TMenuItem;
    SendBackwardMenu: TMenuItem;
    SendToBackMenu: TMenuItem;
    PreferencesMenu: TMenuItem;
    MenuItem6: TMenuItem;
    ServerConnectionsMenu: TMenuItem;
    MenuItem9: TMenuItem;
    TransformMenu: TMenuItem;
    MenuItem12: TMenuItem;
    SnapSelectedVerticesMenu: TMenuItem;
    CreateWithSelectedMenu: TMenuItem;
    SplitAtVertexMenu: TMenuItem;
    JoinVerticesMenu: TMenuItem;
    SelectByColorMenu: TMenuItem;
    MenuItem7: TMenuItem;
    ArrangeMenu: TMenuItem;
    PasteMenu: TMenuItem;
    ClearMenu: TMenuItem;
    MenuItem13: TMenuItem;
    SelectAllMenu: TMenuItem;
    InvertSelectionMenu: TMenuItem;
    DeselectMenu: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    UndoMenu: TMenuItem;
    RedoMenu: TMenuItem;
    MenuItem8: TMenuItem;
    DuplicateMenu: TMenuItem;
    RunMenu: TMenuItem;
    ExitMenu: TMenuItem;
    OpenMenu: TMenuItem;
    CompileToPMSMenu: TMenuItem;
    SaveAsMenu: TMenuItem;
    SaveMenu: TMenuItem;
    OpenRecentMenu: TMenuItem;
    OpenCompiledMenu: TMenuItem;
    NewMenu: TMenuItem;
    TextureMenu: TMenuItem;
    WindowMenu: TMenuItem;
    ViewMenu: TMenuItem;
    StatusBar1: TStatusBar;
    procedure FormChangeBounds(Sender: TObject);
    procedure WMMove(var Message: TLMMove); message LM_MOVE;
    procedure BackMenuClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DisplayMenuClick(Sender: TObject);
    procedure EditMenuClick(Sender: TObject);
    procedure ExitMenuClick(Sender: TObject);
    procedure FileMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TextureMenuClick(Sender: TObject);
    procedure ToolsMenuClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainWindow: TMainWindow;

implementation

{$R *.lfm}

{ TMainWindow }

procedure TMainWindow.WMMove(var Message: TLMMove);
begin
  inherited WMMove(Message);
  if Assigned(DisplayWindow) then
  begin
    DisplayWindow.Top := Top;
    DisplayWindow.Left := Left + Width;
  end;

  if Assigned(ToolWindow) then
  begin
    ToolWindow.Top := Top;
    ToolWindow.Left := Left - ToolWindow.ClientWidth;
  end;
end;

procedure TMainWindow.FormChangeBounds(Sender: TObject);
begin
  if Assigned(DisplayWindow) then
  begin
    DisplayWindow.Top := Top;
    DisplayWindow.Left := Left + Width;
  end;

  if Assigned(ToolWindow) then
  begin
    ToolWindow.Top := Top;
    ToolWindow.Left := Left - ToolWindow.ClientWidth;
  end;
end;

procedure TMainWindow.FileMenuClick(Sender: TObject);
begin
end;

procedure TMainWindow.FormCreate(Sender: TObject);
begin
end;

procedure TMainWindow.TextureMenuClick(Sender: TObject);
begin
end;

procedure TMainWindow.ToolsMenuClick(Sender: TObject);
begin
  ToolWindow.ShowOnTop;
end;

procedure TMainWindow.EditMenuClick(Sender: TObject);
begin
end;

procedure TMainWindow.ExitMenuClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainWindow.BackMenuClick(Sender: TObject);
begin
end;

procedure TMainWindow.Button1Click(Sender: TObject);
begin
  ToolWindow.ShowOnTop;
  DisplayWindow.ShowOnTop;
end;

procedure TMainWindow.DisplayMenuClick(Sender: TObject);
begin
  DisplayWindow.ShowOnTop;
end;

end.


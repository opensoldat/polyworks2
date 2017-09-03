unit tool_window;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtCtrls;

type
  TToolWindow = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
  end;

var
  ToolWindow: TToolWindow;

implementation

uses
  main;

{$R *.lfm}

{ TToolWindow }

procedure TToolWindow.FormCreate(Sender: TObject);
begin
  self.Constraints.MaxWidth := self.Constraints.MinWidth;
  self.Constraints.MaxHeight := self.Constraints.MinHeight;
end;

procedure TToolWindow.FormShow(Sender: TObject);
begin
  self.Top := MainWindow.Top;
  self.Left := MainWindow.Left - self.Width;
end;

end.


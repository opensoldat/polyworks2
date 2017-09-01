unit tool_window;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons, ExtCtrls;

type

  { TToolWindow }

  TToolWindow = class(TForm)
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ToolWindow: TToolWindow;

implementation

{$R *.lfm}

{ TToolWindow }

procedure TToolWindow.FormCreate(Sender: TObject);
begin
  self.Constraints.MaxWidth := self.Constraints.MinWidth;
  self.Constraints.MaxHeight := self.Constraints.MinHeight;
end;

end.


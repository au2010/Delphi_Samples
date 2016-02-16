unit Unit2;

interface

uses
  System.Classes;

type
  TUserData = class(TObject)
  private
    FInputBool: Boolean;
    FInputString1: string;
    FInputString2: string;
    procedure SetInputBool(const Value: Boolean);
    procedure SetInputString1(const Value: string);
    procedure SetInputString2(const Value: string);
  public
    property InputBool: Boolean read FInputBool write SetInputBool;
    property InputString1: string read FInputString1 write SetInputString1;
    property InputString2: string read FInputString2 write SetInputString2;
  end;

implementation

procedure TUserData.SetInputBool(const Value: Boolean);
begin
  FInputBool := Value;
end;

procedure TUserData.SetInputString1(const Value: string);
begin
  FInputString1 := Value;
end;

procedure TUserData.SetInputString2(const Value: string);
begin
  FInputString2 := Value;
end;

end.

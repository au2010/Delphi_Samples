unit Unit1;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.Components, Data.Bind.ObjectScope,
  Data.Bind.EngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Vcl.Bind.DBEngExt;

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

  TForm1 = class(TForm)
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure PrototypeBindSource1CreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    FData: TUserData;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

constructor TForm1.Create(AOwner: TComponent);
begin
  // TPrototypeBindSource.OnCreateAdapter が OnCreateForm よりも先に発生する
  // ので、OnCreateFormではなく、コンストラクタで初期化を行う
  FData := TUserData.Create;
  FData.InputBool := True;
  FData.InputString1 := '1';
  FData.InputString2 := '2';
  inherited;
end;

destructor TForm1.Destroy;
begin
  inherited;
  FData.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessageFmt('Input1:%s'#13#10'Input2:%s'#13#10'Check:%s',
    [FData.InputString1, FData.InputString2, BoolToStr(FData.InputBool, True)]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FData.InputBool := False;
  PrototypeBindSource1.Refresh;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  PrototypeBindSource1.Refresh;
end;

procedure TForm1.PrototypeBindSource1CreateAdapter(Sender: TObject;
  var ABindSourceAdapter: TBindSourceAdapter);
begin
  ABindSourceAdapter := TObjectBindSourceAdapter<TUserData>.Create(Self,
    FData, False);
end;

{ TUserData }

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

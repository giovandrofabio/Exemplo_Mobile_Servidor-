unit UntCadUsuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UntLayoutBase, ksTabControl, FMX.Controls.Presentation, FMX.Objects,
  FMX.Layouts, FMX.Edit;

type
  TfCadUsuario = class(TFrmLayoutBase)
    lblLogo: TLabel;
    tbCtrlMain: TksTabControl;
    tbStep1: TksTabItem;
    tbStep2: TksTabItem;
    tbStep3: TksTabItem;
    edtCPF: TEdit;
    rctStep2: TRectangle;
    lytStep1: TLayout;
    rctStep1: TRectangle;
    lytCPF: TLayout;
    lytBotoes: TLayout;
    lytCancelar: TLayout;
    lytStep2: TLayout;
    lblStep2: TLabel;
    rctCancelar: TRectangle;
    lblCancelar: TLabel;
    Line1: TLine;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    Layout2: TLayout;
    Edit1: TEdit;
    Line2: TLine;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Layout5: TLayout;
    Rectangle3: TRectangle;
    Label2: TLabel;
    Edit3: TEdit;
    Line4: TLine;
    Rectangle4: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Edit2: TEdit;
    Line3: TLine;
    Edit4: TEdit;
    Line5: TLine;
    Layout8: TLayout;
    Layout9: TLayout;
    Rectangle5: TRectangle;
    Label3: TLabel;
    Layout10: TLayout;
    Rectangle6: TRectangle;
    Label4: TLabel;
    Edit5: TEdit;
    Line6: TLine;
    tbStep4: TksTabItem;
    Rectangle7: TRectangle;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Rectangle8: TRectangle;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure rctStep2Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle3Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadUsuario: TfCadUsuario;

implementation

uses
   UntLib;

{$R *.fmx}

procedure TfCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
   tbCtrlMain.TabPosition := TksTabBarPosition.ksTbpNone;
   tbCtrlMain.ActiveTab   := tbStep1;
end;

procedure TfCadUsuario.rctStep2Click(Sender: TObject);
begin
  inherited;
   TLibrary.MudarAba(tbCtrlMain, tbStep2);
end;

procedure TfCadUsuario.Rectangle2Click(Sender: TObject);
begin
  inherited;
   TLibrary.MudarAba(tbCtrlMain, tbStep1);
end;

procedure TfCadUsuario.Rectangle3Click(Sender: TObject);
begin
  inherited;
   TLibrary.MudarAba(tbCtrlMain, tbStep3);
end;

procedure TfCadUsuario.Rectangle5Click(Sender: TObject);
begin
  inherited;
   TLibrary.MudarAba(tbCtrlMain, tbStep2);
end;

procedure TfCadUsuario.Rectangle6Click(Sender: TObject);
begin
  inherited;
   TLibrary.MudarAba(tbCtrlMain, tbStep4);
end;

end.

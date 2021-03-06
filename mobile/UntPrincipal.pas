unit UntPrincipal;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  System.ImageList,

  FMX.Types,
  FMX.Graphics,
  FMX.Controls,
  FMX.Forms,
  FMX.Dialogs,
  FMX.StdCtrls,
  FMX.ImgList,
  FMX.Layouts,
  FMX.ListBox,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.MultiView,

  UntBase,
  ksTabControl;

type
  TFrmPrincipal = class(TFrmBase)
    tbCtrlMain: TksTabControl;
    tbitemLogin: TksTabItem;
    tbitemMain: TksTabItem;
    mtvMenu: TMultiView;
    rctFundoMenu: TRectangle;
    imgMenu: TImageList;
    lstMenu: TListBox;
    rctSair: TRectangle;
    glySair: TGlyph;
    Label1: TLabel;
    lbiPerfil: TListBoxItem;
    rctPerfil: TRectangle;
    Glyph2: TGlyph;
    lblNomePerfil: TLabel;
    Line1: TLine;
    lblEmail: TLabel;
    lytPerfil: TLayout;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    lyBase: TLayout;
    rctClient: TRectangle;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstMenuItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure rctSairClick(Sender: TObject);
    procedure glySairTap(Sender: TObject; const Point: TPointF);
  private
    { Private declarations }
  public
    { Public declarations }
    FActiveForm: TForm;
    procedure AbrirForm(const AFormClass: TComponentClass);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
   UntInfoUsuario,
   UntLib;

{$R *.fmx}

{ TFrmPrincipal }

procedure TFrmPrincipal.AbrirForm(const AFormClass: TComponentClass);
var
   oLayoutBase : TComponent;
   oBotaoMenu  : TComponent;
   I           : Integer;
begin
   if (Assigned(FActiveForm)) then
   begin
      if (FActiveForm.ClassType = AFormClass) then
      begin
         mtvMenu.HideMaster;
         Exit;
      end
      else
      begin
         FActiveForm.DisposeOf;
         FActiveForm := nil;
      end;
   end;

   Application.CreateForm(AFormClass, FActiveForm);

   oLayoutBase := FActiveForm.FindComponent('rctClient');
   if (Assigned(oLayoutBase)) then
   begin
      rctClient.AddObject(TRectangle(oLayoutBase));
      mtvMenu.HideMaster;
      mtvMenu.Visible := False;
   end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
   tbCtrlMain.TabPosition := TksTabBarPosition.ksTbpNone;
   tbCtrlMain.ActiveTab   := tbitemLogin;
   mtvMenu.Visible        := False;
   mtvMenu.HideMaster;
end;

procedure TFrmPrincipal.glySairTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
   rctSairClick(Sender);
end;

procedure TFrmPrincipal.lstMenuItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
var
   I : Integer;
begin
  inherited;
   for I := 0 to Pred(lstMenu.Items.Count) do
   begin
      lstMenu.ListItems[I].ImageIndex := 1;
   end;
   Item.ImageIndex := 0;
end;

procedure TFrmPrincipal.rctSairClick(Sender: TObject);
begin
  inherited;
   ShowMessage('Logoff efetuado');
   mtvMenu.HideMaster;
   mtvMenu.Visible := False;
   TLibrary.MudarAba(tbCtrlMain, tbitemLogin);
end;

procedure TFrmPrincipal.ListBoxItem1Click(Sender: TObject);
begin
  inherited;
   AbrirForm(TFrmInfoUsuario);
   TLibrary.MudarAba(tbCtrlMain, tbitemMain);
end;

end.

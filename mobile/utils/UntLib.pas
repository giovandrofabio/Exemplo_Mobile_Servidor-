unit UntLib;

interface

uses
   ksTabControl;

type
   TLibrary = class
      private
         class var
      public
         class procedure MudarAba(const AKsTabCtrl : TKsTabControl; const AKsTabItem: TKsTabItem);
   end;

implementation

{ TLibrary }

class procedure TLibrary.MudarAba(const AKsTabCtrl: TKsTabControl;
  const AKsTabItem: TKsTabItem);
begin
   AKsTabCtrl.FadeToTab(AKsTabItem, 0.3);
end;

end.

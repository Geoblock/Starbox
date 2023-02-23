// ---------------------------------------------------------------------------
#ifndef fStarboxCH
#define fStarboxCH
// ---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>

#include "GLS.Scene.hpp"
#include "GLS.SceneViewer.hpp"
#include "GLS.Objects.hpp"
#include "GLS.VectorTypes.hpp"
#include "GLS.BaseClasses.hpp"
#include "GLS.Coordinates.hpp"
#include "GLS.Cadencer.hpp"
#include "GLS.Material.hpp"
#include "GLS.Color.hpp"
#include "GLS.SimpleNavigation.hpp"
#include <Vcl.Samples.Spin.hpp>
#include <Vcl.Menus.hpp>

// ---------------------------------------------------------------------------
class TFormBox : public TForm {
__published: // IDE-managed Components
	TGLScene *GLScene;
	TGLSceneViewer *GLSceneViewer1;
	TGLLightSource *LightSource;
	TGLCamera *Camera;
	TGLDummyCube *DummyCube;
	TPanel *PanelRight;
	TSplitter *Splitter1;
	TButton *ButtonStars;
	TGLSimpleNavigation *GLSimpleNavigation;
	TGLCadencer *GLCadencer;
	TGLMaterialLibrary *MatLibColors;
	TGroupBox *gbStars;
	TPanel *Panel2;
	TPanel *Panel3;
	TPanel *Panel4;
	TPanel *Panel5;
	TCheckBox *chbO;
	TCheckBox *chbB;
	TCheckBox *chbA;
	TCheckBox *chbF;
	TCheckBox *chbG;
	TCheckBox *chbK;
	TCheckBox *chbM;
	TSpinEdit *SpinEdit;
	TPanel *Panel6;
	TPanel *Panel7;
	TPanel *Panel8;
	TRadioGroup *rgStyle;
	TCheckBox *chbAll;
	TShape *shO;
	TShape *shB;
	TShape *shA;
	TShape *shG;
	TShape *shK;
	TShape *shF;
	TShape *shM;
	TMainMenu *MainMenu;
	TMenuItem *Window1;
	TMenuItem *NewWindow1;
	TMenuItem *Tile1;
	TMenuItem *Cascade1;
	TMenuItem *ArrangeAll1;
	TMenuItem *Hide1;
	TMenuItem *Show1;
	TMenuItem *N1;
	TMenuItem *File1;
	TMenuItem *New1;
	TMenuItem *Open1;
	TMenuItem *Save1;
	TMenuItem *SaveAs1;
	TMenuItem *Exit1;
	TMenuItem *N2;
	TMenuItem *Help1;
	TMenuItem *About1;
	TPanel *PanelLeft;
	TTreeView *TreeView;

	void __fastcall FormMouseWheel(TObject *Sender, TShiftState Shift,
		int WheelDelta, TPoint &MousePos, bool &Handled);
	void __fastcall ButtonStarsClick(TObject *Sender);
	void __fastcall GLSceneViewer1MouseDown(TObject *Sender,
		TMouseButton Button, TShiftState Shift, int X, int Y);
	void __fastcall GLSceneViewer1MouseMove(TObject *Sender, TShiftState Shift,
		int X, int Y);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall chbAllClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall chbOClick(TObject *Sender);
private: // User declarations
	TGLPoints *Stars[1000];
	void MakeStars(TObject *Sender);

	int mx, my;

public: // User declarations
	__fastcall TFormBox(TComponent* Owner);
};

// ---------------------------------------------------------------------------
extern PACKAGE TFormBox *FormBox;
// ---------------------------------------------------------------------------
#endif

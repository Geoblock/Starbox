// ---------------------------------------------------------------------------
#include <vcl.h>
#include <tchar.h>
#include <stdlib.h>
#pragma hdrstop
#include "fStarboxC.h"
// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "GLS.Scene"
#pragma link "GLS.SceneViewer"
#pragma link "GLS.Objects"
#pragma link "GLS.BaseClasses"
#pragma link "GLS.Coordinates"

#pragma link "GLS.Cadencer"
#pragma link "GLS.Material"
#pragma link "GLS.SimpleNavigation"
#pragma resource "*.dfm"
TForm1 *Form1;

// ---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner) : TForm(Owner) {
}

// ---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
  MakeStars(Sender);
}

// ---------------------------------------------------------------------------

void TForm1::MakeStars(TObject *Sender)
{
	for (int i = 0; i < 1000; i++) {
		P[i] = new TGLPoints(GLDummyCube1);
		P[i]->Colors->Add(((float)(rand() % 256)) / 256.0,
			((float)(rand() % 256)) / 256.0,
			((float)(rand() % 256)) / 256.0, 0.5);
		P[i]->Size = 5;
		P[i]->Position->X = 1.0 * rand() / RAND_MAX - 0.5;
		P[i]->Position->Y = 1.0 * rand() / RAND_MAX - 0.5;
		P[i]->Position->Z = 1.0 * rand() / RAND_MAX - 0.5;

		if (rgStyle->ItemIndex == 0) {
			P[i]->Style =  psSquare;
		}
		else
			P[i]->Style =  psSmooth;
	}

}


// ---------------------------------------------------------------------------
void __fastcall TForm1::ButtonStarsClick(TObject *Sender) {

  MakeStars(Sender);
}
// ---------------------------------------------------------------------------

void __fastcall TForm1::GLSceneViewer1MouseDown(TObject *Sender,
	TMouseButton Button, TShiftState Shift, int X, int Y) {
	mx = X;
	my = Y;

}

// ---------------------------------------------------------------------------
void __fastcall TForm1::FormMouseWheel(TObject *Sender, TShiftState Shift,
	int WheelDelta, TPoint &MousePos, bool &Handled) {
	if (GLSceneViewer1->MouseInControl == true) {
		GLCamera1->AdjustDistanceToTarget(Power(1.1, -WheelDelta / 120));
	}
}

// ---------------------------------------------------------------------------

void __fastcall TForm1::GLSceneViewer1MouseMove(TObject *Sender,
	TShiftState Shift, int X, int Y) {
	if (Shift.Contains(ssLeft))
		GLCamera1->MoveAroundTarget(my - Y, mx - X);
	else if (Shift.Contains(ssRight))
		GLCamera1->RotateTarget(my - Y, mx - X, 0);
	mx = X;
	my = Y;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::chbAllClick(TObject *Sender)
{
// if chbAll->Cheked then  all gbAtars Cheked
}
//---------------------------------------------------------------------------


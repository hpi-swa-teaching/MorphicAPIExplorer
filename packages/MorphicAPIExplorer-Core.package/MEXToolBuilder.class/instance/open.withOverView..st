as yet unclassified
open: aView withOverView: aMEXToolOverView
	"Build and open the object. Answer the widget opened."
	
	aView overViewWindow: aMEXToolOverView.
	aView overViewWindow hide.
	
	^ (self build: aView) openInWorld
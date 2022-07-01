as yet unclassified
open: aView
	"Build and open the object. Answer the widget opened."
	
	aView overViewWindow: (self build: aView) openAsTool.
	
	^ aView overViewWindow 
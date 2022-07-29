as yet unclassified
open: aView
	"Build and open the object. Answer the widget opened."
	
	aView overViewWindow: self.
	
	^ (self build: aView) openInWorld
ui
openHelpWindow

	| morph |
	
	"morph :=MEXResources buildHelpWindowMorphWith: (self class helpWindowText) withExtent: (self class helpWindowExtent)."
	morph :=MEXResources buildHelpWindowMorphWith: (self class helpWindowText).
	morph := morph embeddedInMorphicWindowLabeled:'Help'.
	morph openCenteredInWorld.
	^ morph.
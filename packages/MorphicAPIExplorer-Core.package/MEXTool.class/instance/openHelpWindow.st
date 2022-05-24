ui
openHelpWindow

	| morph |
	
	morph :=MEXResources buildHelpWindowMorphWith: (self class helpWindowText) withExtent: (self class helpWindowExtent).
	morph openCenteredInWorld.
	^ morph.
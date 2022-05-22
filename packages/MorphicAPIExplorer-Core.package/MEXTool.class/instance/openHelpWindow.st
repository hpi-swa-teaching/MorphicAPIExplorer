ui
openHelpWindow

	| morph |
	
	morph :=MEXResources helpWindowMorph: (self class helpWindowText) withExtent: (self class helpWindowExtent).
	morph openCenteredInWorld.
	
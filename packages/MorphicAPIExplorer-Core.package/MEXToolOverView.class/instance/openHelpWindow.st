ui
openHelpWindow

	| morph |
	
	morph := Morph new.
	
	morph 
		extent: MEXResources defaultHelpWindowExtent;
		"color: Color red;"
		yourself.
	morph openInWorld.
	
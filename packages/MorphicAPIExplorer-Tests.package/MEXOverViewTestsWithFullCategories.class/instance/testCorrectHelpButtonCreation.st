tests
testCorrectHelpButtonCreation

	| children helpbuttons helpbuttonmorph textmorph|
	children := self getFullCollectionOfOverViewChildren.
	
	helpbuttons:= children select: [:child| child help == MEXResources defaultHelpButtonHelpText].
	
	self assert: helpbuttons size equals: 1.
	
	helpbuttonmorph := helpbuttons first action value.
	
	textmorph:= (helpbuttonmorph submorphs at: 1).
	
	helpbuttonmorph abandon. 
	
	self assert: textmorph text equals: overView class helpWindowText.
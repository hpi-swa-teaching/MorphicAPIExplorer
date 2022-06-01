tests
testCorrectHelpButtonCreation

	| children helpbuttons helpbuttonmorph |
	children := self getFullCollectionOfOverViewChildren.
	
	helpbuttons:= children select: [:child| child help == MEXResources defaultHelpButtonHelpText].
	
	self assert: helpbuttons size equals: 1.
	
	helpbuttonmorph := helpbuttons first action value.
	
	self assert: helpbuttonmorph contents equals: overView class helpWindowText.
tests
testCorrectHelpButtonCreation

	| children helpButtons helpButtonMorph textMorph|
	children := self getFullCollectionOfOverViewChildren.
	
	helpButtons := children select: [:child| child help == MEXResources defaultHelpButtonHelpText].
	
	self assert: helpButtons size equals: 1.
	
	helpButtonMorph := helpButtons first action value.
	
	textMorph := (helpButtonMorph submorphs first).
	
	helpButtonMorph abandon. 
	
	self assert: textMorph text equals: overView class helpWindowText.
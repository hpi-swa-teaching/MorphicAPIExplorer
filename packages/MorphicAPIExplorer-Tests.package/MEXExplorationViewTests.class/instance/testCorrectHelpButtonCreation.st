tests
testCorrectHelpButtonCreation

	| helpbuttonmorph textmorph|
	
	helpbuttonmorph := (explorationView dependents at: 3) action value.
	
	textmorph := (helpbuttonmorph submorphs first).
	
	helpbuttonmorph abandon. 
	
	self assert: textmorph text equals: explorationView class helpWindowText.
	
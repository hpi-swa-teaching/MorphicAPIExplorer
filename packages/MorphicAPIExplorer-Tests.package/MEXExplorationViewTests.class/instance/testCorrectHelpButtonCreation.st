tests
testCorrectHelpButtonCreation

	| helpbuttonmorph |
	
	helpbuttonmorph := (explorationView dependents at: 3) action value.
	
	self assert: helpbuttonmorph contents equals: explorationView class helpWindowText.
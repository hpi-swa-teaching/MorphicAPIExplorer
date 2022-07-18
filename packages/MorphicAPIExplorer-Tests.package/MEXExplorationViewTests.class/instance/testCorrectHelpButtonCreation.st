tests
testCorrectHelpButtonCreation

	| helpButtonMorph textMorph|
	
	helpButtonMorph := (explorationView dependents at: 3) action value.
	
	textMorph := (helpButtonMorph submorphs first).
	
	helpButtonMorph abandon. 
	
	self assert: textMorph text equals: explorationView class helpWindowText.
	
ui
changeToExplorationViewFor: aMEXCategory

	| newView builtView|
	self addDefaultButNotStandardMorphOf: aMEXCategory.
	newView := MEXToolExplorationView 
		newFromCategory: aMEXCategory 
		withSavedMorphs: self savedMorphs.
	builtView := (MEXToolBuilder open: newView withOverView: 
		(self findSystemWindowInDependents)).
	MEXToolBuilder setBoundsForWindow: builtView to: 
		(MEXToolBuilder getBoundsForWindow: self containingWindow).
	newView changed: #selectedMethods.
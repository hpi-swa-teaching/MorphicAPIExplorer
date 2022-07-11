ui
changeToExplorationViewFor: aMEXCategory

	| newView |
	self addDefaultButNotStandardMorphOf: aMEXCategory.
	newView := MEXToolExplorationView 
		newFromCategory: aMEXCategory 
		withSavedMorphs: self savedMorphs.
	newView := (MEXToolBuilder open: newView withOverView: 
		(self findSystemWindowInDependents)).
	MEXToolBuilder setBoundsForWindow: newView to: 
		(MEXToolBuilder getBoundsForWindow: self containingWindow).
	newView changed: #selectedMethods.
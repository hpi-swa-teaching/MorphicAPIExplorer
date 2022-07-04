ui
changeToExplorationViewFor: aMEXCategory

	| newView |
	self addDefaultButNotStandardMorphOf: aMEXCategory.
	newView := MEXToolExplorationView 
		newFromCategory: aMEXCategory 
		withSavedMorphs: self savedMorphs.
	self changeViewTo: (MEXToolBuilder open: newView withOverView: 
		(self findSystemWindowInDependents)).
	newView changed: #selectedMethods. 
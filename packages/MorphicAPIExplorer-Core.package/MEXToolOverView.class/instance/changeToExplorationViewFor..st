ui
changeToExplorationViewFor: aMEXCategory

	| newView |
	(self standardMorphs noneSatisfy: 
		[:each | each class = aMEXCategory defaultMorph class])
			ifTrue: [self savedMorphs add: aMEXCategory defaultMorph -> OrderedCollection new].
	newView := MEXToolExplorationView 
		newFromCategory: aMEXCategory 
		withSavedMorphs: self savedMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
ui
changeToExplorationViewFor: aMEXCategory

	| newView |
	(self standardMorphs noneSatisfy: 
		[:each | each class = aMEXCategory defaultMorph class])
			ifTrue: [self savedMorphs add: aMEXCategory defaultMorph -> OrderedCollection new].
	newView := MEXToolExplorationView 
		newFromCategory: aMEXCategory 
		withDefaultMorphs: self savedMorphs 
		withActualDefaultMorph: aMEXCategory defaultMorph.
	self changeViewTo: (MEXToolBuilder open: newView)
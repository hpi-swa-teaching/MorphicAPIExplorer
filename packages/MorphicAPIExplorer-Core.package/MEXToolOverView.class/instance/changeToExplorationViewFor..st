ui
changeToExplorationViewFor: aMEXCategory

	| newView |
	(self standardMorphs noneSatisfy: 
		[:each | each class = aMEXCategory defaultMorph class])
			ifTrue: [self defaultMorphs add: aMEXCategory defaultMorph -> OrderedCollection new].
	newView := MEXToolExplorationView 
		newFromCategory: aMEXCategory 
		withDefaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
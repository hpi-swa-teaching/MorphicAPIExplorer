ui
changeToExplorationViewFor: aMEXCategory

	| newView flag |
	flag := 0.
	self standardMorphs do: [:each |
		(each class = aMEXCategory defaultMorph class) ifTrue: [flag := 1].].
	(flag = 0) ifTrue: [self defaultMorphs add: aMEXCategory defaultMorph -> OrderedCollection new.].
	
	newView := MEXToolExplorationView newFromCategory: aMEXCategory withDefaultMorphs: self defaultMorphs withActualDefaultMorph: aMEXCategory defaultMorph.
	self changeViewTo: (MEXToolBuilder open: newView)
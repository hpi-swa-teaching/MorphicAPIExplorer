as yet unclassified
testMorphBoxContainsStandardMorphs
	
| view collection |
	view := builder build: overView.
	collection := OrderedCollection new.
	collection := explorationView morphBox submorphs collect: 
		[:each | (each submorphs first) ].
	overView standardMorphs do: [:standardMorph |
	self assert: (collection anySatisfy: [:each | each class = standardMorph class]).]
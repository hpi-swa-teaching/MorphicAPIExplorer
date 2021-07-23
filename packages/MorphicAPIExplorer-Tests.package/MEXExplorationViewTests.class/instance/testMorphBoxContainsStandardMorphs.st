tests
testMorphBoxContainsStandardMorphs
	
	| view collection |
	view := builder build: overView.
	collection := OrderedCollection new.
	collection := explorationView morphBox submorphs collect: [:aMorph | 
		aMorph submorphs first].
	overView class standardMorphs do: [:standardMorph |
		self assert: (collection anySatisfy: [:aMorph | aMorph class = standardMorph class])]
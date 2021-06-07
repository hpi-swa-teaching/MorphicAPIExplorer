tests
testDefaultMorphChanges

	| collection view |
	view := builder build: explorationView.
	explorationView defaultMorph: (ImageMorph new).
	collection := explorationView morphBox submorphs collect: 
		[:each | (each submorphs first)].
	self assert: (collection anySatisfy: [:each | each class = explorationView defaultMorph class])

tests
testDefaultMorphChanges

	| defaultMorph view |
	explorationView category: MEXCategory new.
	view := builder build: explorationView.
	explorationView defaultMorph: (ImageMorph new).
	defaultMorph := view submorphs third submorphs first submorphs first.
	self assert: (defaultMorph isImageMorph)
tests
testDefaultMorphChanges

	| defaultMorph view |
	explorationView category: MEXCategory new.
	view := toolbuilder build: explorationView.
	explorationView changeDefaultMorph: (ImageMorph new).
	defaultMorph := view submorphs third submorphs first submorphs first.
	self assert: (defaultMorph isImageMorph).
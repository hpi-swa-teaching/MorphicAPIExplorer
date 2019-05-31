tests
testDefaultMorphBoxContainsAMorph

	| defaultMorph view |
	explorationView category: MEXCategory new.
	view := toolbuilder build: explorationView.
	defaultMorph := view submorphs third submorphs first submorphs.
	self assert: (defaultMorph size = 1).
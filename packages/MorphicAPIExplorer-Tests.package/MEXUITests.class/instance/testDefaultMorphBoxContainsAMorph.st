tests
testDefaultMorphBoxContainsAMorph

	| defaultMorphCollection view |
	explorationView category: MEXCategory new.
	view := builder build: explorationView.
	defaultMorphCollection := view submorphs third submorphs first submorphs.
	self assert: (defaultMorphCollection size = 1)
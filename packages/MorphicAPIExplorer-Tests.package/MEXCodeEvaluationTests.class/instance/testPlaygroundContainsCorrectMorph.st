tests
testPlaygroundContainsCorrectMorph

	| morph view submorphs |
	morph := Morph new color: Color red.
	view := builder build: explorationView.
 	view updatePlaygroundContents: morph.
	submorphs := view playground submorphs.
	self assert: submorphs size equals: 1.
	self assert: (submorphs contains: morph)
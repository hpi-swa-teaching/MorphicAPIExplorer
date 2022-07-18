tests
testPlaygroundContainsCorrectMorph

	| morph viewModel subMorphs |
	morph := Morph new color: Color red.
	viewModel := (builder open: explorationView) model.
 	viewModel playground updateContents: morph.
	subMorphs := viewModel playground submorphs.
	self assert: subMorphs size equals: 1.
	self assert: subMorphs first identical: morph
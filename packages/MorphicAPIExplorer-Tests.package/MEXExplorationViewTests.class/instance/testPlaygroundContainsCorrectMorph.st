tests
testPlaygroundContainsCorrectMorph

	| morph viewModel submorphs |
	morph := Morph new color: Color red.
	viewModel := (builder open: explorationView) model.
 	viewModel updatePlaygroundContents: morph.
	submorphs := viewModel playground submorphs.
	self assert: submorphs size equals: 1.
	self assert: submorphs first identical: morph
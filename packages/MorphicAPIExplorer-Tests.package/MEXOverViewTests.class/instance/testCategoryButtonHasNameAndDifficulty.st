tests
testCategoryButtonHasNameAndDifficulty

	| view |
	view := builder build: overView.
	self assert: ((view submorphs at: 4) label submorphs at: 1) text string equals: 'Collision
medium'

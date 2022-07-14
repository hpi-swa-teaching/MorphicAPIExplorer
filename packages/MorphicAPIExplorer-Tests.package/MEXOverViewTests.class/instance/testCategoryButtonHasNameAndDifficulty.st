tests
testCategoryButtonHasNameAndDifficulty

	| view |
	view := self getNonEmptyOverview. 
	self assert: ((view submorphs at: 4) label submorphs at: 1) text string equals: 'Collision
medium'

tests
testCategoryButtonHasNameAndDifficulty

	| view |
	view := self getNonEmptyOverview. 
	self assert: ((view submorphs at: 4) label submorphs first) text string equals: 'Collision
medium'

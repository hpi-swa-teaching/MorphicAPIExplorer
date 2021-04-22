tests
testSpecsPerRowForReturnsCorrectNumberWhenPassedAFloat

	| specsPerRow categories |
	categories := empty.
	1 to: 10 do: [:anIndex | categories add: MEXCategory new].
	overView categories: categories.
	specsPerRow := overView specsPerRowFor: 3.33.
	self assert: specsPerRow equals: 4
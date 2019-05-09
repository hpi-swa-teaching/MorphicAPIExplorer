tests
testBuildForCategoryReturnsIdenticalCategory

	| explorationView |
	explorationView := MEXToolExplorationView newFromCategory: category.
	self assert: explorationView category identical: category
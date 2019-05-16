tests
testBuildForCategoryReturnsCorrectMethodList

	| explorationView |
	explorationView := MEXToolExplorationView newFromCategory: category.
	self assert: explorationView methodList equals: category explorationSpecification methods
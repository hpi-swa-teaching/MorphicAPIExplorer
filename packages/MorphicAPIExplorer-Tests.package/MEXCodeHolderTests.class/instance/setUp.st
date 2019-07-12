running
setUp

	category := self createCategory.
	explorationView := self createExplorationView.
	codeHolder := MEXCodeHolder withView: explorationView.
	explorationView addDependent: codeHolder.
	queries := OrderedCollection new
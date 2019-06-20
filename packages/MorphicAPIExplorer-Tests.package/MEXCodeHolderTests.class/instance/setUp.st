running
setUp

	category := self createCategory.
	explorationView := self createExplorationView.
	mexCodeHolder := MEXCodeHolder withView: explorationView.
	explorationView addDependent: mexCodeHolder
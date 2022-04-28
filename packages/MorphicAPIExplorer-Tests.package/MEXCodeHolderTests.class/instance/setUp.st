running
setUp

	super setUp.
	
	codeHolder := MEXCodeHolder newWithView: explorationView.
	explorationView addDependent: codeHolder.
	queries := OrderedCollection new
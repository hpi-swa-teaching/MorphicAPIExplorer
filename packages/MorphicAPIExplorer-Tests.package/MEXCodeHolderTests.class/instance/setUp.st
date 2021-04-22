running
setUp

	super setUp.
	
	codeHolder := MEXCodeHolder withView: explorationView.
	explorationView addDependent: codeHolder.
	queries := OrderedCollection new
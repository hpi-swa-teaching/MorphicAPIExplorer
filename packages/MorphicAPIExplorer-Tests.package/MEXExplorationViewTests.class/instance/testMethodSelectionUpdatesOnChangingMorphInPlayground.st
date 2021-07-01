tests
testMethodSelectionUpdatesOnChangingMorphInPlayground
	
	| exampleMethods view allButtonMorphs |
	
	view := builder build: explorationView.
	exampleMethods := { explorationView methodList at: 1. explorationView methodList at: 2} asOrderedCollection.
	self loadMorphWithMethods: exampleMethods.
	explorationView evaluateCode: self sampleCode.
	explorationView saveCurrentMorph.
	allButtonMorphs := self getButtonMorphCollectionInDefaultMorphBoxFor: view.
	(allButtonMorphs at: 1) doButtonAction.
	

	self halt.
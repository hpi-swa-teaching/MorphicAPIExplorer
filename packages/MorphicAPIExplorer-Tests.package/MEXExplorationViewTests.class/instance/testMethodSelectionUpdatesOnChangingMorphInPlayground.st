tests
testMethodSelectionUpdatesOnChangingMorphInPlayground
	
	| exampleMethods allMorphs view |
	
	view := builder build: explorationView.
		
	explorationView setSelectionFor: (explorationView methodList at: 1) with: true.
	explorationView setSelectionFor: (explorationView methodList at: 2) with: true.
	explorationView evaluateMethodsForMorph: explorationView defaultMorph.
	
	exampleMethods := { explorationView methodList at: 1. explorationView methodList at: 2} asOrderedCollection.
	self halt.
	explorationView saveCurrentMorph.
	allMorphs := self getMorphCollectionInDefaultMorphBoxFor: view.

	self halt.
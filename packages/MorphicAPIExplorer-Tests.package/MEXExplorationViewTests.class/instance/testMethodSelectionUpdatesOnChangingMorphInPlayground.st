tests
testMethodSelectionUpdatesOnChangingMorphInPlayground
	
	"| exampleMethods allButtonMorphs |
	
	exampleMethods := {explorationView methodList at: 1. explorationView methodList at: 2} asOrderedCollection.
	self loadMorphWithMethods: exampleMethods.
	explorationView evaluateCode: self sampleCode.
	explorationView saveCurrentMorph.
	allButtonMorphs := self getButtonMorphCollectionInDefaultMorphBoxFor: explorationView.
	(allButtonMorphs at: 1) doButtonAction"

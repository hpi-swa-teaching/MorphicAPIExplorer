tests
testMethodSelectionUpdatesOnChangingMorphInPlayground
	
	| exampleMethods allButtonMorphs view methodTree |
	
	view := builder build: explorationView.
	view openInWorld.
	exampleMethods := {explorationView methodList at: 1. explorationView methodList at: 2} asOrderedCollection.
	
	explorationView selectedMethods: exampleMethods.
	self loadMorphWithMethods: exampleMethods.
	explorationView evaluateCode: self sampleCode.
	explorationView saveCurrentMorph.
	allButtonMorphs := self getButtonMorphCollectionInDefaultMorphBoxFor: explorationView.
	(allButtonMorphs at: 1) doButtonAction.
	methodTree := self getMethodTreeFor: explorationView.
	methodTree items do: [:anItem | self assert: anItem complexContents item isSelected equals: false].
	self assert: methodTree selectedMorphs size == 0.
	(allButtonMorphs at: 5) doButtonAction.
	self assert: methodTree items first complexContents item isSelected.
	self assert: methodTree items second complexContents item isSelected.
	(methodTree items allButFirst: 2) do: [:anItem | self assert: anItem complexContents item isSelected equals: false].
	self assert: methodTree selectedMorphs size == 2.
	view abandon

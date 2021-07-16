tests
testMethodSelectionUpdatesOnChangingMorphInPlayground
	
	| exampleMethods allButtonMorphs view methodTree |
	
	view := builder build: explorationView.
	view openInWorld.
	exampleMethods := {explorationView methodList at: 1. explorationView methodList at: 2} asOrderedCollection.
	
	self loadMorphWithMethods: exampleMethods.
	explorationView saveCurrentMorph.
	allButtonMorphs := self getButtonMorphCollectionInMorphBoxFor: explorationView.
	methodTree := self getMethodTreeFor: explorationView.
	allButtonMorphs do: [:aButtonMorph | aButtonMorph doButtonAction. 
		self assert: (((((methodTree items collect: [:anItem | anItem complexContents item isSelected == false]) occurrencesOf: false) == 0) 
			and: (methodTree selectedMorphs size == 0))
		or: ((methodTree items first complexContents item isSelected) 
			and: (methodTree items second complexContents item isSelected) 
			and: ((((methodTree items allButFirst: 2) collect: [:anItem | anItem complexContents item isSelected == false]) occurrencesOf: false) == 0)
			and: (methodTree selectedMorphs size == 2)))].
	view abandon
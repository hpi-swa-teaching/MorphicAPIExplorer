tests
testMethodSelectionUpdatesOnChangingMorphInPlayground
	
	| exampleMethods allButtonMorphs view methodTree methodList selectedContents |
	view := builder build: explorationView.
	view openInWorld.
	exampleMethods := {explorationView methodList first . explorationView methodList at: 2} asOrderedCollection.
	self loadMorphWithMethods: exampleMethods.
	explorationView saveCurrentMorph.
	allButtonMorphs := self getButtonMorphCollectionInMorphBoxFor: explorationView.
	methodTree := self getMethodTreeFor: explorationView.
	methodList := methodTree items.
	allButtonMorphs do: [:aButtonMorph | aButtonMorph doButtonAction. 
		selectedContents := methodTree selectedMorphs.
		self assert: (((methodList noneSatisfy: [:anEntry | anEntry complexContents item isSelected])
			and: [selectedContents isEmpty])
		or: [methodList first complexContents item isSelected 
			and: [methodList second complexContents item isSelected] 
			and: [(methodList allButFirst: 2) noneSatisfy: [:anEntry | anEntry complexContents item isSelected]]
			and: [selectedContents size = 2]])].
	view abandon
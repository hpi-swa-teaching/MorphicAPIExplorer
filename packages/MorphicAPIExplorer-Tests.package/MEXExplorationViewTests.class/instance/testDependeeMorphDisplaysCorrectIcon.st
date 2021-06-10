tests
testDependeeMorphDisplaysCorrectIcon

	| treeMorph methodNames |
	treeMorph := self getMethodTreeFor: explorationView.
	treeMorph items do: [:anItem | 
		treeMorph hoveredMorph: anItem. 
		methodNames := anItem complexContents getDependents.
		treeMorph items do: [:anotherItem |
			self assert: (methodNames includes: anotherItem complexContents asString) 
				equals: (anotherItem getIcon bits = MEXIcons dependeeIcon bits)]]		
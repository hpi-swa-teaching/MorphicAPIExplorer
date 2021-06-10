tests
testDependeeMorphDisplaysCorrectIcon

	| treeMorph methodNames |
	treeMorph := self getMethodTreeFor: explorationView.
	treeMorph items do: [:anItem | 
		treeMorph hoveredMorph: anItem. 
		methodNames := anItem complexContents getDependencies.
		treeMorph items do: [:anotherItem |
			self assert: (methodNames includes: anotherItem complexContents asString) 
				equals: (anotherItem getIcon bits = MEXIcons dependeeIcon bits)]]		
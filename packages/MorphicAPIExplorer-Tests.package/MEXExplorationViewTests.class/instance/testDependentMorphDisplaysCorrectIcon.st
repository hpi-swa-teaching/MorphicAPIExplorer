tests
testDependentMorphDisplaysCorrectIcon

	(self getMethodTreeFor: explorationView) items do: [:anItem | 
		anItem complexContents item hasDependencies 
			ifTrue: [self assert: anItem getIcon bits equals: MEXIcons dependentIcon bits]
			ifFalse: [self assert: anItem getIcon bits equals: MEXIcons blankIcon bits]]
	
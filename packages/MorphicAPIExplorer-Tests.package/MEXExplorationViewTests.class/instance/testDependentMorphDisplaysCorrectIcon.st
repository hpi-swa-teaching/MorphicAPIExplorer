tests
testDependentMorphDisplaysCorrectIcon

	((self getMethodTreeFor: explorationView) items reject: [:anotherItem | 
		anotherItem complexContents item hasSubMethods]) do: [:anItem | 
			anItem complexContents item hasDependencies 
				ifTrue: [self assert: anItem getIcon bits equals: MEXIcons dependentIcon bits]
				ifFalse: [self assert: anItem getIcon bits equals: MEXIcons blankIcon bits]]
	
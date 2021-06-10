tests
testRelatedMorphsAreDependeeMorphs

	| treeMorph |
	treeMorph := self getMethodTreeFor: explorationView.
	treeMorph items do: [:anItem | 
		treeMorph hoveredMorph: anItem.
		self assert: ((treeMorph relatedMorphs collect: [:aMorph | aMorph complexContents asString]) asOrderedCollection)
			equals: (anItem complexContents getDependents)]
tests
testExpandableTreeElementsExpanded

	| view treeMorph|
	view := builder build: explorationView.
	treeMorph := (explorationView dependents select: [:aMorph | aMorph isKindOf: MEXPluggableMultiSelectionTreeMorph]) first.
	treeMorph roots do: [:aNode | 
		self assert: ((aNode canExpand and: [aNode isExpanded]) or: [aNode canExpand not and: [aNode isExpanded not]])]

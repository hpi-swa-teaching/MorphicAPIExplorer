tests
testExpendableTreeElementsExpanded

	| view treeMorph|
	view := builder build: explorationView.
	treeMorph := (explorationView dependents select: [:each | each isKindOf: MEXPluggableMultiSelectionTreeMorph]) first.
	treeMorph expandRoots.
	treeMorph roots do: [:each | self assert: ((each canExpand and: each isExpanded) or: ((each canExpand ) not and: (each isExpanded) not))]

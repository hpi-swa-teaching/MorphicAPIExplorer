accessing
setSelectionFor: aSearchItem

		(aSearchItem isKindOf: MEXCategory) ifTrue: [self changeToExplorationViewFor: aSearchItem].
		(aSearchItem isKindOf: MEXMethod) ifTrue: [self changeToExplorationViewFor: aSearchItem category].
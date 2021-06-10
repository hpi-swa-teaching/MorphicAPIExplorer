accessing
setSelectionFor: aMethod

		(aMethod isKindOf: MEXCategory) ifTrue: [self changeToExplorationViewFor: aMethod].
		(aMethod isKindOf: MEXMethod) ifTrue: [self changeToExplorationViewFor: aMethod category].
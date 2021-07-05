running
loadMorphWithMethods: anOrderedCollection

	anOrderedCollection do: [:aMethod | explorationView setSelectionFor: aMethod with: true].
	explorationView evaluateMethodsForMorph: explorationView defaultMorph
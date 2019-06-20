running
selectAllMethods

	category methodList do: [:aMethod | 
		explorationView setSelectionFor: aMethod with:	true
	]
running
selectAllMethods

	self getMethodListOfCategory do: [:aMethod | 
		explorationView setSelectionFor: aMethod with:	true]
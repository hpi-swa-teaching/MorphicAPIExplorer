accessing
deselectAllMethods

	self selectedMethods do: [:aMethod | self setSelectionFor: aMethod with: false]
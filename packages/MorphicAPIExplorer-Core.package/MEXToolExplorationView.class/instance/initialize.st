initialize-release
initialize

	super initialize.
	
	self selectedMethods: OrderedCollection new.
	self codeHolder: MEXCodeHolder new.
	
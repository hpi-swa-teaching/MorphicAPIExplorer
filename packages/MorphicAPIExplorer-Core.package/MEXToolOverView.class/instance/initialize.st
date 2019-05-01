initialize-release
initialize

	super initialize.
	
	self categories: OrderedCollection new.
	1 to: 6 do: [:a | self categories add: MEXCategory new].
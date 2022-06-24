tests
testSpecdropItemUnsupported

	|pluggableTreeSpec bool|
	
	pluggableTreeSpec := MEXPluggableMultiSelectionTreeSpec new. 
	bool := false. 
	[pluggableTreeSpec dropItem: nil]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	bool := false. 
	[pluggableTreeSpec dropItem]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	
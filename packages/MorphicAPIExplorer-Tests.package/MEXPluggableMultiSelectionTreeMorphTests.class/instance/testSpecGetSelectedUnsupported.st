tests
testSpecGetSelectedUnsupported

	|pluggableTreeSpec bool|
	
	pluggableTreeSpec := MEXPluggableMultiSelectionTreeSpec new. 
	bool := false. 
	[pluggableTreeSpec getSelected: nil]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	bool := false. 
	[pluggableTreeSpec getSelected]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	
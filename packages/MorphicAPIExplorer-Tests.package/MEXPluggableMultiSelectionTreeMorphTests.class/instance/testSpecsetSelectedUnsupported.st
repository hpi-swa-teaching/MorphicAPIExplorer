tests
testSpecsetSelectedUnsupported

	|pluggableTreeSpec bool|
	
	pluggableTreeSpec := MEXPluggableMultiSelectionTreeSpec new. 
	bool := false. 
	[pluggableTreeSpec setSelected: nil]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	bool := false. 
	[pluggableTreeSpec setSelected]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	
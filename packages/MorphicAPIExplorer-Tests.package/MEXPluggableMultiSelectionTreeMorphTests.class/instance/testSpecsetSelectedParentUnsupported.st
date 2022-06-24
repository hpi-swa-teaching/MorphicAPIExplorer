tests
testSpecsetSelectedParentUnsupported

	|pluggableTreeSpec bool|
	
	pluggableTreeSpec := MEXPluggableMultiSelectionTreeSpec new. 
	bool := false. 
	[pluggableTreeSpec setSelectedParent: nil]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	bool := false. 
	[pluggableTreeSpec setSelectedParent]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	
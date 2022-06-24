tests
testSpecautoDeselectUnsupported

	|pluggableTreeSpec bool|
	
	pluggableTreeSpec := MEXPluggableMultiSelectionTreeSpec new. 
	bool := false. 
	[pluggableTreeSpec autoDeselect: nil]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	bool := false. 
	[pluggableTreeSpec autoDeselect]
			on: MEXUnsupportedError 
			do: [:error| bool := true]. 
	self assert: bool equals: true. 
	
	
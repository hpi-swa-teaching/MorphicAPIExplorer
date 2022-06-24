tests
testkonstantsAreSet

	|pluggableTree|
	
	pluggableTree := MEXPluggableMultiSelectionTreeMorph new. 
	self assert: (pluggableTree basicKeyPressed: 'a') equals: true.
	self assert: (pluggableTree keyStroke: nil) equals: true. 
	self assert: (pluggableTree handlesMouseOver: nil) equals: true. 
	self assert: (pluggableTree specialKeyPressed: nil) equals: false 
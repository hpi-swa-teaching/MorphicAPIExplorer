tests
testImageIsScaledToButtonExtent

	self makeButton.
	(widget label respondsTo: #image) ifTrue: [
		self assert: widget label extent equals: widget extent]
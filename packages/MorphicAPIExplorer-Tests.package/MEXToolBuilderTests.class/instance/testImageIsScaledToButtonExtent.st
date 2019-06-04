tests
testImageIsScaledToButtonExtent

	| form |
	self makeButton.
	(widget label respondsTo: #image) ifTrue: [
		form := widget label image.
		self assert: ((form width = widget width) or: (form height = widget height))]
	
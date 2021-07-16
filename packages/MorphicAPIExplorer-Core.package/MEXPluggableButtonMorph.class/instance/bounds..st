geometry
bounds: aRectangle

	super bounds: aRectangle.
	
	(self label respondsTo: #image) ifTrue: [self label extent: self extent]
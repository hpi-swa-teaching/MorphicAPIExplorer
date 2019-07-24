geometry
bounds: newBounds

	super bounds: newBounds.
	
	(self label respondsTo: #image) ifTrue: [self label extent: self extent]
geometry
bounds: newBounds

	super bounds: newBounds.
	(self label respondsTo: #image) ifTrue: [
		self label image: ( self label image scaledToSize: (self extent))]
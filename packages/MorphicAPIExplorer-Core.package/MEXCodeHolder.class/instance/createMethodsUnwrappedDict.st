style
createMethodsUnwrappedDict
	
	methodsUnwrappedDict := Dictionary newFrom: {
	"Animating"
	
	"Building & Tearing Down"
	
	"Drawing & Styling"
	
	"Event Handling"
	
	"File Handling"
		#setNewImageFrom: -> 'setNewImageFrom: MEXResources overviewImageFileHandling'.
		#readFromFile -> 'readFromFile'.
		#image: -> 'image: MEXResources overviewImageFileHandling'.
	"Layouting"
		#layoutFrame: -> '(LayoutFrame new leftFraction: 0; topFraction: 0; rightFraction: 0.5; bottomFraction: 0.5)'.
		#listDirection: -> 'listDirection: #topToBottom'.
		#wrapDirection: -> 'wrapDirecton: #leftToRight'.
		#minCellSize: -> 'minCellSize: 100'.
	"Nesting & Submorphing"
		#bottom: -> '250'.
		#bounds: -> 'bounds: (Rectangle new origin: 0@0 corner: 100@100)'.
		#addMorph: -> 'addMorph: (Morph new)'.
		#goBehind -> 'goBehind'.
	"Transforming"
		#angle: -> 'angle: 20'.
		#rotationDegrees: -> 'rotationDegrees: 45'.
		#scale: -> 'scale: 50'.
		#extent: -> 'extent: 100@100'.
	}
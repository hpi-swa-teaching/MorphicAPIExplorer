constants
categoryDrawingAndStyling

	^ MEXCategory 
		newNamed: 'Drawing & Styling' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageDrawingAndStyling
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod 
					withName: 'Drawing' 
					havingSubMethods: {
						MEXMethod 
							withName: 'drawOn:'
							havingParameters: {'Canvas new'}.
					}.
				MEXMethod 
					withName: 'Styling' 
					havingSubMethods: {
						MEXMethod 
							withName: 'cornerStyle:'
							havingParameters: {'#rounded'}.
						MEXMethod 
							withName: 'color:'
							havingParameters: {'#green'}.
						MEXMethod withName: 'addDropShadow'
					}
		}			
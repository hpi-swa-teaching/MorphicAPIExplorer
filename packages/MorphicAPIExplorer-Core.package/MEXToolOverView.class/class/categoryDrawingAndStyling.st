constants
categoryDrawingAndStyling

	^ MEXCategory 
		newNamed: 'Drawing & Styling' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageDrawingAndStyling
			havingExtent: self defaultButtonImageExtent)
		withMethodList: {
				MEXMethod 
					withName: 'Drawing' 
					havingSubMethods: {
						MEXMethod withName: 'drawOn:'
					}.
				MEXMethod 
					withName: 'Styling' 
					havingSubMethods: {
						MEXMethod withName: 'cornerStyle:'.
						MEXMethod withName: 'color:'.
						MEXMethod withName: 'addDropShadow'
					}
		}			
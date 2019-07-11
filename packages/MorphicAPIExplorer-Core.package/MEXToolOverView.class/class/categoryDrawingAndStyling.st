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
							havingParameters: {'NullCanvas new'}
					}.
				MEXMethod 
					withName: 'Styling' 
					havingSubMethods: {
						MEXMethod 
							withName: 'cornerStyle:'
							havingParameters: {'#rounded'}.
						MEXMethod
							withName: 'color:'
							havingParameters: {'Color white'}.
						MEXMethod withName: 'addDropShadow'.
						MEXMethod 
							withName: 'shadowPoint:' 
							havingParameters: {'30@25'}.
						MEXMethod 
							withName: 'shadowColor:' 
							havingParameters: {'(Color red alpha: 0.05)'}	
					}
		}			
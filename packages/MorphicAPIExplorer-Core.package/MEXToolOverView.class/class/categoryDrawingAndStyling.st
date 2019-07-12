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
						MEXMethod withName: 'drawOn:'
					}.
				MEXMethod 
					withName: 'Styling' 
					havingSubMethods: {
						MEXMethod withName: 'cornerStyle:'.
						MEXMethod
							withName: 'color:'
							havingParameters: {'Color white'}.
						MEXMethod withName: 'addDropShadow'.
						MEXMethod 
							withName: 'shadowPoint:' 
							havingParameters: {'30@30'}.
						MEXMethod 
							withName: 'shadowColor:' 
							havingParameters: {'(Color red alpha: 0.5)'}	
					}
		}			
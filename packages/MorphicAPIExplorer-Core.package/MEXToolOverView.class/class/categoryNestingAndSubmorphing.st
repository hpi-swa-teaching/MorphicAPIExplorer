constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newNamed: 'Nesting & Submorphing' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageNestingAndSubmorphing
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod 
					withName: 'Positioning' 
					havingSubMethods: {
						MEXMethod 
							withName: 'bottom:'
							havingParameters: {'250'}.
						MEXMethod 
							withName: 'bounds:'
							havingParameters: {'(Rectangle new origin: 0@0 corner: 100@100)'}
					}.
				MEXMethod
					withName: 'Layering'
					havingSubMethods: {
						MEXMethod 
							withName: 'addMorph:'
							havingParameters: {'Morph new'}.
						MEXMethod withName: 'goBehind'
					}
		}			
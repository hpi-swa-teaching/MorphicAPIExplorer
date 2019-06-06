constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newNamed: 'Nesting & Submorphing' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageNestingAndSubmorphing
			havingExtent: self defaultButtonImageExtent)
		withMethodList: {
				MEXMethod 
					withName: 'Positioning' 
					havingSubMethods: {
						MEXMethod withName: 'bottom:'.
						MEXMethod withName: 'bounds:'
					}.
				MEXMethod
					withName: 'Layering'
					havingSubMethods: {
						MEXMethod withName: 'addMorph:'.
						MEXMethod withName: 'goBehind'
					}
		}			
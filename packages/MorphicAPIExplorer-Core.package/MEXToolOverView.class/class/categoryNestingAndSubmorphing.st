constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newNamed: 'Nesting & Submorphing' 
		havingImage: MEXScalableImageMorph new
		withMethodList: {
				MEXMethod 
					withName: 'Positioning' 
					havingSubMethods: {
						MEXMethod withName: 'addMorph:'.
						MEXMethod withName: 'bottom:'.
						MEXMethod withName: 'bounds:'.
						MEXMethod withName: 'goBehind'
					}
		}			
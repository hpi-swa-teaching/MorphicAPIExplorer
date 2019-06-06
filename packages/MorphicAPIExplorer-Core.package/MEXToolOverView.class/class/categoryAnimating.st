constants
categoryAnimating

	^ MEXCategory 
			newNamed: 'Animating'
			havingImage: (MEXScalableImageMorph
				newWithImage: MEXResources overviewImageAnimating
				havingExtent: self defaultButtonImageExtent)
			withMethodList: {
				MEXMethod 
					withName: 'Stepping' 
					havingSubMethods: {
						MEXMethod withName: 'startStepping:at:arguments:stepTime:'.
						MEXMethod withName: 'startStepping'
					}.
				MEXMethod 
					withName: 'Cursor blinking' 
					havingSubMethods: {
						MEXMethod withName: 'startBlinking'
					}
		}
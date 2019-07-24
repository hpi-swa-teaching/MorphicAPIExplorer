constants
categoryAnimating

	^ MEXCategory 
			newNamed: 'Animating'
			havingImage: (MEXScalableImageMorph
				newWithImage: MEXResources overviewImageAnimating
				havingExtent: self defaultButtonImageExtent)
			havingDefaultMorph: LedTimerMorph new
			withMethodList: {
				MEXMethod 
					withName: 'Stepping' 
					havingSubMethods: {
						MEXMethod withName: 'start'.
						MEXMethod withName: 'stop'.
					}
		}
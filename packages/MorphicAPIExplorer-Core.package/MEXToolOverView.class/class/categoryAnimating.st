constants
categoryAnimating

	^ MEXCategory 
		newNamed: 'Animating'
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageAnimating
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: LedTimerMorph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Stepping' 
				havingSubMethods: {
					MEXMethod newWithName: 'start'.
					MEXMethod newWithName: 'stop'}}
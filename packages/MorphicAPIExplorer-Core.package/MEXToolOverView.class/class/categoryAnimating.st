constants
categoryAnimating

	^ MEXCategory 
		newWithName: 'Animating'
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageAnimating
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: LedTimerMorph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Stepping' 
				havingSubMethods: {
					MEXMethod newWithName: ' morph start' .
					MEXMethod newWithName: 'morph stop'}}
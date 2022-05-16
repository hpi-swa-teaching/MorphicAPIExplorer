constants
categorytest

	^ MEXCategory 
		newWithName: 'test'
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageAnimating
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: LedTimerMorph new
		withMethodList: {
			MEXMethod 
				newWithName: 'test' 
				havingSubMethods: {
					MEXMethod newWithName: 'cornerStyle' havingParameters: {#rounded}.
					MEXMethod newWithName: 'openinWorld'}}
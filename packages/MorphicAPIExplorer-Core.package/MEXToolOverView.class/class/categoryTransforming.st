constants
categoryTransforming

	^ MEXCategory 
		newWithName: 'Transforming' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageTransforming
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'Rotating'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'rotationDegrees:'
						havingParameters: {'45'}} .
			MEXMethod
				newWithName: 'Scaling'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'bounds:'
						havingParameters: {'morph bounds: (Rectangle new setOrigin: 0 @ 0 corner: 100 @ 150)'} .
					MEXMethod 
						newWithName: 'extent:'
						havingParameters: {'morph extent: 100 @ 100'}}}
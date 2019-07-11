constants
categoryTransforming

	^ MEXCategory 
		newNamed: 'Transforming' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageTransforming
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod
					withName: 'Rotating'
					havingSubMethods: {
						MEXMethod 
							withName: 'rotationDegrees:'
							havingParameters: {'45'}
					}.
				MEXMethod
					withName: 'Scaling'
					havingSubMethods: {
						MEXMethod 
							withName: 'bounds:'
							havingParameters: {'(Rectangle new setOrigin: 0@0 corner: 100@150)'}.
						MEXMethod 
							withName: 'extent:'
							havingParameters: {'100@100'}
					}
		}
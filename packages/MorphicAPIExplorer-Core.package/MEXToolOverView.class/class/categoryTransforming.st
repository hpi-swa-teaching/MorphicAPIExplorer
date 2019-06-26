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
							withName: 'angle:'
							havingParameters: {'20'} asOrderedCollection.
						MEXMethod 
							withName: 'rotationDegrees:'
							havingParameters: {'45'} asOrderedCollection
					}.
				MEXMethod
					withName: 'Scaling'
					havingSubMethods: {
						MEXMethod 
							withName: 'scale:'
							havingParameters: {'50'} asOrderedCollection.
						MEXMethod 
							withName: 'extent:'
							havingParameters: {'100@100'} asOrderedCollection
					}
		}
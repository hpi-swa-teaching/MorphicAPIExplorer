constants
categoryEventHandling

	^ MEXCategory 
		newWithName: 'Event Handling' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageEventHandling
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'Mouse Events'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'addMouseUpActionWith:'
						havingParameters: {'morph addMouseUpActionWith:', $' asString, 'self color: Color random', $' asString}}}
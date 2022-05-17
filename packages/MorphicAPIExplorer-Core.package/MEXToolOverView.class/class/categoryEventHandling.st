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
						havingParameters: {$' asString, 'morph self addMouseUpActionWith: color: Color random', $' asString}}}
constants
categoryEventHandling

	^ MEXCategory 
		newNamed: 'Event Handling' 
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
						havingParameters: {$' asString,  'self color: Color random' , $' asString}}}
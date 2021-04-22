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
				withName: 'Mouse Events'
				havingSubMethods: {
					MEXMethod 
						withName: 'addMouseUpActionWith:'
						havingParameters: {$' asString,  'self color: Color random' , $' asString}}}
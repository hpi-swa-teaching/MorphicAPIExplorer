constants
categoryDrawingAndStyling

	^ MEXCategory 
		newNamed: 'Drawing & Styling' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageDrawingAndStyling
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Styling' 
				havingSubMethods: {
					MEXMethod 
						newWithName: 'cornerStyle:'
						havingParameters: {'#rounded'}.
					MEXMethod
						newWithName: 'color:'
						havingParameters: {'Color white'}.
					MEXMethod newWithName: 'addDropShadow'.
					MEXMethod 
						newWithName: 'shadowPoint:' 
						havingParameters: {'30 @ 25'}.
					MEXMethod 
						newWithName: 'shadowColor:' 
						havingParameters: {'(Color red alpha: 0.05)'}}}
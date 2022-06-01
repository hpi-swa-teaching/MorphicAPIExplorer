constants
categoryDrawingAndStyling

	^ MEXCategory 
		newWithName: 'Drawing & Styling' 
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
						havingParameters: {'morph cornerStyle: rounded'} .
					MEXMethod
						newWithName: 'color:'
						havingParameters: {'morph color: Color white'} .
					MEXMethod newWithName: 'morph addDropShadow' .
					MEXMethod 
						newWithName: 'shadowPoint:' 
						havingParameters: {'morph shadowPoint: 30 @ 25'}
						withDependencies: {'addDropShadow'} .
					MEXMethod 
						newWithName: 'shadowColor:' 
						havingParameters: {'morph shadowColor: (Color red alpha: 0.05)'}
						withDependencies: {'addDropShadow'}}}
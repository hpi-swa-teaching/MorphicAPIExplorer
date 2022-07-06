constants
categoryTransforming

	^ MEXCategory 
		newWithName: 'Transforming' 
		havingImage: (MEXToolOverView buildCategoryimageWith: 'Transforming')
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'Rotating'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'rotationDegrees:'
						havingParameters: {'morph rotationDegrees: 45'}.
				   MEXMethod 
						newWithName: 'rotationCenter topLeft'
						havingParameters: {'morph rotationCenter: (0@0)'}. 
				   MEXMethod 
						newWithName: 'rotationCenter bottomRight'
						havingParameters: {'morph rotationCenter: (1@1)'}} .
			MEXMethod
				newWithName: 'Scaling'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'bounds:'
						havingParameters: {'morph bounds: (Rectangle new setOrigin: playground center + (0 @ 0) corner: playground center + (100 @ 150))'} .
					MEXMethod 
						newWithName: 'extent:'
						havingParameters: {'morph extent: 100 @ 100'}}}
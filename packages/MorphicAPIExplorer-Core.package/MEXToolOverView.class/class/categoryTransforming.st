constants
categoryTransforming

	^ MEXCategory 
		newNamed: 'Transforming' 
		havingImage: MEXScalableImageMorph new
		withMethodList: {
				MEXMethod
					withName: 'Rotating'
					havingSubMethods: {
						MEXMethod withName: 'angle:'.
						MEXMethod withName: 'rotationDegrees:'
					}.
				MEXMethod
					withName: 'Scaling'
					havingSubMethods: {
						MEXMethod withName: 'scale:'.
						MEXMethod withName: 'extent:'
					}
		}
constants
categoryDrawingAndStyling

	^ MEXCategory 
		newNamed: 'Drawing & Styling' 
		havingImage: MEXScalableImageMorph new
		withMethodList: {
				MEXMethod 
					withName: 'Drawing' 
					havingSubMethods: {
						MEXMethod withName: 'drawOn:'
					}.
				MEXMethod 
					withName: 'Styling' 
					havingSubMethods: {
						MEXMethod withName: 'cornerStyle:'.
						MEXMethod withName: 'color:'.
						MEXMethod withName: 'addDropShadow'
					}
		}			
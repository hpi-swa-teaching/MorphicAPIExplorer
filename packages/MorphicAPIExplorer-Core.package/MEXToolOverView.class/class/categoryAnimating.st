constants
categoryAnimating

	^ MEXCategory 
			newNamed: 'Animating'
			havingImage: (ImageMorph new
				image: (Form fromFileNamed: 'C:\Users\lkohl\Downloads\grumpyNopeSmall.jpg')) 
			withMethodList: {
				MEXMethod 
					withName: 'Stepping' 
					havingSubMethods: {
						MEXMethod withName: 'startStepping:at:arguments:stepTime:'.
						MEXMethod withName: 'startStepping'
					}.
				MEXMethod 
					withName: 'Cursor blinking' 
					havingSubMethods: {
						MEXMethod withName: 'startBlinking'
					}
		}
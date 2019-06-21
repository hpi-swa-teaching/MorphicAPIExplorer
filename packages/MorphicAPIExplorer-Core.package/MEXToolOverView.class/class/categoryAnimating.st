constants
categoryAnimating

	^ MEXCategory 
			newNamed: 'Animating'
			havingImage: (MEXScalableImageMorph
				newWithImage: MEXResources overviewImageAnimating
				havingExtent: self defaultButtonImageExtent)
			havingDefaultMorph: Morph new
			withMethodList: {
				MEXMethod 
					withName: 'Stepping' 
					havingSubMethods: {
						MEXMethod withName: 'startStepping:at:arguments:stepTime:' havingParameters: {#stepAt: . Time millisecondClockValue . nil . 500}.
						MEXMethod withName: 'startStepping'
					}.
				MEXMethod 
					withName: 'Cursor blinking' 
					havingSubMethods: {
						MEXMethod withName: 'startBlinking'
					}
		}
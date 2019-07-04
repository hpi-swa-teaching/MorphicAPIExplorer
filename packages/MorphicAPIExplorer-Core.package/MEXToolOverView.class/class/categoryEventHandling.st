constants
categoryEventHandling

	^ MEXCategory 
		newNamed: 'Event Handling' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageEventHandling
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod
					withName: 'Keyboard Events'
					havingSubMethods: {
						MEXMethod withName: 'hasKeyboardFocus'.
						MEXMethod 
							withName: 'wantsKeyboardFocusFor:'
							havingParameters: {'Morph new'}.
						MEXMethod 
							withName: 'newKeyboardFocus:'
							havingParameters: {'Morph new'}.						
						MEXMethod withName: 'releaseKeyboardFocus'.
						MEXMethod 
							withName: 'handleKeyDown:'
							havingParameters: {'(KeyboardEvent type: #keyDown readFrom: aStream)'}
					}.
				MEXMethod
					withName: 'Mouse Events'
					havingSubMethods: {
						MEXMethod withName: 'hasMouseFocus'.
						MEXMethod 
							withName: 'newMouseFocus:'
							havingParameters: {'Morph new'}.
						MEXMethod withName: 'releaseMouseFocus'.
						MEXMethod 
							withName: 'handleMouseDown:'
							havingParameters: {'(MouseButtonEvent type: #mouseDown readFrom: aStream)'}
					}
		}
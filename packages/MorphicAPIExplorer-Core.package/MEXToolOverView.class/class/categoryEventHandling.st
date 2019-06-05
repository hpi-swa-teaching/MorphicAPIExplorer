constants
categoryEventHandling

	^ MEXCategory 
		newNamed: 'Event Handling' 
		havingImage: MEXScalableImageMorph new
		withMethodList: {
				MEXMethod
					withName: 'Keyboard Events'
					havingSubMethods: {
						MEXMethod withName: 'hasKeyboardFocus'.
						MEXMethod withName: 'wantsKeyboardFocusFor:'.
						MEXMethod withName: 'newKeyboardFocus:'.
						MEXMethod withName: 'releaseKeyboardFocus'.
						MEXMethod withName: 'handleKeyDown:'
					}.
				MEXMethod
					withName: 'Mouse Events'
					havingSubMethods: {
						MEXMethod withName: 'hasMouseFocus'.
						MEXMethod withName: 'newMouseFocus:'.
						MEXMethod withName: 'releaseMouseFocus'.
						MEXMethod withName: 'handleMouseDown:'
					}
		}
constants
categoryNestingAndSubmorphing

	^ MEXCategory 
		newNamed: 'Nesting & Submorphing' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageNestingAndSubmorphing
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod 
					withName: 'Positioning' 
					havingSubMethods: {
						MEXMethod 
							withName: 'bottom:'
							havingParameters: {'250'} asOrderedCollection.
						MEXMethod 
							withName: 'bounds:'
							havingParameters: {'(Rectangle new origin: 0@0 corner: 100@100)'} asOrderedCollection
					}.
				MEXMethod
					withName: 'Layering'
					havingSubMethods: {
						MEXMethod 
							withName: 'addMorph:'
							havingParameters: {'Morph new'} asOrderedCollection.
						MEXMethod withName: 'goBehind'
					}
		}			
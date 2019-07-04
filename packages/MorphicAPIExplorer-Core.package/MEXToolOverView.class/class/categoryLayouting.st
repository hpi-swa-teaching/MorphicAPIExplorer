constants
categoryLayouting

	^ MEXCategory 
		newNamed: 'Layouting' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageLayouting
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
				MEXMethod
					withName: 'General Layouting'
					havingSubMethods: {
						MEXMethod 
							withName: 'layoutFrame:'
							havingParameters: {'(LayoutFrame new leftFraction: 0; topFraction: 0; rightFraction: 0.5; bottomFraction: 0.5)'} asOrderedCollection
					}.
				MEXMethod
					withName: 'Table Layouting'
					havingSubMethods: {
						MEXMethod 
							withName: 'listDirection:'
							havingParameters: {'#topToBottom'} asOrderedCollection.
						MEXMethod 
							withName: 'wrapDirection:'
							havingParameters: {'#leftToRight'} asOrderedCollection.
						MEXMethod 
							withName: 'wrapCentering:'
							havingParameters: {'#center'} asOrderedCollection.
						MEXMethod 
							withName: 'minCellSize:'
							havingParameters: {'100'} asOrderedCollection
					}
		}
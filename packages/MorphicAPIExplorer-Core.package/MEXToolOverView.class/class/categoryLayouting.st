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
						MEXMethod withName: 'layoutFrame:'.
						MEXMethod withName: 'layoutPolicy:'
					}.
				MEXMethod
					withName: 'Table Layouting'
					havingSubMethods: {
						MEXMethod withName: 'listDirection:'.
						MEXMethod withName: 'wrapDirection:'.
						MEXMethod withName: 'wrapCentering:'.
						MEXMethod withName: 'minCellSize:'
					}
		}
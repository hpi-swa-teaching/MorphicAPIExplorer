constants
categoryLayouting

	^ MEXCategory 
		newNamed: 'Layouting' 
		havingImage: ImageMorph new 
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
constants
categoryBuildingAndTearingDown

	^ MEXCategory 
		newNamed: 'Building & Tearing down' 
		havingImage: ImageMorph new 
		withMethodList: {
				MEXMethod 
					withName: 'Displaying' 
					havingSubMethods: {
						MEXMethod withName: 'openInWorld'.
						MEXMethod withName: 'openCenteredInWorld'
					}.
				MEXMethod 
					withName: 'Tearing down' 
					havingSubMethods: {
						MEXMethod withName: 'removeAllMorphs'.
						MEXMethod withName: 'delete'.
						MEXMethod withName: 'abandon'
					}
		}			
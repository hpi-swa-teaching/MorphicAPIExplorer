constants
categoryBuildingAndTearingDown

	^ MEXCategory 
		newNamed: 'Building & Tearing down' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageBuildingAndTearingDown
			havingExtent: self defaultButtonImageExtent)
		withMethodList: {
				MEXMethod 
					withName: 'Building' 
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
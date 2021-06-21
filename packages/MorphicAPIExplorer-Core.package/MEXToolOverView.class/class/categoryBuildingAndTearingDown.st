constants
categoryBuildingAndTearingDown

	^ MEXCategory 
		newNamed: 'Building & Tearing down' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageBuildingAndTearingDown
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Displaying' 
				havingSubMethods: {
					MEXMethod newWithName: 'openInWorld'.
					MEXMethod newWithName: 'openCenteredInWorld'}.
			MEXMethod 
				newWithName: 'Tearing down' 
				havingSubMethods: {
					MEXMethod newWithName: 'removeAllMorphs'.
					MEXMethod newWithName: 'delete'.
					MEXMethod newWithName: 'abandon'}}			
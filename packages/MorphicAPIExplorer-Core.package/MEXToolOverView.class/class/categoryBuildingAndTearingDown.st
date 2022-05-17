constants
categoryBuildingAndTearingDown

	^ MEXCategory 
		newWithName: 'Building & Tearing down' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageBuildingAndTearingDown
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Displaying' 
				havingSubMethods: {
					MEXMethod newWithName: 'morph openInWorld' .
					MEXMethod newWithName: 'morph openCenteredInWorld'} .
			MEXMethod 
				newWithName: 'Tearing down' 
				havingSubMethods: {
					MEXMethod newWithName: 'morph removeAllMorphs' .
					MEXMethod newWithName: 'morph delete' .
					MEXMethod newWithName: 'morph abandon'}}			
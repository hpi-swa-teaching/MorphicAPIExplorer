constants
categoryBuildingAndTearingDown

	^ MEXCategory 
		newWithName: 'Building & Tearing down' 
		havingImage: (MEXToolOverView buildCategoryimageWith: 'Building & Tearing down')
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
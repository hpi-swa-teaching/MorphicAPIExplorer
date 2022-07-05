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
					MEXMethod newWithName: 'openInWorld' 
					havingParameters: {'"morph openInWorld opens the morph in the world"'} asOrderedCollection .
					MEXMethod newWithName: 'openCenteredInWorld' 
					havingParameters: {'"morph openCenteredInWorld opens the morph in the center of the world"'} asOrderedCollection} .
			MEXMethod 
				newWithName: 'Tearing down' 
				havingSubMethods: {
					MEXMethod newWithName: 'morph removeAllMorphs' .
					MEXMethod newWithName: 'morph delete' .
					MEXMethod newWithName: 'morph abandon'}}			
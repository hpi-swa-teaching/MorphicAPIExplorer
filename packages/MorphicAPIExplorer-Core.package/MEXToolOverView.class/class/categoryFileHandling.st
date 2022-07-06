constants
categoryFileHandling

	^ MEXCategory 
		newWithName: 'File Handling' 
		havingImage: (MEXToolOverView buildCategoryimageWith: 'File Handling')
		havingDefaultMorph: ImageMorph new
		withMethodList: {
			MEXMethod
				newWithName: 'Images'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'setNewImageFrom:'
						havingParameters: {'morph setNewImageFrom: (MEXResources overviewImageFileHandling scaledToSize: 300 @ 300)'} .
					MEXMethod newWithName: 'readFromFile' havingParameters: {'morph readFromFile'}.
					MEXMethod 
						newWithName: 'image:'
						havingParameters: {'morph image: (MEXResources overviewImageFileHandling scaledToSize: 300 @ 300)'}.
					MEXMethod 
						newWithName: 'Drag&Drop Filehandling'
						havingParameters: {'"Try dropping a morph in the playground"'}}}
constants
categoryFileHandling

	^ MEXCategory 
		newWithName: 'File Handling' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageFileHandling
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: ImageMorph new
		withMethodList: {
			MEXMethod
				newWithName: 'Images'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'setNewImageFrom:'
						havingParameters: {'morph setNewImageFrom: (MEXResources overviewImageFileHandling scaledToSize: 300 @ 300)'} .
					MEXMethod newWithName: 'readFromFile'.
					MEXMethod 
						newWithName: 'image:'
						havingParameters: {'morph image: (MEXResources overviewImageFileHandling scaledToSize: 300 @ 300)'}}}
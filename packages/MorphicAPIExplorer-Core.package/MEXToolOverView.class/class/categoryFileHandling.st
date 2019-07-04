constants
categoryFileHandling

	^ MEXCategory 
		newNamed: 'File Handling' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageFileHandling
			havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: ImageMorph new
		withMethodList: {
				MEXMethod
					withName: 'Images'
					havingSubMethods: {
						MEXMethod 
							withName: 'setNewImageFrom:'
							havingParameters: {'MEXResources overviewImageFileHandling'} asOrderedCollection.
						MEXMethod withName: 'readFromFile'.
						MEXMethod 
							withName: 'image:'
							havingParameters: {'MEXResources overviewImageFileHandling'} asOrderedCollection
					}
		}
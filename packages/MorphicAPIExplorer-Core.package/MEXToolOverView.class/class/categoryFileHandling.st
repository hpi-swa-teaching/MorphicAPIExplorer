constants
categoryFileHandling

	^ MEXCategory 
		newNamed: 'File Handling' 
		havingImage: (MEXScalableImageMorph
			newWithImage: MEXResources overviewImageFileHandling
			havingExtent: self defaultButtonImageExtent)
		withMethodList: {
				MEXMethod
					withName: 'Images'
					havingSubMethods: {
						MEXMethod withName: 'setNewImageFrom:'.
						MEXMethod withName: 'readFromFile'.
						MEXMethod withName: 'image:'
					}
		}
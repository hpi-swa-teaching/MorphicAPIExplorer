constants
categoryFileHandling

	^ MEXCategory 
		newNamed: 'File Handling' 
		havingImage: MEXScalableImageMorph new
		withMethodList: {
				MEXMethod
					withName: 'Images'
					havingSubMethods: {
						MEXMethod withName: 'setNewImageFrom:'.
						MEXMethod withName: 'readFromFile'.
						MEXMethod withName: 'image:'
					}
		}
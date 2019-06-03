constants
categoryFileHandling

	^ MEXCategory 
		newNamed: 'File Handling' 
		havingImage: ImageMorph new 
		withMethodList: {
				MEXMethod
					withName: 'Images'
					havingSubMethods: {
						MEXMethod withName: 'setNewImageFrom:'.
						MEXMethod withName: 'readFromFile'.
						MEXMethod withName: 'image:'
					}
		}
running
createCategory
	
	^ MEXCategory 
		newNamed: 'TestCategory' 
		havingImage: ImageMorph new 
		havingDefaultMorph: ImageMorph new
		withMethodList: {
			MEXMethod withName: 'drawOn:'.
			MEXMethod withName: 'color:'.
			MEXMethod withName: 'cornerStyle:'
		}
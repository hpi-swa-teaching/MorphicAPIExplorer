running
createCategory
	
	^ MEXCategory 
		newNamed: 'TestCategory' 
		havingImage: ImageMorph new 
		havingDefaultMorph: ImageMorph new
		withMethodList: {
			MEXMethod withName: 'drawOn:' havingParameters: {'aCanvas'}.
			MEXMethod withName: 'startStepping'.
			MEXMethod withName: 'cornerStyle:and:' havingParameters: {'rounded' . 'cool'}
		}
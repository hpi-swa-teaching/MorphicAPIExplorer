running
createCategory

	^ MEXCategory 
			newNamed: 'TestCategory' 
			havingImage: nil 
			havingDefaultMorph: ImageMorph new 
			withMethodList: {
				MEXMethod withName: 'color:' havingParameters: {'Color red'}.
				MEXMethod withName: 'addDropShadow'.
				MEXMethod withName: 'extent:' havingParameters: {'100 @ 100'}}
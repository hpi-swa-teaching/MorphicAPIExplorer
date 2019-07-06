running
createCategory
	
	^ MEXCategory 
		newNamed: 'TestCategory' 
		havingImage: Morph new 
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod withName: 'color:' havingParameters: {'Color red'}.
			MEXMethod withName: 'addDropShadow'.
			MEXMethod withName: 'extent:' havingParameters: {'100@100'}
		}
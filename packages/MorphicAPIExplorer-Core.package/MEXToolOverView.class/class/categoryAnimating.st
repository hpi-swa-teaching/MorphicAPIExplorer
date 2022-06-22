constants
categoryAnimating

	^ MEXCategory 
		newWithName: 'Animating'
		havingImage: (MEXToolOverView buildCategoryimageWith: 'Animating')
		havingDefaultMorph: LedTimerMorph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Stepping' 
				havingSubMethods: {
					MEXMethod newWithName: 'start' havingParameters: {' morph start "the time can be adjusted in the class with steptime" '} .
					MEXMethod newWithName: 'morph stop'}}
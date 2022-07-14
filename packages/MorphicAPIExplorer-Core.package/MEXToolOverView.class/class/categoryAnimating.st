constants
categoryAnimating

	^ MEXCategory 
		newWithName: 'Animating'
		havingDifficulty: 'medium' 
		havingImage: (MEXToolOverView buildCategoryimageWithName: 'Animating' withDifficulty: 'medium')
		havingDefaultMorph: LedTimerMorph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Stepping' 
				havingSubMethods: {
					MEXMethod newWithName: 'start' havingParameters: {' morph start "the time can be adjusted in the class with steptime" '} .
					MEXMethod newWithName: 'morph stop'}}
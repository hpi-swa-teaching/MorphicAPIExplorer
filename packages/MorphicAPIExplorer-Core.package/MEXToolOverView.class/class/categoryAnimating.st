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
					MEXMethod newWithName: ' morph start' .
					MEXMethod newWithName: 'morph stop'}}
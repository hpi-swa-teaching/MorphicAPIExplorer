constants
categoryEventHandling

	^ MEXCategory 
		newWithName: 'Event Handling' 
		havingDifficulty: 'hard' 
		havingImage: (MEXToolOverView buildCategoryimageWithName: 'Event Handling' withDifficulty: 'hard')
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'Mouse Events'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'addMouseUpActionWith:'
						havingParameters: {'morph addMouseUpActionWith:', $' asString, 'self color: Color random', $' asString}}}
constants
categoryDrawingAndStyling

	^ MEXCategory 
		newWithName: 'Drawing & Styling' 
		havingDifficulty: 'easy' 
		havingImage: (MEXToolOverView buildCategoryimageWithName: 'Drawing & Styling' withDifficulty: 'easy')
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod 
				newWithName: 'Styling' 
				havingSubMethods: {
					MEXMethod 
						newWithName: 'cornerStyle:'
						havingParameters: {'morph cornerStyle: rounded'} .
					MEXMethod
						newWithName: 'color:'
						havingParameters: {'morph color: Color white'} .
					MEXMethod newWithName: 'morph addDropShadow' .
					MEXMethod 
						newWithName: 'shadowPoint:' 
						havingParameters: {'morph shadowPoint: playground center + (30 @ 25)'}
						withDependencies: {'morph addDropShadow'} .
					MEXMethod 
						newWithName: 'shadowColor:' 
						havingParameters: {'morph shadowColor: (Color red alpha: 0.05)'}
						withDependencies: {'morph addDropShadow'}}}
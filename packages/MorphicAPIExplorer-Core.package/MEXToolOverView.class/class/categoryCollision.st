constants
categoryCollision

	^ MEXCategory 
		newWithName: 'Collision'
		havingDifficulty: 'medium' 
		havingImage: (MEXToolOverView buildCategoryimageWithName: 'Collision' withDifficulty: 'medium')
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod 
				newWithName: 'setup' 
				havingSubMethods: {
					MEXMethod newWithName: 'secondmorph' 
									 havingParameters: {'morph addMorph: (Morph new color: Color yellow; extent: 20 @ 20; position: morph position)' }.
					MEXMethod newWithName: 'secondmorph move' 
									 havingParameters: {'morph submorphsDo: ([:each | each position: morph position + (50 @ 50)])' }
									withDependencies: {'secondmorph'}.
					MEXMethod newWithName: 'collision' 
									 havingParameters: {'morph submorphsDo: ([:each | (each bounds intersects: morph bounds) ifTrue: [each color: Color green.] ifFalse: [each color: Color red.]] ) ' }
									withDependencies: {'secondmorph'}				
									}}
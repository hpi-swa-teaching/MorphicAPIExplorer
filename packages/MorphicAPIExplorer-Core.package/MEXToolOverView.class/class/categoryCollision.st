constants
categoryCollision

	^ MEXCategory 
		newWithName: 'Collision'
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageCollision
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod 
				newWithName: 'setup' 
				havingSubMethods: {
					MEXMethod newWithName: 'secondmorph' 
									 havingParameters: {'morph addMorph: (Morph new color: Color yellow; extent: 20 @ 20)' }.
					MEXMethod newWithName: 'secondmorph move' 
									 havingParameters: {'morph submorphsDo: ([:each | each position: 50 @ 50])' }
									withDependencies: {'secondmorph'}.
					MEXMethod newWithName: 'collision' 
									 havingParameters: {'morph submorphsDo: ([:each | (each bounds intersects: morph bounds) ifTrue: [each color: Color green.] ifFalse: [each color: Color red.]] ) ' }
									withDependencies: {'secondmorph'}				
									}}
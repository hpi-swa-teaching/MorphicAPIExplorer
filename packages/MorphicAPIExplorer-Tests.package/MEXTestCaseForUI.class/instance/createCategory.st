running
createCategory

	^ MEXCategory 
			newNamed: 'TestCategory' 
			havingImage: nil 
			havingDefaultMorph: Morph new 
			withMethodList: {
				MEXMethod newWithName: 'color:' havingParameters: {'Color red'} .
				MEXMethod newWithName: 'addDropShadow' .
				MEXMethod newWithName: 'extent:' havingParameters: {'100 @ 100'} .
				MEXMethod newWithName: 'shadowColor:' havingParameters: {'Color red'} withDependencies: {'addDropShadow'} .
				MEXMethod newWithName: 'shadowColor' withDependencies: {'addDropShadow'} .
				MEXMethod
                	newWithName: 'step'
                	havingSubMethods: {
                 		MEXMethod 
                   	     	newWithName: 'addMouseUpActionWith:'
                        	havingParameters: {$' asString,  'self color: Color random' , $' asString}}}
				

running
createCategory

	^ MEXCategory 
			newWithName: 'TestCategory' 
			havingImage: nil 
			havingDefaultMorph: Morph new 
			withMethodList: {
				MEXMethod newWithName: 'color:' havingParameters: {'morph color: Color red'} .
				MEXMethod newWithName: 'addDropShadow' havingParameters: {'morph addDropShadow'}.
				MEXMethod newWithName: 'extent:' havingParameters: {'morph extent: 100 @ 100'} .
				MEXMethod newWithName: 'shadowColor:' havingParameters: {'morph shadowColor: Color red'} withDependencies: {'addDropShadow'} .
				MEXMethod newWithName: 'shadowColor' withDependencies: {'addDropShadow'} .
				MEXMethod
                	newWithName: 'step'
                	havingSubMethods: {
                 		MEXMethod 
                   	     	newWithName: 'addMouseUpActionWith:'
                        	havingParameters: {$' asString,  'morph addMouseUpActionWith: self color: Color random' , $' asString}}}
				

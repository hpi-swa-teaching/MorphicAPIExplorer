running
createCategory

	^ MEXCategory 
			newNamed: 'TestCategory' 
			havingImage: nil 
			havingDefaultMorph: ImageMorph new 
			withMethodList: {
				MEXMethod withName: 'color:' havingParameters: {'Color red'}.
				MEXMethod withName: 'addDropShadow'.
				MEXMethod withName: 'extent:' havingParameters: {'100 @ 100'}.
				MEXMethod
				withName: 'step'
				havingSubMethods: {
					MEXMethod 
						withName: 'addMouseUpActionWith:'
						havingParameters: {$' asString,  'self color: Color random' , $' asString}}}
						
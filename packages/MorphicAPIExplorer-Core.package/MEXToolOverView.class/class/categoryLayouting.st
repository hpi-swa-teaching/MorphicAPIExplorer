constants
categoryLayouting

	^ MEXCategory 
		newNamed: 'Layouting' 
		havingImage: (
			MEXScalableImageMorph
				newWithImage: MEXResources overviewImageLayouting
				havingExtent: self defaultButtonImageExtent)
		havingDefaultMorph: RectangleMorph new
		withMethodList: {
			MEXMethod
				withName: 'Layout Policy Setup'
				havingSubMethods: {
					MEXMethod 
						withName: 'layoutPolicy:'
						havingParameters: {'TableLayout new'} asOrderedCollection}.
			MEXMethod
				withName: 'Table Layouting'
				havingSubMethods: {
					MEXMethod 
						withName: 'listDirection:'
						havingParameters: {'#leftToRight'} asOrderedCollection.
					MEXMethod 
						withName: 'vResizing:'
						havingParameters: {'#shrinkWrap'} asOrderedCollection.
					MEXMethod 
						withName: 'hResizing:'
						havingParameters: {'#shrinkWrap'} asOrderedCollection.
					MEXMethod 
						withName: 'minCellSize:'
						havingParameters: {'100'} asOrderedCollection}.
			MEXMethod
				withName: 'Adding Submorphs to see results'
				havingSubMethods: {
					MEXMethod
						withName: 'addMorph:'
						havingParameters: {'(EllipseMorph new color: (Color orange))'} asOrderedCollection.
					MEXMethod
						withName: 'addMorph:'
						havingParameters: {'(EllipseMorph new color: (Color blue))'} asOrderedCollection}}
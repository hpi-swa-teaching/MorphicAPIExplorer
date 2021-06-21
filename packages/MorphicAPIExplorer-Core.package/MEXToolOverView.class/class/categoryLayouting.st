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
				newWithName: 'Layout Policy Setup'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'layoutPolicy:'
						havingParameters: {'TableLayout new'} asOrderedCollection
						withDependencies: {'addMorph:'}}.
			MEXMethod
				newWithName: 'Table Layouting'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'listDirection:'
						havingParameters: {'#leftToRight'} asOrderedCollection
						withDependencies: {'layoutPolicy:'}.
					MEXMethod 
						newWithName: 'vResizing:'
						havingParameters: {'#shrinkWrap'} asOrderedCollection
						withDependencies: {'layoutPolicy:'}.
					MEXMethod 
						newWithName: 'hResizing:'
						havingParameters: {'#shrinkWrap'} asOrderedCollection
						withDependencies: {'layoutPolicy:'}.
					MEXMethod 
						newWithName: 'minCellSize:'
						havingParameters: {'100'} asOrderedCollection
						withDependencies: {'layoutPolicy:'}}.
			MEXMethod
				newWithName: 'Adding Submorphs to see results'
				havingSubMethods: {
					MEXMethod
						newWithName: 'addMorph:'
						havingParameters: {'(EllipseMorph new color: (Color orange))'} asOrderedCollection.
					MEXMethod
						newWithName: 'addMorph:'
						havingParameters: {'(EllipseMorph new color: (Color blue))'} asOrderedCollection}}
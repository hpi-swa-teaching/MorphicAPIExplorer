constants
categoryLuBoxTest

	^ MEXCategory 
		newWithName: 'LuBoxTest' 
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
						havingParameters: {'morph layoutPolicy: TableLayout new'} asOrderedCollection
						withDependencies: {'addMorph:'}
						withInhibitors: {'hResizing:'}}.
			MEXMethod
				newWithName: 'Table Layouting'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'listDirection:'
						havingParameters: {'morph listDirection: #leftToRight'} asOrderedCollection
						withDependencies: {'layoutPolicy:'} .
					MEXMethod 
						newWithName: 'vResizing:'
						havingParameters: {'morph vResizing: #shrinkWrap'} asOrderedCollection
						withDependencies: {'layoutPolicy:'} .
					MEXMethod 
						newWithName: 'hResizing:'
						havingParameters: {'morph hResizing: #shrinkWrap'} asOrderedCollection
						withDependencies: {'layoutPolicy:'} .
					MEXMethod 
						newWithName: 'minCellSize:'
						havingParameters: {'morph minCellSize: 100'} asOrderedCollection
						withDependencies: {'layoutPolicy:'}} .
			MEXMethod
				newWithName: 'Adding Submorphs to see results'
				havingSubMethods: {
					MEXMethod
						newWithName: 'addMorph:'
						havingParameters: {'morph addMorph: (EllipseMorph new color: (Color orange))'} asOrderedCollection .
					MEXMethod
						newWithName: 'addMorph:'
						havingParameters: {'morph addMorph: (EllipseMorph new color: (Color blue))'} asOrderedCollection}}
constants
categoryLayouting

	^ MEXCategory 
		newWithName: 'Layouting' 
		havingImage: (MEXToolOverView buildCategoryimageWith: 'Layouting')
		havingDefaultMorph: RectangleMorph new
		withMethodList: {
			MEXMethod
				newWithName: 'Layout Policy Setup'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'TableLayout'
						havingParameters: {'morph layoutPolicy: TableLayout new'} asOrderedCollection
						withDependencies: {'addOrange'.'addBlue'}
						withInhibitors: {'ProportionalLayout'} .
						MEXMethod 
						newWithName: 'ProportionalLayout'
						havingParameters: {'morph layoutPolicy: ProportionalLayout new'} asOrderedCollection
						withDependencies: {'addOrange'.'addBlue'}
						withInhibitors: {'TableLayout'}} .
			MEXMethod
				newWithName: 'Table Layouting'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'listDirection:'
						havingParameters: {'morph listDirection: leftToRight'} asOrderedCollection
						withDependencies: {'TableLayout'} .
					MEXMethod 
						newWithName: 'vResizing:'
						havingParameters: {'morph vResizing: #shrinkWrap'} asOrderedCollection
						withDependencies: {'TableLayout'} .
					MEXMethod 
						newWithName: 'hResizing:'
						havingParameters: {'morph hResizing: #shrinkWrap'} asOrderedCollection
						withDependencies: {'TableLayout'} .
					MEXMethod 
						newWithName: 'minCellSize:'
						havingParameters: {'morph minCellSize: 100'} asOrderedCollection
						withDependencies: {'TableLayout'}} .
			MEXMethod
				newWithName: 'Adding Submorphs to see results'
				havingSubMethods: {
					MEXMethod
						newWithName: 'addOrange'
						havingParameters: {'morph addMorph: (EllipseMorph new color: (Color orange); position: morph position)'} asOrderedCollection .
					MEXMethod
						newWithName: 'addBlue'
						havingParameters: {'morph addMorph: (EllipseMorph new color: (Color blue); position: morph position; layoutFrame: (LayoutFrame new leftFraction: 1/2 offset: 10; topFraction: 1/2))'} asOrderedCollection . 
					MEXMethod 
						newWithName: 'increase size' 
						havingParameters: {'morph extent: 100@100'} asOrderedCollection 	
						}}
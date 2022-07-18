constants
categoryEventHandling

	^ MEXCategory 
		newWithName: 'Event Handling' 
		havingDifficulty: 'hard' 
		havingImage: (MEXToolOverView buildCategoryimageWithName: 'Event Handling' withDifficulty: 'hard')
		havingDefaultMorph: Morph new
		withMethodList: {
			MEXMethod
				newWithName: 'Mouse Events'
				havingSubMethods: {
					MEXMethod 
						newWithName: 'addMouseUpActionWith:'
						havingParameters: {'morph addMouseUpActionWith:', $' asString, 'self color: Color random', $' asString}}.
			MEXMethod 
				newWithName: 'Event Handler' 
				havingSubMethods: {
					MEXMethod 
						newWithName: 'add an Event to Morph' 
						havingParameters: {'morph on: #mouseDown send: #abandon to: morph'} . 
					MEXMethod 
						newWithName: 'Event with custom Value' 
						havingParameters: {'"with the method on: send: to: withValue: a custom Value can be send to the receiving method"' ,Character cr, 
						'"The receiving method has to take 3 Arguments, first of which will be the withValue: second of which the event and thrid the morph"'} asOrderedCollection.
						
				}}
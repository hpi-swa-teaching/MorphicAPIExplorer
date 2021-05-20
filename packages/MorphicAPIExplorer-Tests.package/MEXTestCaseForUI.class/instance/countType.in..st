running
countType: aType in: aCollection 

	^ aCollection inject: 0 into: [:sum :each | aType == each class ifTrue: [sum = sum +1]]

	


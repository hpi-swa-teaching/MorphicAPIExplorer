running
countType: aType in: aCollection 

	^ aCollection inject: 0 into: [:sum :anElement | aType = anElement class ifTrue: [sum + 1] ifFalse: [sum]]

	


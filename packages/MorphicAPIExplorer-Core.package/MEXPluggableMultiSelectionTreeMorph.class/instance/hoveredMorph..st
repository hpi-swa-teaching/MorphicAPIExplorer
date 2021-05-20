selection
hoveredMorph: aMorph
	
	hoveredMorph == aMorph ifTrue: [^ self].
	
	hoveredMorph ifNotNil: [:m | m changed.
								m complexContents deactivate].
	hoveredMorph := aMorph.
	hoveredMorph ifNotNil: [:m | m changed.
								m complexContents activate].	
							
	self submorphsDo: [:aSubMorph | aSubMorph submorphsDo: [:anotherSubmorph | anotherSubmorph refresh] ].
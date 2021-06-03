accessing
hoveredMorph: aMorph
	
	hoveredMorph == aMorph ifTrue: [^ self].
	hoveredMorph ifNotNil: [:theMorph | theMorph changed].
	hoveredMorph := aMorph.
	hoveredMorph ifNotNil: [:theMorph | theMorph changed].	
	self findRelatedSelector ifNotNil: [:theSymbol | self update: theSymbol]
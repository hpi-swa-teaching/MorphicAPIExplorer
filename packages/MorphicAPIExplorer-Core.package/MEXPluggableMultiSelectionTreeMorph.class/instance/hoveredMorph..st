accessing
hoveredMorph: aMorph
	
	hoveredMorph == aMorph ifTrue: [^ self].
	hoveredMorph ifNotNil: [:theMorph | theMorph changed].
	hoveredMorph := aMorph.
	hoveredMorph ifNotNil: [:theMorph | theMorph changed].	
	self update: self getRelatedSelector.
	self update: self getInhibitingSelector.
	self reloadNodeMorphs.
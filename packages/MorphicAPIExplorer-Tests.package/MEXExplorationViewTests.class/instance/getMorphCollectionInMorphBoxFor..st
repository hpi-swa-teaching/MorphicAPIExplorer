tests
getMorphCollectionInMorphBoxFor: anExplorationView

	^ (self getButtonMorphCollectionInMorphBoxFor: anExplorationView) collect: [:each | each submorphs first]
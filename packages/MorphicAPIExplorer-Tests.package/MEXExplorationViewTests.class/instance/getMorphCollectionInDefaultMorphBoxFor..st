tests
getMorphCollectionInDefaultMorphBoxFor: anExplorationView

	^ (self getButtonMorphCollectionInDefaultMorphBoxFor: anExplorationView) collect: [:each | each submorphs first]
tests
getMorphCollectionInMorphBoxFor: anExplorationView

	^ (self getButtonMorphCollectionInMorphBoxFor: anExplorationView) collect: [:aButton| aButton submorphs first]
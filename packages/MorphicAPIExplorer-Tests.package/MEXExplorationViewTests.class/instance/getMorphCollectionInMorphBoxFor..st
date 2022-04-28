tests
getMorphCollectionInMorphBoxFor: aMEXExplorationView

	^ (self getButtonMorphCollectionInMorphBoxFor: aMEXExplorationView) collect: [:each | each submorphs first]
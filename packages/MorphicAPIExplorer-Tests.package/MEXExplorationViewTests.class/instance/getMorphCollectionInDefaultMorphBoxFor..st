tests
getMorphCollectionInDefaultMorphBoxFor: anExplorationView

	^ (anExplorationView submorphs third submorphs select: [:each | each isKindOf: TransformMorph]) first submorphs
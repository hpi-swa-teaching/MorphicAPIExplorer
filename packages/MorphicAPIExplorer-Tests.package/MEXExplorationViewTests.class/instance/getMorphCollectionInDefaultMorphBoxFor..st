tests
getMorphCollectionInDefaultMorphBoxFor: anExplorationView

	^ (anExplorationView submorphs third submorphs select: [:each | each isKindOf: TransformMorph]) first submorphs first submorphs first submorphs collect: [:each | each submorphs first]
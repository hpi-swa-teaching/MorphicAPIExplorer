accessing
findSearchListInDependents

	^ (self dependents select: [:aDependent | aDependent isKindOf: PluggableTreeMorph]) first
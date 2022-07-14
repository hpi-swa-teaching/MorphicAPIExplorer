accessing
findSystemWindowInDependents

	^ (self dependents select: [:aDependent | aDependent isKindOf: MEXPluggableSystemWindow]) first
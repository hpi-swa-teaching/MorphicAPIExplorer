ui
toggleSearchList

	| searchListMorph |
	searchListMorph := (self dependents select: [:each | each isKindOf: PluggableTreeMorph]) first.
	searchListMorph visible: searchListMorph visible not
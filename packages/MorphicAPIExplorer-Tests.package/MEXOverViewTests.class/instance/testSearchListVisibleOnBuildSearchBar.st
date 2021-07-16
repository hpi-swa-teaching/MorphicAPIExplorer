tests
testSearchListVisibleOnBuildSearchBar

	| view searchBar |
	view := builder build: overView.
	searchBar := (view submorphs select: [:aMorph | aMorph class = PluggableTextMorphPlus]) first.
	searchBar setText: 'a'.
	searchBar textEdited: 'a'.
	self assert: overView findSearchListInDependents visible equals: searchBar text notEmpty

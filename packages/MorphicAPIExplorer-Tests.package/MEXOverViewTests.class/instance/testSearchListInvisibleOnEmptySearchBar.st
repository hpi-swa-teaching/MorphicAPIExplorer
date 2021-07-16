tests
testSearchListInvisibleOnEmptySearchBar

	| view searchBar |
	view := builder build: overView.
	searchBar := (view submorphs select: [:aMorph | aMorph class = PluggableTextMorphPlus]) first.
	searchBar setText: ''.
	searchBar textEdited: ''.
	self assert: overView findSearchListInDependents visible equals: searchBar text notEmpty

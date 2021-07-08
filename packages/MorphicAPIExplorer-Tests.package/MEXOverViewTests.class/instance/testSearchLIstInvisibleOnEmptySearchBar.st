tests
testSearchLIstInvisibleOnEmptySearchBar

	| view searchBar |
	view := builder build: overView.
	searchBar := (view submorphs select: [:aMorph | aMorph class = PluggableTextMorphPlus]) first.
	self assert: overView findSearchListInDependents visible equals: searchBar text notEmpty
	


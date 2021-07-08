tests
testSearchBarUpdatesSearchList

	| view searchBar searchList filteredItems |
	view := builder build: overView.
	searchList := overView findSearchListInDependents.
	searchBar := (view submorphs select: [:aMorph | aMorph class = PluggableTextMorphPlus]) first.
	searchBar textEdited: 'b'.
	self halt.
	filteredItems := searchList filteredItems asOrderedCollection.
	filteredItems removeAll: searchList roots.
	self assert: filteredItems notEmpty.
	searchBar textEdited: 'xxx'.
	filteredItems := searchList filteredItems asOrderedCollection.
	filteredItems removeAll: searchList roots.
	self assert: filteredItems isEmpty
	
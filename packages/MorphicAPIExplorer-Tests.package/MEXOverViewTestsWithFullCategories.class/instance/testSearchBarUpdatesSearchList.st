tests
testSearchBarUpdatesSearchList

	| view searchBar searchList |
	view := builder build: overView.
	searchList := overView findSearchListInDependents.
	searchBar := (view submorphs select: [:aMorph | aMorph class = PluggableTextMorphPlus]) first.
	searchBar textEdited: 'b'.
	self assert: (searchList filteredItems reject: [:anItem | searchList roots includes: anItem]) notEmpty.
	searchBar textEdited: 'xyzxyz'.
	self assert: (searchList filteredItems reject: [:anItem | searchList roots includes: anItem]) size equals: (self getTotalMethodCountOfCategories: overView categories)
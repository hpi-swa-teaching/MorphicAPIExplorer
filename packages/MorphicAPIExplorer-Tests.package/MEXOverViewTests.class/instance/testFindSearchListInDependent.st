tests
testFindSearchListInDependent

	| view searchList |
	view := builder build: overView.
	searchList := (view submorphs select: [:aMorph | aMorph class = PluggableTreeMorph]) first.
	self assert: overView findSearchListInDependents equals: searchList
	
	


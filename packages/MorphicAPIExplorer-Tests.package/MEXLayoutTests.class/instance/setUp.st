running
setUp

	overView := MEXToolOverView new.
	builder := MEXToolBuilder new.
	defaultCollectionSize := 20.
	maxTotalRows := 20.
	empty  := OrderedCollection new.
	overView categories: empty.
	full  := OrderedCollection new.
	1 to: defaultCollectionSize do: [:index | full add: MEXCategory new]
	
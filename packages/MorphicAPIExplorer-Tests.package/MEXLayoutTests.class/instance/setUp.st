running
setUp

	overView := MEXToolOverView new.
	toolbuilder := ToolBuilder default.
	defaultCollectionSize := 20.
	maxTotalRows := 20.
	empty  := OrderedCollection new.
	overView categories: empty.
	full  := OrderedCollection new.
	1 to: defaultCollectionSize do: [:index | full add: MEXCategory new]
	
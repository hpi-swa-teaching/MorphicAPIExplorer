running
setUp

	overView := MEXToolOverView new.
	toolbuilder := ToolBuilder default.
	category := MEXCategory new.
	defaultCollectionSize := 20.
	empty  := OrderedCollection new.
	full  := OrderedCollection new.
	1 to: defaultCollectionSize do: [:index | full add: MEXCategory new].
	methods := OrderedCollection new.
	methodWrappers := OrderedCollection new
	
	
	
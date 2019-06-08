running
setUp

	overView := MEXToolOverView new.
	builder := MEXToolBuilder new.
	category := MEXCategory new.
	defaultCollectionSize := 20.
	empty  := OrderedCollection new.
	full  := OrderedCollection new.
	1 to: defaultCollectionSize do: [:index | full add: MEXCategory new].
	methods := OrderedCollection new.
	methodWrappers := OrderedCollection new
	
	
	
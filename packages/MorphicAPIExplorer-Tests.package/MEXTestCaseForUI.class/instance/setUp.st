running
setUp

	builder := MEXToolBuilder new.
	overView := MEXToolOverView new. 
	category := self createCategory.
	overView defaultMorphs add: category defaultMorph -> OrderedCollection new.
	explorationView  := MEXToolExplorationView newFromCategory: category withDefaultMorphs: overView defaultMorphs 
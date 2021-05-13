running
setUp

	builder := MEXToolBuilder new.
	overView := MEXToolOverView new. 
	category := self createCategory.
	explorationView  := MEXToolExplorationView newFromCategory: category withDefaultMorphs: {}
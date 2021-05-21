running
setUp

	builder := MEXToolBuilder new.
	overView := MEXToolOverView new. 
	category := self createCategory.
	explorationView  := MEXToolExplorationView newFromCategory: category withDefaultMorphs: (Dictionary newFromPairs: {category defaultMorph -> {}}) withActualDefaultMorph: category defaultMorph
running
setUp

	builder := MEXToolBuilder new.
	overView := MEXToolOverView new. 
	category := self createCategory.
	overView savedMorphs add: category defaultMorph -> OrderedCollection new.
	explorationView  := MEXToolExplorationView newFromCategory: category withDefaultMorphs: overView savedMorphs withActualDefaultMorph: category defaultMorph
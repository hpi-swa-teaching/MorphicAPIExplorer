private
noteRemovalOfAll: aCollection

	| selectedChildrenMorphs |
	"self halt."
	scroller removeAllMorphsIn: aCollection.
	
	selectedChildrenMorphs := self selectedMorphs select: [:aSelectedMorph | aCollection includes: aSelectedMorph].
	selectedChildrenMorphs do: [:aSelectedChildMorph | self removeFromSelectedMorphs: aSelectedChildMorph". aSelectedChildMorph unhighlight. self changed"].
	"self basicSelectedMorphs: selectedChildrenMorphs"
selection
addToOrRemoveFromSelectedMorphs: aMorph dependingOn: aBoolean

	| selectedMorphsTemp |
	selectedMorphsTemp := self selectedMorphs copy.
	self
		selectedMorphs: (aBoolean
			ifTrue: [selectedMorphsTemp add: aMorph;yourself.]
			ifFalse: [selectedMorphsTemp remove: aMorph;yourself.]);
		listSelectionFor: (aMorph complexContents item) with: aBoolean
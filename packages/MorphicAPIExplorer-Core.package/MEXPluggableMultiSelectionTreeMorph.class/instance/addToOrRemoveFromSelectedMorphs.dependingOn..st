selection
addToOrRemoveFromSelectedMorphs: aMorph dependingOn: aBoolean

	| selectedMorphsTemp |
	selectedMorphsTemp := self selectedMorphs copy.
	self
		selectedMorphs: (aBoolean
			ifTrue: [selectedMorphsTemp add: aMorph.]
			ifFalse: [selectedMorphsTemp remove: aMorph.]);
		listSelectionFor: (aMorph complexContents item) with: aBoolean
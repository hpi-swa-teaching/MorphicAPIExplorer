selection
removeFromSelectedMorphs: aMorph

	| selectedMorphsTemp |
	selectedMorphsTemp := self selectedMorphs copy.
	self
		selectedMorphs: (selectedMorphsTemp remove: aMorph; yourself);
		listSelectionFor: (aMorph complexContents item) with: false
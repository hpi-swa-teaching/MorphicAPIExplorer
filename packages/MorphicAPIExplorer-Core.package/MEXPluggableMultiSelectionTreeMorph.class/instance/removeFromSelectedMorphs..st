selection
removeFromSelectedMorphs: aMorph

	| selectedMorphsTemp |
	selectedMorphsTemp := self selectedMorphs copy.
	self
		setSelectedMorphs: (selectedMorphsTemp remove: aMorph; yourself);
		listSelectionFor: (aMorph complexContents item) with: false
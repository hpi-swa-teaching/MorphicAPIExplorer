selection
addToSelectedMorphs: aMorph

	| selectedMorphsTemp |
	selectedMorphsTemp := self selectedMorphs copy.
	self 
		setSelectedMorphs: (selectedMorphsTemp add: aMorph; yourself);
		listSelectionFor: (aMorph complexContents item) with: true
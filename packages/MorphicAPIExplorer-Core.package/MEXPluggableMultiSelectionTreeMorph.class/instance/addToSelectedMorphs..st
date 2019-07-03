selection
addToSelectedMorphs: aMorph

	| selectedMorphsTemp |
	selectedMorphsTemp := self selectedMorphs copy.
	self 
		selectedMorphs: (selectedMorphsTemp add: aMorph; yourself);
		listSelectionFor: (aMorph complexContents item) with: true
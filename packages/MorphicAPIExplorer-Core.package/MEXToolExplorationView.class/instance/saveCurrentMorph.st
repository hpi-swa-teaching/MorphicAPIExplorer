default morphs
saveCurrentMorph

	self savedMorphs at: self currentMorph veryDeepCopy put: self selectedMethods.
	self updateMorphBox
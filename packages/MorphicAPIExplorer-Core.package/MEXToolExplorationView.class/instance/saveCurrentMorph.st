default morphs
saveCurrentMorph

	self defaultMorphs at: self currentMorph veryDeepCopy put: self selectedMethods.
	self updateMorphBox
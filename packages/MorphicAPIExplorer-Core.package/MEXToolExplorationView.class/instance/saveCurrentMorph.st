default morphs
saveCurrentMorph

	self defaultMorphs at: self defaultMorph veryDeepCopy put: self selectedMethods.
	self updateMorphBox
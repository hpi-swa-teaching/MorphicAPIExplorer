running
newMorphs

	^ World submorphs reject: [:aSubmorph | preTestWindows includes: aSubmorph]
	
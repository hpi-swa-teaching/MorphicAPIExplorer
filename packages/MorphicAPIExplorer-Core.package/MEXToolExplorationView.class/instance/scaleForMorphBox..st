editor and playground and morphBox
scaleForMorphBox: aMorph

	| ratio |
	ratio := aMorph width / aMorph height.
	aMorph 
		height: (aMorph height - self class defaultHeightForMorphBoxMorphs * self class scalingFactorForMorphBoxMorphs + self class defaultHeightForMorphBoxMorphs);
		height: (aMorph height min: self class maximumHeightForMorphBoxMorphs);
		width: (aMorph height * ratio)
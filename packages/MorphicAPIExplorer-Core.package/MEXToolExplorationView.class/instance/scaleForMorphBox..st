editor and playground and morphBox
scaleForMorphBox: aMorph

	| ratio |

	ratio := aMorph width / aMorph height.
	aMorph height: ((aMorph height - self defaultHeightForMorphBoxMorphs) * self scalingFactorForMorphBoxMorphs + self defaultHeightForMorphBoxMorphs).
	aMorph height: (aMorph height min: self maximumHeightForMorphBoxMorphs).
	aMorph width: (aMorph height * ratio)
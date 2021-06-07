layout
specSizePerRowFor: aNumber

	^ (1 / (self specsPerRowFor: aNumber)) @ (1 - self class searchButtonFractionHeight / aNumber)
		
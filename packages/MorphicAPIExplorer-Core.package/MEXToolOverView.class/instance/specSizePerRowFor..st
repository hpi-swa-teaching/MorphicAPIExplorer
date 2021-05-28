layout
specSizePerRowFor: aNumber

	^ (1 / (self specsPerRowFor: aNumber)) @ (1 - self class searchbarFractionHeight / aNumber)
		
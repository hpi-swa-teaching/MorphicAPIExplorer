layout
specSizePerRowFor: aNumber

	aNumber isZero ifTrue: [^ ZeroDivide signal].
	^ (1 / (self specsPerRowFor: aNumber)) @ (1 / aNumber)
		
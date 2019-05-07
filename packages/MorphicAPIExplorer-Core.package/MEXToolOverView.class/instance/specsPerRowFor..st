layout
specsPerRowFor: aNumber

	aNumber isZero ifTrue: [^ ZeroDivide signal].
	^ (self categories size / aNumber) ceiling
		
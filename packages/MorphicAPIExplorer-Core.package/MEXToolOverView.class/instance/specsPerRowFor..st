layout
specsPerRowFor: aNumber

	aNumber isZero ifTrue: [^ ZeroDivide signal].
	self categories isEmpty ifTrue: [^ Error signal].
	^ (self categories size / aNumber) ceiling
		
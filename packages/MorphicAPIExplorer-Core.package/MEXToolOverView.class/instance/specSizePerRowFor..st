layout
specSizePerRowFor: aNumber

	aNumber isZero ifTrue: [^ ZeroDivide signal].
	self categories isEmpty ifTrue: [^ Error signal].
	^ (1 / (self specsPerRowFor: aNumber)) @ (1 / aNumber)
		
graphics
scaleFor: aForm

	self keepRatio
		ifTrue: [^ (self desiredExtent x / aForm extent x) min: (self desiredExtent y / aForm extent y)]
		ifFalse: [^ self desiredExtent / aForm extent]
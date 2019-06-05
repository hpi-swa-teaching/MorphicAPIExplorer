graphics
scaledForm: aForm
	"Simply scales the images to the desired Extent"

	| scale scaledForm |
	self keepRatio
		ifTrue: [scale := (self desiredExtent x / aForm extent x) min: (self desiredExtent y / aForm extent y)]
		ifFalse: [scale := self desiredExtent / aForm extent].
	
	scaledForm := aForm magnify: aForm boundingBox by: scale smoothing: 1.
	
	^ (Form extent: self desiredExtent depth: aForm depth)
		copy: scaledForm boundingBox
		from: scaledForm
		to: ((self desiredExtent - scaledForm extent) / 2)
		rule: 3
graphics
scaledFormFor: aForm

	| scaledForm |
	scaledForm := aForm magnify: aForm boundingBox by: (self scaleFor: aForm) smoothing: 1.
	
	^ (Form extent: self desiredExtent depth: aForm depth)
		copy: scaledForm boundingBox
		from: scaledForm
		to: ((self desiredExtent - scaledForm extent) / 2)
		rule: 3
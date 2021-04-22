graphics
scaledFormFor: aForm

	| scaledForm |
	scaledForm := aForm magnify: aForm boundingBox by: (self scaleFor: aForm) smoothing: self class defaultSmoothing.
	
	^ (Form extent: self desiredExtent depth: aForm depth)
		copy: scaledForm boundingBox
		from: scaledForm
		to: (self scaledPaddingFor: scaledForm)
		rule: self class defaultRule
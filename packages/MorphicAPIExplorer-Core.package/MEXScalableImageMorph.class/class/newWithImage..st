instance creation
newWithImage: aForm

	^ self new
		desiredExtent: aForm extent;
		originalForm: aForm;
		yourself
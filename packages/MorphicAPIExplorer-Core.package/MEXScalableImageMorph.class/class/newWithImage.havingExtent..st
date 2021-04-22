instance creation
newWithImage: aForm havingExtent: aPoint

	^ self new
		desiredExtent: aPoint;
		originalForm: aForm;
		yourself
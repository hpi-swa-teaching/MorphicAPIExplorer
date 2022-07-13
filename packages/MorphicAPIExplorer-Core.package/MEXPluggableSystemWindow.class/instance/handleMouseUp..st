as yet unclassified
handleMouseUp: evt 

	super handleMouseUp: evt .
	(self bounds = self oldbounds) 
			ifFalse: [self model changed: #selectedMethods]
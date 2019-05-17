accessing
methodAt: anIndex

	^ selectedMethods includes: (self methodList at: anIndex ifAbsent: [ ^ false ])
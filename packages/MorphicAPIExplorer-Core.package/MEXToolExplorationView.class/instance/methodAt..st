accessing
methodAt: anIndex

	^ self selectedMethods includes: (self methodList at: anIndex ifAbsent: [^ false])
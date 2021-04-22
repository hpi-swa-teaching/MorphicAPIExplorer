accessing
contents

	^ self item subMethods collect: [:aSubMethod |
		self class 
			withCategory: aSubMethod 
			havingModel: self model 
			havingParent: self]
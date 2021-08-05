accessing
contents

	^ self item subItems collect: [:aSubMethod |
		self class 
			newWithMethod: aSubMethod 
			havingModel: self model 
			havingParent: self]
accessing
contents

	^ self item subItems collect: [:aSubMethod |
		self class 
			newWithCategory: aSubMethod 
			havingModel: self model 
			havingParent: self]
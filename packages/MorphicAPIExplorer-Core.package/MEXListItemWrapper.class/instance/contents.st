accessing
contents

	^ self item subMethods collect: [:aSubMethod |
		self class 
			newWithCategory: aSubMethod 
			havingModel: self model 
			havingParent: self]
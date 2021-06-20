accessing
contents

	^ self item subItems collect: [:aSubItem |
		self class 
			newWithCategory: aSubItem 
			havingModel: self model 
			havingParent: self]
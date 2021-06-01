accessing
contents

	^ self item subItems collect: [:aSubItem |
		self class 
			withCategory: aSubItem 
			havingModel: self model 
			havingParent: self]
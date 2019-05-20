accessing
contents

	^ self item subMethods collect: [ :each |
		self class withCategory: each havingModel: self model havingParent: self]
initialize-release
initialize

	super initialize.
	self categories: self class categories.
	self categories do: [:each |  
  		(each methodList 
		gather: [:method | {method} , method subMethods])
		do: [:method | method category: each]].
	self defaultMorphs: Dictionary new.
	self standardMorphs do: 
		[:each | defaultMorphs add: each -> OrderedCollection new]
	
initialize-release
initialize

	super initialize.

	self categories: self class categories.
	self categories do: [:aCategory |  
  		(aCategory methodList 
		gather: [:aMethod | {aMethod} , aMethod subMethods])
		do: [:method | method category: aCategory]].
	self savedMorphs: Dictionary new.
	self class standardMorphs do: [:aMorph | 
		self savedMorphs add: aMorph -> OrderedCollection new]
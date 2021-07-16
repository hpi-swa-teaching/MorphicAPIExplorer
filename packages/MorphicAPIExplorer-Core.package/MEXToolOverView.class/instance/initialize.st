initialize-release
initialize

	super initialize.
	self categories: self class categories.
	self categories do: [:aCategory |  
  		(aCategory methodList 
		gather: [:aMethod | {aMethod} , aMethod subMethods])
		do: [:method | method category: aCategory]].
	self savedMorphs: Dictionary new.
	self standardMorphs do: 
		[:aMorph | savedMorphs add: aMorph -> OrderedCollection new]
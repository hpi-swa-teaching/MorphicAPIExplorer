running
testDefaultMorphsType: aMorphType in: aMorphMethodDictionary

	aMorphMethodDictionary do: [:key :value | aMorphType == key class ifTrue: [^ true]].
	^ false

	


as yet unclassified
findMethods: aStringCollection

	| aMethodCollection |

	aMethodCollection := OrderedCollection new. 
	self hasSubMethods ifTrue: [
		self subMethods do: [:aMethod | (aStringCollection anySatisfy:
			 [:aString |aString = aMethod name]) ifTrue: 
				[aMethodCollection add: aMethod].
			aMethodCollection addAll: (aMethod findMethods: aStringCollection).
		]].
	^ aMethodCollection
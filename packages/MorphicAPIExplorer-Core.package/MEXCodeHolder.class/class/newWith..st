as yet unclassified
newWith: anObject

	| codeHolder |
	codeHolder := self new
		view: anObject
		yourself.
	codeHolder view addDependent: self.
	^ codeHolder
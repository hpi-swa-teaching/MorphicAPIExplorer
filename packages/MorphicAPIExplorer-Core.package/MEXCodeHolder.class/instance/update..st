style
update: anAspect
	
	anAspect ifNil: [^ self].
	anAspect == #selectedMethods ifTrue: [
		self generateCodeFor: self model defaultMorph with: self model selectedMethods.
	].
	super update: anAspect
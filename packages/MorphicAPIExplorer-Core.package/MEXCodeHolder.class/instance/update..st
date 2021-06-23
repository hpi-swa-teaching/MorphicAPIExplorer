updating
update: anAspect
	
	anAspect ifNil: [^ self].
	
	anAspect == #selectedMethods ifTrue: [self updateCodeForCurrentSelection].
	anAspect == #currentMorph ifTrue: [self updateCodeForCurrentSelection].
	
	super update: anAspect
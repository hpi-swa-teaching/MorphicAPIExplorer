style
update: anAspect
	
	anAspect ifNil: [^ self].
	anAspect == #selectedMethods ifTrue: [ self updateCodeForCurrentSelection ].
	super update: anAspect
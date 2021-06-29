updating
update: anAspect

	anAspect = #() ifTrue: [^ self].
	
	anAspect == self getSelectedSelector
		ifTrue: [self updateGetSelectedSelector. 
			^ self].
		
	anAspect == self setSelectedSelector
		ifTrue: [self updateSetSelectedSelector.
			^ self].
		
	anAspect == self findRelatedSelector
		ifTrue: [self updateFindRelatedSelector.
			^ self].

	super update: anAspect
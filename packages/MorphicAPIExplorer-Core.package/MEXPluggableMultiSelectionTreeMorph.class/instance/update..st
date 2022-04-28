updating
update: anAspect

	anAspect ifNil: [^ self].
	anAspect ifEmpty: [^ self].
	anAspect == self getSelectedSelector
		ifTrue: [
			self updateGetSelectedSelector. 
			^ self].	
	anAspect == self setStateOfRelatedSelector
		ifTrue: [
			self updateSetStateOfRelatedSelector. 
			^ self].	
	anAspect == self setSelectedSelector
		ifTrue: [
			self updateSetSelectedSelector.
			^ self].	
	anAspect == self getRelatedSelector
		ifTrue: [
			self updateFindRelatedSelector.
			^ self].

	super update: anAspect

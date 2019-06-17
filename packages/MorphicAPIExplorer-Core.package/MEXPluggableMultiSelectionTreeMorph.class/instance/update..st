updating
update: anAspect
"self halt."
	anAspect ifNil: [^ self].

	anAspect == self getSelectedPathsSelector
		ifTrue: [
			^ self
				selectPath: (model perform: self getSelectedPathsSelector) in: (self items at: 1 ifAbsent: [^ self]);
				yourself
		].
	
	anAspect == self getSelectedSelector
		ifTrue: [
			self halt.
			self items do: [:item | model perform: self getSelectedSelector with: (self items indexOf: item)].
			^self].
		
	anAspect == self setSelectedParentsSelector
		ifTrue: [
			].

	super update: anAspect
updating
update: anAspect

	anAspect ifNil: [^ self].

	anAspect == self getSelectedPathsSelector
		ifTrue: [
			^ self
				selectPath: (model perform: self getSelectedPathsSelector) in: (self items at: 1 ifAbsent: [^ self]);
				yourself].
	
	anAspect == self getSelectedSelector
		ifTrue: [
			self items do: [:item | model perform: self getSelectedSelector with: item].
			^ self].
		
	anAspect == self setSelectedSelector
		ifTrue: [
			self items do: [:item | model perform: self setSelectedSelector with: item with: item isSelected]].

	super update: anAspect
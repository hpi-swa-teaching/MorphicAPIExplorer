updating
update: aSymbol

	aSymbol ifNil: [^ self].
	aSymbol == self getRootsSelector
		ifTrue: [
			^ self
				wrapRoots: (model perform: self getRootsSelector);
				yourself
		].

	aSymbol == self getSelectedPathsSelector
		ifTrue: [
			^ self
				selectPath: (model perform: self getSelectedPathsSelector)
				in: (self items at: 1 ifAbsent: [^ self]);
				yourself
		].
	
	aSymbol == self getSelectedSelector 
		ifTrue: 
			[self selection: (self getCurrentSelectionItemAt: 0).
			^self].
		
	aSymbol == self setSelectedParentsSelector
		ifTrue: [
			].

	aSymbol == #expandRootsRequested
		ifTrue: [
			^ self
				expandRoots;
				yourself
		].

	super update: aSymbol
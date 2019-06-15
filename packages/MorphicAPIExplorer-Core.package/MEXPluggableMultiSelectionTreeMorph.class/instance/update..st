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

	aSymbol == #expandRootsRequested
		ifTrue: [
			^ self
				expandRoots;
				yourself
		].

	super update: aSymbol
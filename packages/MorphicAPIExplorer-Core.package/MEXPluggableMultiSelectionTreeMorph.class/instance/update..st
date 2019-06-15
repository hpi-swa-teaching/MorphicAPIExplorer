updating
update: aSymbol

	aSymbol ifNil: [^self].
	aSymbol == getRootsSelector
		ifTrue: [
			self wrapRoots: (model perform: getRootsSelector).
			^ self
		].

	aSymbol == self getSelectedPathsSelector
		ifTrue: [
			^ self
				selectPath: (model perform: getSelectedPathSelector)
				in: (self items at: 1 ifAbsent: [^self]);
				yourself
		].

	aSymbol == #expandRootsRequested
		ifTrue: [
			^ self
				expandRoots;
				yourself
		].

	super update: aSymbol
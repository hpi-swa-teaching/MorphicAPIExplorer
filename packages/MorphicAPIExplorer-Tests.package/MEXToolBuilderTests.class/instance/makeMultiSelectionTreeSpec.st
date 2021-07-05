running
makeMultiSelectionTreeSpec

	^ builder pluggableMultiSelectionTreeSpec new
		name: #tree;
		model: self;
		roots: #getRoots;
	"<-- the following cannot be tested very well -->"
		getSelectionList: #selectedMethods;
		setSelectionList: #setSelectionList:with:;
		yourself
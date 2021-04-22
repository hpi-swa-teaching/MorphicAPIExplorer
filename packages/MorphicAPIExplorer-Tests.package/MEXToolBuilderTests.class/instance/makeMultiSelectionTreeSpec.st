running
makeMultiSelectionTreeSpec

	^ builder pluggableMultiSelectionTreeSpec new
		name: #tree;
		model: self;
		roots: #getRoots;
	"<-- the following cannot be tested very well -->"
		getSelectionList: #getSelectionList:;
		setSelectionList: #setSelectionList:with:;
		yourself
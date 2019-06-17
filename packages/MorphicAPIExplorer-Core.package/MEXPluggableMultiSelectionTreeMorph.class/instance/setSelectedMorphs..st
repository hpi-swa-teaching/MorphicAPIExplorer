selection
setSelectedMorphs: anOrderedCollection

	self selectedWrappers: (anOrderedCollection collect: [:aMorph| aMorph complexContents]).

	"self selectedWrappersItems do: [:itemNode |
		self listSelectionAt: (self selectedWrappersItems indexOf: itemNode) put: true.
	]."

	self
		setSelectedParentMorphs: anOrderedCollection;
		setSelectedPaths: anOrderedCollection
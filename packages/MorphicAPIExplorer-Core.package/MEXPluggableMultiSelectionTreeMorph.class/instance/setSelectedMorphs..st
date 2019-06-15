selection
setSelectedMorphs: anOrderedCollection

	self selectedWrappers: (anOrderedCollection collect: [:aMorph| aMorph complexContents]).

	"Let the model know about the selected object, not wrapper."
	self selectedWrappersItems do: [:itemNode |
		self listSelectionAt: (self selectedWrappersItems indexOf: itemNode) put: self dragEnabled.
	].

	self
		setSelectedParentMorphs: anOrderedCollection;
		setSelectedPaths: anOrderedCollection
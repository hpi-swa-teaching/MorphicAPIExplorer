widgets required
setGeneralTreeAttributesFor: aTreeMorph havingSpec: aSpec

	^ aTreeMorph
		model: aSpec model;
		getSelectedPathsSelector: aSpec getSelectedPaths;
		setSelectedPathsSelector: aSpec setSelectedPaths;
		setSelectedSelector: aSpec setSelectionList;
		getSelectedSelector: aSpec getSelectionList;
		setSelectedParentsSelector: aSpec setSelectedParents;
		columns: aSpec columns;
		yourself
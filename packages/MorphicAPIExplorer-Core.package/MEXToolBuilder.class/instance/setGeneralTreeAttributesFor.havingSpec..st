widgets required
setGeneralTreeAttributesFor: aTreeMorph havingSpec: aSpec

	^ aTreeMorph
		model: aSpec model;
		setSelectedSelector: aSpec setSelectionList;
		getSelectedSelector: aSpec getSelectionList;
		columns: aSpec columns;
		yourself
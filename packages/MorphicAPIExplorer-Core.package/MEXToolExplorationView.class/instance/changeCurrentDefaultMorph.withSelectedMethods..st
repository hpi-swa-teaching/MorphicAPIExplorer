default morphs
changeCurrentDefaultMorph: aMorph withSelectedMethods: aMethodList
	
	self defaultMorph: aMorph.
	self selectedMethods: aMethodList.
	self updatePlaygroundContents: aMorph.
	self myDependents do: [:aDependent |	aDependent update: #selectedMethods]
drawing
reloadNodeMorphs
	
	self update: self setStateOfRelatedSelector.
	self update: self setStateOfInihibitingSelector.
	self items do: [:aMorph | 
		aMorph 
			backgroundColor: aMorph complexContents backgroundColor;
			refresh; 
			setProperty: #wasRefreshed toValue: false;
			setProperty: #wasRefreshed toValue: false; 
			changed] 
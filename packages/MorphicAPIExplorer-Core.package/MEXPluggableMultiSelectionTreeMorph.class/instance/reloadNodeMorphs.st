drawing
reloadNodeMorphs
	
	self update: self setStateOfRelatedSelector.
	self items do: [:aMorph | 
		aMorph 
			refresh; 
			setProperty: #wasRefreshed toValue: false; 
			changed]
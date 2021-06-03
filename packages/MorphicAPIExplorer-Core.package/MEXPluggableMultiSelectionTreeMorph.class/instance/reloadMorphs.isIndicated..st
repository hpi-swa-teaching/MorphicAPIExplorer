drawing
reloadMorphs: anOrderedCollection isIndicated: aBoolean
	
	anOrderedCollection do: [:aMorph | 
		aMorph refresh; 
			setProperty: #wasRefreshed toValue: aBoolean; 
			changed]
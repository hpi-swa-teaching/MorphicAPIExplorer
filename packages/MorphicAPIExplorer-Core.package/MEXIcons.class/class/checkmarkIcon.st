private icons
checkmarkIcon

	^ (super checkmarkIcon scaledToSize: self defaultExtent)
		mapColor: Color black to: Color green;
		yourself
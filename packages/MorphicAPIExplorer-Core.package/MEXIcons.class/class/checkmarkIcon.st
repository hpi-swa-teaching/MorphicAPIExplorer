private icons
checkmarkIcon

	^ (super checkmark scaledToSize: self defaultExtent)
		mapColor: Color black to: Color green;
		yourself
running
makeButtonSpec

	^ builder pluggableButtonSpec new
		name: #button;
		model: self;
		label: #getLabel;
		yourself
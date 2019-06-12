tests-button
makeButtonSpec

	| spec |
	spec := builder pluggableButtonSpec new.
	^ spec
		name: #button;
		model: self;
		label: #getLabel
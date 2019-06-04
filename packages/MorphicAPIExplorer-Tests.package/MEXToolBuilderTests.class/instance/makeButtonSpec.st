tests
makeButtonSpec

	| spec |
	spec := builder pluggableButtonSpec new.
	spec name: #button.
	spec model: self.
	spec label: #getLabel
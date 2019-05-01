building
build: aBuilder

	^ {
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test'
	} asOrderedCollection
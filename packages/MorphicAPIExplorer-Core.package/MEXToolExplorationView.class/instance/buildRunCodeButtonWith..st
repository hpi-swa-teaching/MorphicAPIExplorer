building
buildRunCodeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Run Code';
		action: #runCode;
		frame: (LayoutFrame new
				leftFraction: 0.33 offset: 0;
				topFraction: 0.95 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 1 offset: 0);
		yourself
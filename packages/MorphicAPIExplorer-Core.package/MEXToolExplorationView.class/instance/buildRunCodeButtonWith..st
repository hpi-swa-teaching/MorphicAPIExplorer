building
buildRunCodeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Run Code';
		action: #runCode;
		frame: (LayoutFrame new
				leftFraction: 0.33;
				topFraction: 0.95;
				rightFraction: 1;
				bottomFraction: 1);
		yourself
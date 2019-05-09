building
buildRunCodeButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Run Code';
		action: #runCode;
		frame: (LayoutFrame new
				leftFraction: self class rightSpecsDistribution x;
				topFraction: 0.95;
				rightFraction: self class rightSpecsDistribution y;
				bottomFraction: self class bottomSpecsDistribution y);
		yourself
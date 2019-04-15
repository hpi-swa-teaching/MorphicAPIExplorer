baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MorphicAPIExplorer-Core';
				package: 'MorphicAPIExplorer-Tests' with: [spec requires: #('MorphicAPIExplorer-Core')];
				yourself.
			spec
				group: 'default' with: #('MorphicAPIExplorer-Core');
				group: 'tests' with: #('MorphicAPIExplorer-Tests')];
				yourself
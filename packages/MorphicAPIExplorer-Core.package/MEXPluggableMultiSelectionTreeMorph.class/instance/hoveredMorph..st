accessing
hoveredMorph: aMorph
	
	hoveredMorph == aMorph ifTrue: [^ self].
	
	hoveredMorph ifNotNil: [:m | m changed].
	unhoverSelector ifNotNil: [:symbol | 
		model perform: symbol with: (hoveredMorph ifNotNil: [:m | 
			m complexContents ifNotNil: [:content | 
				content item]])].
	hoveredMorph := aMorph.
	hoveredMorph ifNotNil: [:m | m changed].	
	hoverSelector ifNotNil: [:symbol | 
		model perform: symbol with: (hoveredMorph ifNotNil: [:m | 
			m complexContents ifNotNil: [:content | 
				content item]])].
	self update: getRootsSelector
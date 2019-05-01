initialize-release
initialize

	super initialize.
	
	self name: self class defaultName.
	self image: ImageMorph new.
	self explorationSpecification: MEXExplorationSpecification new.
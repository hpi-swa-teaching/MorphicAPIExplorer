widgets required
buildPluggableTree: aSpec

	| treeMorph |
	treeMorph := super buildPluggableTree: aSpec.
	treeMorph visible: false.
	
	^ treeMorph
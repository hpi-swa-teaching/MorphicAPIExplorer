widgets required
buildPluggableTree: aSpec

	| treeMorph |
	(treeMorph := super buildPluggableTree: aSpec)
		visible: false.
	
	^ treeMorph
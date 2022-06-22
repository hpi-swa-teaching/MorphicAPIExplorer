tests
testPicturesExist
	
	
	self assert:  MEXResources overviewImageAnimating isForm equals: true.   
	self assert:  MEXResources overviewImageBuildingAndTearingDown isForm equals: true.  
	self assert:  MEXResources overviewImageNestingAndSubmorphing isForm equals: true. 
	self assert:  MEXResources overviewImageDrawingAndStyling isForm equals: true. 
	self assert:  MEXResources overviewImageLayouting isForm equals: true. 
	self assert:  MEXResources overviewImageTransforming isForm equals: true. 
	self assert:  MEXResources overviewImageEventHandling isForm equals: true. 
	self assert:  MEXResources overviewImageFileHandling isForm equals: true. 
	self assert:  MEXResources overviewImageCollision isForm equals: true
	
	
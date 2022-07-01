updating
clearContents
	
	self currentMorph abandon. 
	self submorphsDo: [:submorph |submorph abandon]
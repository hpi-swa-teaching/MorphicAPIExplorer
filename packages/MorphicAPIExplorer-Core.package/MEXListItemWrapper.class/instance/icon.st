accessing
icon

    ^ (self item isKindOf: MEXMethod)
	ifFalse: [nil]
	ifTrue: [
		self item hasSubMethods
       	 ifTrue: [nil]
       	 ifFalse: [
            	self item isActiveDependee 
                		ifTrue: [MEXIcons dependeeIcon]
                		ifFalse: [
                    		self item hasDependencies
                    		ifTrue: [MEXIcons dependentIcon]
                        	ifFalse: [MEXIcons blankIcon]]]]
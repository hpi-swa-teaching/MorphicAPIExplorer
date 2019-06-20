content-generation
generateInitializationCode

	^ (
		'|', self morphInstanceName, '|', Character cr,
		self morphInstanceName , ':=', self morphClass name, ' new.', Character cr
		 )
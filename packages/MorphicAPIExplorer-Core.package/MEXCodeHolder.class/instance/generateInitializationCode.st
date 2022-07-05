content-generation
generateInitializationCode

	^ ('| ', self morphInstanceName, ' |', Character cr,
		self morphInstanceName , ' := ', self morphClass name, ' new.', Character cr
		, self morphInstanceName, ' openInWorld: playground.', Character cr
		, self morphInstanceName, ' center: playground center.', Character cr)
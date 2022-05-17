content-generation
generateInitializationCode

	^ ('| ', self morphInstanceName, ' secondmorph|', Character cr,
		self morphInstanceName , ' := ', self morphClass name, ' new.', Character cr)
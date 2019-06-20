content-generation
generateInitializationCode

	^ ('| ', self morphInstanceName, ' |', self lineEnd,
		self morphInstanceName , ' := ', self morphClass name, ' new.', self lineEnd)
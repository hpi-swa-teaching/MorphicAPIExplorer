packages
namedPackage: aString

	^ PackageOrganizer default packageNamed: aString ifAbsent: [self error: aString , ' package is missing']
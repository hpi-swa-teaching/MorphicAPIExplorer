tests
testMEXMethodUpdateDependencies

	| pseudoCategory |

	self fillMethodsWithDependencies.
	pseudoCategory := methods second.
	methods second updateDependencies: pseudoCategory.
	self assert: methods second subMethods first hasDependencies not.
	self assert: methods second subMethods second hasDependencies
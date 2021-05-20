accessing
updateMethodsWithDependencies

	self methodList do: [ :aMethod | aMethod updateDependencies: self]
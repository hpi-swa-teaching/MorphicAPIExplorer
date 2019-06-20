content-generation
generateCodeForCurrentSelection

	|string|
	string := String new.
	self selectedMethods do: [:aSelectedMethod | string := string, self morphInstanceName, ' ', aSelectedMethod name, '.', Character cr].
	^ string
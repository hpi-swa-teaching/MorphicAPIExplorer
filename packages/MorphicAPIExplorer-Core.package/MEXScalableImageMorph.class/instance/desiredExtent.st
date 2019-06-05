private
desiredExtent

	^ desiredExtent ifNil: [desiredExtent := self originalForm extent]
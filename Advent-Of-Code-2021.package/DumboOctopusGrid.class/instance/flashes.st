accessing
flashes

	^ (grid collect: [ :octopus | octopus totalNumberOfFlashesFor: self hundredSteps ]) sum
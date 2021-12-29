accessing
flashes

	^ (grid collect: [ :octopus | octopus totalFlashedFor: self allSteps ]) sum
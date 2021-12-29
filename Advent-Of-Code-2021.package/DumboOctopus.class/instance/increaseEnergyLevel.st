private - energy
increaseEnergyLevel

	energyLevel := energyLevel + 1.
	(energyLevel > self maxEnergyLevel) 
	ifTrue: [ energyLevel := self minEnergyLevel ]
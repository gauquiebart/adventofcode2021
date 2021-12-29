private - energy
canIncreaseEnergyLevelOnStep: aStep

	^ (energyLevel = self minEnergyLevel and: (self flashedAtStep: aStep)) not
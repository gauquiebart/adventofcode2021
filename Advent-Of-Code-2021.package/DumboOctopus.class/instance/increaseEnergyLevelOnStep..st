energy
increaseEnergyLevelOnStep: aStep

	(self canIncreaseEnergyLevelOnStep: aStep)
		ifTrue: [ self increaseEnergyLevel ].
	^ self recordFlashed: aStep
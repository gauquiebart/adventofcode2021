tests
testIncreaseEnergyLevelOnStep

	| octopus flashed |
	octopus := DumboOctopus new energyLevel: 0.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 1.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 2.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 3.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 4.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 5.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 6.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 7.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 8.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 9.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 0.
	self assert: flashed equals: true.
	self assert: (octopus flashedAtStep: 1) equals: true.	

	flashed := octopus increaseEnergyLevelOnStep: 1.
	self assert: octopus energyLevel equals: 0.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: true.

	1 to: 9 do: [ :each | 
		flashed := octopus increaseEnergyLevelOnStep: 2.
		self assert: octopus energyLevel equals: each.
		self assert: flashed equals: false.
		self assert: (octopus flashedAtStep: 1) equals: true ].

	flashed := octopus increaseEnergyLevelOnStep: 2.
	self assert: octopus energyLevel equals: 0.
	self assert: flashed equals: true.
	self assert: (octopus flashedAtStep: 1) equals: true.
	self assert: (octopus flashedAtStep: 2) equals: true.
	
	flashed := octopus increaseEnergyLevelOnStep: 2.
	self assert: octopus energyLevel equals: 0.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: true.
	self assert: (octopus flashedAtStep: 2) equals: true.

	flashed := octopus increaseEnergyLevelOnStep: 3.
	self assert: octopus energyLevel equals: 1.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: true.
	self assert: (octopus flashedAtStep: 2) equals: true.
	self assert: (octopus flashedAtStep: 3) equals: false.

	flashed := octopus increaseEnergyLevelOnStep: 4.
	self assert: octopus energyLevel equals: 2.
	self assert: flashed equals: false.
	self assert: (octopus flashedAtStep: 1) equals: true.
	self assert: (octopus flashedAtStep: 2) equals: true.
	self assert: (octopus flashedAtStep: 3) equals: false.
		self assert: (octopus flashedAtStep: 4) equals: false.
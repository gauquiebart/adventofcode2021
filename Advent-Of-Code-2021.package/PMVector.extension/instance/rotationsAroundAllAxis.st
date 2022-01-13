*Advent-Of-Code-2021
rotationsAroundAllAxis

	^ RotationMatrices rotationsAroundAllAxis collect: [ :each | 
		  self multiplyWith: each ]
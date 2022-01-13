*Advent-Of-Code-2021
rotationsAroundAllAxis

	^ (AOCRotationMatrices rotationsAroundAllAxis collect: [ :each | 
		   self multiplyWith: each ]) asSet
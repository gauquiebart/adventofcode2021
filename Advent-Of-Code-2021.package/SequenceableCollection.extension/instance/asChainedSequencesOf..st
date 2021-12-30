*Advent-Of-Code-2021
asChainedSequencesOf: n

	^ (n to: self size) collect: [ :index | 
		  (index - n + 1 to: index) collect: [ :indexInPlace | 
			  self at: indexInPlace ] ]
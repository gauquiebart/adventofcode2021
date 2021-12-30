helper
parseAsPoints: rawInput

	^ ((rawInput splitOn: [ :each | each = ';' ]) collect: [ :each | 
		  (each at: 1) @ (each at: 3) ]) asSet
helper
parseAsCaveConnections: rawInput
	^ (rawInput splitOn: #(;))
collect: [ :raw|
	|parsed|
	parsed := raw splitOn: #(-).
	CaveConnection new a: (parsed at: 1) first b: (parsed at: 2) first]
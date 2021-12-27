solving
decodeNumbers

	| mapping result |
	mapping := self solveMapping.

	result := 1000 * (SmallInteger fromSignalPattern:
		           (self decode: (codeNumbers at: 1) with: mapping)).

	result := result + (100 * (SmallInteger fromSignalPattern:
		           (self decode: (codeNumbers at: 2) with: mapping))).

	result := result + (10 * (SmallInteger fromSignalPattern:
		           (self decode: (codeNumbers at: 3) with: mapping))).

	result := result + (SmallInteger fromSignalPattern:
		           (self decode: (codeNumbers at: 4) with: mapping)).
	^ result
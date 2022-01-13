tests
testCanConstruct
	self assert: ((AOCBeaconScanner fromBeacons: { #(0 1 2) asPMVector }) beacons)
	equals: { #(0 1 2) asPMVector } asOrderedCollection 
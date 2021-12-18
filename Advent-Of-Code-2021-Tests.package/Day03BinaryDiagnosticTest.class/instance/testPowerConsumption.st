tests
testPowerConsumption

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| testInput |
	testInput := #( 2r00100 2r11110 2r10110 2r10111 2r10101 2r01111
	                2r00111 2r11100 2r10000 2r11001 2r00010 2r01010 ).

	self
		assert: (Day03BinaryDiagnostic gammaRate: testInput ofLength: 5)
			* (Day03BinaryDiagnostic epsilonRate: testInput ofLength: 5)
		equals: 198
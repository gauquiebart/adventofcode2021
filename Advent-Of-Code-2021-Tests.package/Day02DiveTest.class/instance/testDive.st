tests
testDive

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| commands |
	commands := #( forward 5 down 5 forward 8 up 3 down 8 forward 2 ).

	self
		assert: 
		(Day02Dive horizontalPosition: commands)
			* (Day02Dive finalDepth: commands)
		equals: 150
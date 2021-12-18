tests
testDiveWithAim

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	| commands result|
	commands := #( forward 5 down 5 forward 8 up 3 down 8 forward 2 ).
	
	result := (Day02Dive horizontalPositionAndDepth: commands).

	self
		assert: (result at:1) * (result at: 2)
		equals: 900
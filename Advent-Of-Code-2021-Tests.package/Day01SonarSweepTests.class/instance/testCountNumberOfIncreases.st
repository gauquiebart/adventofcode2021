tests
testCountNumberOfIncreases
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| seaFloorDepths |
	seaFloorDepths := #(199 200 208 210 200 207 240 269 260 263).
	
	self assert: (Day01SonarSweep countIncreases: seaFloorDepths) equals: 7.
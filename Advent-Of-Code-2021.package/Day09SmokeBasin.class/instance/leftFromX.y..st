private-accessing
leftFromX: x y: y

^ x = 1
ifTrue: [ nil ]
ifFalse: [self x: (x - 1) y: y]
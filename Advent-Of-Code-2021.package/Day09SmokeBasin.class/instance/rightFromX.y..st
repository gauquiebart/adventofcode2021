private-accessing
rightFromX: x y: y

^ self maxX = x
ifTrue: [ nil ]
ifFalse: [ self x: (x + 1) y: y]
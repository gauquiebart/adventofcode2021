private
trimSegments

	| segmentsToWire aCollectionOfACollectionOfSegments updatedWireToSegments |
	segmentsToWire := self segmentsToWire.
	updatedWireToSegments := OrderedDictionary new.
	aCollectionOfACollectionOfSegments := OrderedCollection new.

	segmentsToWire keysAndValuesDo: [ :aCollectionOfSegments :possibleWires | 
		aCollectionOfSegments size = possibleWires size ifTrue: [ 
			aCollectionOfACollectionOfSegments add: aCollectionOfSegments ] ].

	wireToSegments keysAndValuesDo: [ :aWire :aCollectionOfSegments | 
		(aCollectionOfACollectionOfSegments anySatisfy: [ :each | 
			 each = aCollectionOfSegments ])
			ifTrue: [ 
			updatedWireToSegments at: aWire put: aCollectionOfSegments ]
			ifFalse: [ 
				|updatedCollectionOfSegments|
				updatedCollectionOfSegments := aCollectionOfSegments.
				aCollectionOfACollectionOfSegments do: [ :each |
					updatedCollectionOfSegments := updatedCollectionOfSegments \ each].
				updatedWireToSegments
					at: aWire
					put: updatedCollectionOfSegments ] ].

	wireToSegments := updatedWireToSegments
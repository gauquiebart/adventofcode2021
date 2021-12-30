solving
countOccurencesOf: template
	^ (template groupedBy: [ :each|each ]) collect: [ :each | each size ]
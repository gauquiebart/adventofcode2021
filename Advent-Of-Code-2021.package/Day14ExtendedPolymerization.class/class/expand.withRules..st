solving
expand: template withRules: pairInsertionRules

	^ template reduceLeft: [ :a :b | 
		| concatresult pairToMatch |
		concatresult := a isString
			                ifTrue: [ a ]
			                ifFalse: [ String with: a ].
		pairToMatch := concatresult last asString , (String with: b).
		pairInsertionRules
			detect: [ :rule | rule key = pairToMatch ]
			ifFound: [ :rule | concatresult allButLast , rule value ]
			ifNone: [ concatresult , (String with: b) ] ]
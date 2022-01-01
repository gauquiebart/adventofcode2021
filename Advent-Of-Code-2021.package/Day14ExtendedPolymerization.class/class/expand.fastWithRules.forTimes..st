solving
expand: template fastWithRules: pairInsertionRules forTimes: numberOfExpansions

	| templateAsPairs pairsWithOccurences elementsWithOccurences |
	templateAsPairs := template asPairs collect: [ :each | 
		                   (String fromByteArray: (each at: 1))
		                   , (String fromByteArray: (each at: 2)) ].

	pairsWithOccurences := OrderedDictionary new.
	templateAsPairs do: [ :each | 
		pairsWithOccurences
			at: each
			update: [ :occurence | occurence + 1 ]
			initial: 1 ].

	elementsWithOccurences := OrderedDictionary new.
	template do: [ :each | 
		elementsWithOccurences
			at: (String with: each)
			update: [ :occurence | occurence + 1 ]
			initial: 1 ].

	1 to: numberOfExpansions do: [ :index | 
		| rulesFired fireRulesForANumberOfTimes pairOccurencesUpdates |
		rulesFired := pairInsertionRules select: [ :rule | 
			              (pairsWithOccurences includesKey: rule key) and:
				              (pairsWithOccurences at: rule key ifAbsent: 0) > 0 ].
		fireRulesForANumberOfTimes := OrderedDictionary new.
		pairOccurencesUpdates := OrderedDictionary new.
		rulesFired do: [ :rule | 
			fireRulesForANumberOfTimes
				at: rule
				put: (pairsWithOccurences at: rule key) ].
		fireRulesForANumberOfTimes keysAndValuesDo: [ :rule :numberOfTimes | 
			| pair1 pair2 elementAdded |
			pair1 := rule value copyFrom: 1 to: 2.
			pair2 := rule value copyFrom: 2 to: 3.
			elementAdded := rule value copyFrom: 2 to: 2.
			pairOccurencesUpdates
				at: pair1
				update: [ :occurence | occurence + numberOfTimes ]
				initial: numberOfTimes.
			pairOccurencesUpdates
				at: pair2
				update: [ :occurence | occurence + numberOfTimes ]
				initial: numberOfTimes.
			pairOccurencesUpdates
				at: rule key
				update: [ :occurence | occurence - numberOfTimes ]
				initial: numberOfTimes negated.
			elementsWithOccurences
				at: elementAdded
				update: [ :occurence | occurence + numberOfTimes ]
				initial: numberOfTimes ].
		pairOccurencesUpdates keysAndValuesDo: [ :pair :numberOfUpdates | 
			pairsWithOccurences
				at: pair
				update: [ :occurence | occurence + numberOfUpdates ]
				initial: numberOfUpdates ] ].

	^ elementsWithOccurences
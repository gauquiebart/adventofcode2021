helper
expandRawInput: rawInput

	| rawInputExpandedHorizontally rawInputExpandedVertically rawInputRows |
	rawInputExpandedHorizontally := rawInput collect: [ :eachNumber | 
		                                self increaseRiskFourTimes:
			                                eachNumber ].

	rawInputExpandedVertically := LinkedList newFrom:
		                              rawInputExpandedHorizontally.

	rawInputRows := rawInput size.

	rawInputRows + 1 to: rawInputRows * 5 do: [ :each | 
		| lastEntryExpanded |
		lastEntryExpanded := (self increaseRisk:
			                      (rawInputExpandedVertically at:
				                       rawInputExpandedVertically size
				                       - rawInputRows + 1) asString) asNumber.
		rawInputExpandedVertically addLast: lastEntryExpanded ].


	^ rawInputExpandedVertically
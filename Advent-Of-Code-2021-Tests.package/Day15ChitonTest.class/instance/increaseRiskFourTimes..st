helper
increaseRiskFourTimes: anInteger 
	| eachAsString |
		                              eachAsString := anInteger asString.
												
		                             ^ ((1 to: 4)
			                              inject: eachAsString
			                              into: [ :total :toIgnore | 
				                              total
				                              ,
				                              (self increaseRisk:
					                               (total last: eachAsString size)) ]) asNumber 
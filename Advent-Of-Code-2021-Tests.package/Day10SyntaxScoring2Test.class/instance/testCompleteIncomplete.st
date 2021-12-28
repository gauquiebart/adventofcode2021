tests
testCompleteIncomplete

	self
		assert: (Day10SyntaxScoring2 new completeIncomplete:
				 '[({(<(())[]>[[{[]{<()<>>')
		equals: #( $} $} $] $] $) $} $) $] )
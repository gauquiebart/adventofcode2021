initialization
codeNumbers: aCollectionOfCodeNumbers

	codeNumbers := aCollectionOfCodeNumbers collect: [ :each | 
		               each asOrderedCollection sort asArray ]
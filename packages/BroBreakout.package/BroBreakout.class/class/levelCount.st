file handling
levelCount
	"Returns amount of levels in levels folder, maximum is 20"
	| count |
	count := 0.
	(BroBreakout getFileNamesIn: 'levels') do: [:fileName |
			((FileDirectory extensionFor: fileName) = 'txt') ifTrue: [count := count + 1]].
			
	^ (count min: 20)
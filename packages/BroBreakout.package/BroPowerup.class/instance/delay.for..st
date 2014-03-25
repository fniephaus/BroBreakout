collision handling
delay: aBlock for: aNumber
	[(Delay forSeconds: aNumber) wait.
	 aBlock value] fork.
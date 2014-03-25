initialization
initializeHealthValues
	"Create dictionary containing definitions of Domain Specific Language"
	
	self healthValues: ({
		$W -> (-1). 
		$A -> 1.
		$B -> 2. 
		$C -> 3} as: Dictionary).
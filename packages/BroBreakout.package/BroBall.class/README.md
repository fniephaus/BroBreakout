A BroBall is a CircleMorph which collides with BroBlocks.

collisionPoint
	- Possible point of collision with an intersecting BroBlock

direction
	- A vector which denotes the current direction of the BroBall (also represents the speed,)

distanceVectorToTravel
	- Per step, it is initialized with the direction and then decremented with each recursion step.

newCenter
	- The new calculated center in each recursion step.

tempCenter
	- The old calculated center in each recursion step.
